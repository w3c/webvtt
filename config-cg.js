var respecConfig = {
    // specification status (e.g. WD, LCWD, NOTE, etc.). If in doubt use ED.
    specStatus: "CG-DRAFT",

    // the specification's short name, as in http://www.w3.org/TR/short-name/
    shortName: "webvtt",

    // if the specification's copyright date is a range of years, specify
    // the start date here:
    copyrightStart: "2011",

    // if there a publicly available Editor's Draft, this is the link
    edDraftURI: "http://dev.w3.org/html5/webvtt/",

    // editors, add as many as you like
    // only "name" is required
    editors:  [
        { name: "Silvia Pfeiffer", url: "mailto:silviapfeiffer1@gmail.com",
          company: "NICTA", companyURL: "http://nicta.com.au/" },
        { name: "Philip J&auml;genstedt", url: "mailto:philipj@opera.com",
          company: "Opera Software ASA", companyURL: "http://www.opera.com/" },
        { name: "Ian Hickson", url: "mailto:ian@hixie.ch",
          company: "Google", companyURL: "http://www.google.com/", note: "previous editor" },
    ],

    // name of the WG
    wg: "Web Media Text Tracks Community Group",

    // URI of the public WG page
    wgURI: "http://www.w3.org/community/texttracks/",

    // name (without the @w3c.org) of the public mailing to which comments are due
    wgPublicList: "public-texttracks",

    bugTracker: {
        new: "https://www.w3.org/Bugs/Public/enter_bug.cgi?product=TextTracks%20CG&amp;component=WebVTT",
        open: "https://www.w3.org/Bugs/Public/buglist.cgi?product=TextTracks%20CG&amp;component=WebVTT&amp;resolution=---",
    },

    testSuiteURI: "https://github.com/w3c/web-platform-tests/tree/master/webvtt",

    otherLinks: [{key: "Version history", href:"https://github.com/w3c/webvtt/commits"}],

    doRDFa: false,

    localBiblio: {
        "CSS": {
            aliasOf: "CSS2",
        },
        "CSSCOLOR": {
            authors: ["Tab Atkins Jr.", "Chris Lilley"],
            href: "http://dev.w3.org/csswg/css-color/",
            publisher: "W3C",
            status: "ED",
            title: "CSS Color Module Level 4",
        },
        "CSSRUBY": {
            authors: ["Elika J. Etemad", "Koji Ishii"],
            href: "http://dev.w3.org/csswg/css-ruby/",
            publisher: "W3C",
            status: "ED",
            title: "CSS Ruby Layout Module Level 1",
        },
        "CSSVALUES": {
            authors: ["Tab Atkins Jr.", "fantasai"],
            href: "http://dev.w3.org/csswg/css-values/",
            publisher: "W3C",
            status: "ED",
            title: "CSS Values and Units Module Level 3",
        },
        "DOM" : {
            authors: ["Anne van Kesteren", "Aryeh Gregor", "Ms2ger"],
            href: "https://dom.spec.whatwg.org/",
            publisher: "WHATWG",
            status: "Living Standard",
            title: "DOM",
        },
        "ENCODING" : {
            authors: ["Anne van Kesteren", "Joshua Bell"],
            href: "https://encoding.spec.whatwg.org/",
            publisher: "WHATWG",
            status: "Living Standard",
            title: "Encoding",
        },
        "HTML" : {
            authors: ["Ian Hickson"],
            href: "https://html.spec.whatwg.org/",
            publisher: "WHATWG",
            status: "Living Standard",
            title: "HTML",
        },
        "MAUR" : {
            aliasOf: "media-accessibility-reqs",
        },
        "SELECTORS": {
            authors: ["Elika J. Etemad", "Tab Atkins Jr."],
            href: "http://dev.w3.org/csswg/selectors/",
            publisher: "W3C",
            status: "ED",
            title: "Selectors Level 4",
        },
        "WEBIDL" : {
            authors: ["Cameron McCormack", "Boris Zbarsky"],
            href: "http://heycam.github.io/webidl/",
            publisher: "W3C",
            status: "ED",
            title: "Web IDL",
        },
    },
};
