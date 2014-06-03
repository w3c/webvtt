#!/usr/bin/env python

import re
import sys

# http://stackoverflow.com/q/1732348
pattern = re.compile(r'<(\w+).*?>|</(\w+)>|<!--(.*?)-->', re.DOTALL)

def tokenize(source):
    offset = 0

    for match in pattern.finditer(source):
        if match.start() > offset:
            yield ('text', offset, match.start(), None)
        index = match.lastindex
        token = ('open', 'close', 'comment')[index - 1]
        name = index < 3 and match.group(index) or None
        yield (token, match.start(), match.end(), name)
        offset = match.end()

    if offset < len(source):
        yield('text', offset, len(source), None)

def validate(path, source, tokens):
    stack = []

    def fail(reason, offset):
        lineno = source.count('\n', 0, offset) + 1
        print '%s:%s: error: %s' % (path, lineno, reason)
        print source.splitlines()[lineno - 1]
        sys.exit(1)

    for token, start, end, name in tokens:
        if token == 'open':
            if name != 'meta':
                stack.append(name)
        elif token == 'close':
            if len(stack) == 0 or stack[-1] != name:
                fail("close tag '%s' with open tags '%s'" %
                     (name, ' > '.join(stack)), start)
            stack.pop()

    if len(stack) > 0:
        fail("end of file with open tags '%s'" %
             (' > '.join(stack)), len(source) - 1)

def format(path):
    with open(path, 'r') as f:
        source = f.read()

    tokens = list(tokenize(source))
    assert source == ''.join((source[t[1]:t[2]] for t in tokens))

    validate(path, source, tokens)

    # todo: normalize and serialize

if __name__ == '__main__':
    format(sys.argv[1])
