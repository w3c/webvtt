var respecConfig = {
    // specification status (e.g. WD, LCWD, NOTE, etc.). If in doubt use ED.
    specStatus: "FPWD",

    // the specification's short name, as in http://www.w3.org/TR/short-name/
    shortName: "webvtt1",

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
          company: "Google", companyURL: "http://google.com/", note: "previous editor" },
    ],

    // name of the WG
    wg: "W3C Timed Text Working Group",

    // URI of the public WG page
    wgURI: "http://www.w3.org/AudioVideo/TT/",

    // name (without the @w3c.org) of the public mailing to which comments are due
    wgPublicList: "public-tt",
    wgPatentURI:  "http://www.w3.org/2004/01/pp-impl/34314/status#disclosures",
    processVersion: 2014,

    bugTracker: {
        new: "http://www.w3.org/Bugs/Public/enter_bug.cgi?product=TextTracks%20CG&amp;component=WebVTT",
        open: "http://www.w3.org/Bugs/Public/buglist.cgi?product=TextTracks%20CG&amp;component=WebVTT&amp;resolution=---",
    },

    testSuiteURI: "https://github.com/w3c/web-platform-tests/tree/master/webvtt",

    otherLinks: [{key: "Version history", href:"https://github.com/w3c/webvtt/commits"}],

    doRDFa: false,
};
