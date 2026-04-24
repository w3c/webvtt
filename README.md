WebVTT
======
<img src="http://w3c.github.io/webvtt/logo/192x192.png" width="96" height="96" align="right" alt="">

This is the source of the [WebVTT specification](https://w3c.github.io/webvtt/).

Contributions can be made via the W3C [Timed Text Working Group](https://www.w3.org/groups/wg/timed-text/).

You can file new [issues](https://github.com/w3c/webvtt/issues) from the specification itself. 
There are also old bugs reported in [W3C BugZilla](https://www.w3.org/Bugs/Public/buglist.cgi?product=TextTracks%20CG&component=WebVTT&resolution=---) (archived site).

Generating the spec
-------------------

This spec is generated using [bikeshed](https://github.com/tabatkins/bikeshed/).

To generate a Editors' Draft, run:

    $ bikeshed spec

Also see https://github.com/w3c/webvtt/commit/754f13e3cf03d6036c3e4628c6920d17b412f778 for manual fixup of the generated output.

To format the index.bs file, run:

  $ ./format.py index.bs
