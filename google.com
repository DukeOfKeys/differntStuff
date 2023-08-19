<!doctype html>
<html itemscope="" itemtype="http://schema.org/WebPage" lang="en-BY">
<head>
    <meta charset="UTF-8">
    <meta content="origin" name="referrer">
    <meta content="/images/branding/googleg/1x/googleg_standard_color_128dp.png" itemprop="image">
    <title>Google</title>
    <script nonce="p_Tq9wZ0x9trjT50lPtgNA">
    (function() {
        var _g = {
            kEI: '1qDgZPPLEOCL9u8P1L2KmAs',
            kEXPI: '31',
            u: '23809f2',
            kBL: 'yZuX',
            kOPI: 89978449
        };
        (function() {
            var a;
            (null == (a = window.google) ? 0 : a.stvsc) ? google.kEI = _g.kEI : window.google = _g;
        }).call(this);
    })();
    (function() {
        google.sn = 'webhp';
        google.kHL = 'en-BY';
    })();
    (function() {
        var h = this || self;
        function l() {
            return void 0 !== window.google && void 0 !== window.google.kOPI && 0 !== window.google.kOPI ? window.google.kOPI : null
        }
        ;
        var m,
            n = [];
        function p(a) {
            for (var b; a && (!a.getAttribute || !(b = a.getAttribute("eid")));)
                a = a.parentNode;
            return b || m
        }
        function q(a) {
            for (var b = null; a && (!a.getAttribute || !(b = a.getAttribute("leid")));)
                a = a.parentNode;
            return b
        }
        function r(a) {
            /^http:/i.test(a) && "https:" === window.location.protocol && (google.ml && google.ml(Error("a"), !1, {
                src: a,
                glmm: 1
            }), a = "");
            return a
        }
        function t(a, b, c, d, k) {
            var e = "";
            -1 === b.search("&ei=") && (e = "&ei=" + p(d), -1 === b.search("&lei=") && (d = q(d)) && (e += "&lei=" + d));
            d = "";
            var g = -1 === b.search("&cshid=") && "slh" !== a,
                f = [];
            f.push(["zx", Date.now().toString()]);
            h._cshid && g && f.push(["cshid", h._cshid]);
            c = c();
            null != c && f.push(["opi", c.toString()]);
            for (c = 0; c < f.length; c++) {
                if (0 === c || 0 < c)
                    d += "&";
                d += f[c][0] + "=" + f[c][1]
            }
            return "/" + (k || "gen_204") + "?atyp=i&ct=" + String(a) + "&cad=" + (b + e + d)
        }
        ;
        m = google.kEI;
        google.getEI = p;
        google.getLEI = q;
        google.ml = function() {
            return null
        };
        google.log = function(a, b, c, d, k, e) {
            e = void 0 === e ? l : e;
            c || (c = t(a, b, e, d, k));
            if (c = r(c)) {
                a = new Image;
                var g = n.length;
                n[g] = a;
                a.onerror = a.onload = a.onabort = function() {
                    delete n[g]
                };
                a.src = c
            }
        };
        google.logUrl = function(a, b) {
            b = void 0 === b ? l : b;
            return t("", a, b)
        };
    }).call(this);
    (function() {
        google.y = {};
        google.sy = [];
        google.x = function(a, b) {
            if (a)
                var c = a.id;
            else {
                do c = Math.random();
                while (google.y[c])
            }
            google.y[c] = [a, b];
            return !1
        };
        google.sx = function(a) {
            google.sy.push(a)
        };
        google.lm = [];
        google.plm = function(a) {
            google.lm.push.apply(google.lm, a)
        };
        google.lq = [];
        google.load = function(a, b, c) {
            google.lq.push([[a], b, c])
        };
        google.loadAll = function(a, b) {
            google.lq.push([a, b])
        };
        google.bx = !1;
        google.lx = function() {};
    }).call(this);
    google.f = {};
    (function() {
        document.documentElement.addEventListener("submit", function(b) {
            var a;
            if (a = b.target) {
                var c = a.getAttribute("data-submitfalse");
                a = "1" === c || "q" === c && !a.elements.q.value ? !0 : !1
            } else
                a = !1;
            a && (b.preventDefault(), b.stopPropagation())
        }, !0);
        document.documentElement.addEventListener("click", function(b) {
            var a;
            a:
            {
                for (a = b.target; a && a !== document.documentElement; a = a.parentElement)
                    if ("A" === a.tagName) {
                        a = "1" === a.getAttribute("data-nohref");
                        break a
                    }
                a = !1
            }a && b.preventDefault()
        }, !0);
    }).call(this);
    (function() {
        google.hs = {
            h: true,
            nhs: false,
            sie: false
        };
    })();
    (function() {
        google.c = {
            bfrt: false,
            bfrte: true,
            bofr: true,
            btfi: false,
            c4t: false,
            cap: 2000,
            fla: false,
            fli: false,
            frt: false,
            frvt: true,
            gl: true,
            irsf: false,
            lhc: false,
            llt: false,
            lsb: false,
            mais: false,
            pbph: false,
            raf: false,
            sxs: false,
            taf: true,
            timl: false,
            upb: false,
            vis: true,
            wh0: false,
            whu: false
        };
    })();
    (function() {
        var f = this || self;
        var g = window.performance;
        var h = google.c.gl,
            k = google.c.sxs;
        function l(a, b, d, c) {
            a.addEventListener ? a.addEventListener(b, d, c || !1) : a.attachEvent && a.attachEvent("on" + b, d)
        }
        function m(a, b, d, c) {
            "addEventListener" in a ? a.removeEventListener(b, d, c || !1) : a.attachEvent && a.detachEvent("on" + b, d)
        }
        ;
        google.c.iim = google.c.iim || {};
        function n(a) {
            a && f.google.aft(a.target)
        }
        var p;
        function q() {
            m(document.documentElement, "load", p, !0);
            m(document.documentElement, "error", p, !0)
        }
        ;
        google.timers = {};
        google.startTick = function(a) {
            google.timers[a] = {
                t: {
                    start: Date.now()
                },
                e: {},
                m: {}
            }
        };
        google.tick = function(a, b, d) {
            google.timers[a] || google.startTick(a);
            d = void 0 !== d ? d : Date.now();
            b instanceof Array || (b = [b]);
            for (var c = 0, e; e = b[c++];)
                google.timers[a].t[e] = d
        };
        google.c.e = function(a, b, d) {
            google.timers[a].e[b] = d
        };
        google.c.b = function(a, b) {
            b = google.timers[b || "load"].m;
            b[a] && google.ml(Error("a"), !1, {
                m: a
            });
            b[a] = !0
        };
        google.c.u = function(a, b) {
            var d = google.timers[b || "load"],
                c = d.m;
            if (c[a]) {
                c[a] = !1;
                for (a in c)
                    if (c[a])
                        return;
                google.csiReport(d, k && "load2" === b ? "all2" : "all")
            } else {
                b = "";
                for (var e in c)
                    b += e + ":" + c[e] + ";";
                google.ml(Error("b"), !1, {
                    m: a,
                    b: !1 === c[a],
                    s: b
                })
            }
        };
        google.rll = function(a, b, d) {
            function c(e) {
                d(e);
                m(a, "load", c);
                m(a, "error", c)
            }
            l(a, "load", c);
            b && l(a, "error", c)
        };
        f.google.aft = function(a) {
            a.setAttribute("data-iml", String(Date.now()))
        };
        google.startTick("load");
        var r = google.timers.load;
        if (!google.stvsc)
            a:
            {
                var t = r.t;
                if (g) {
                    var u = g.timing;
                    if (u) {
                        var v = u.navigationStart,
                            w = u.responseStart;
                        if (w > v && w <= t.start) {
                            t.start = w;
                            r.wsrt = w - v;
                            break a
                        }
                    }
                    g.now && (r.wsrt = Math.floor(g.now()))
                }
            }google.c.b("pr", "load");
        google.c.b("xe", "load");
        var x;
        if (null == (x = google.stvsc) ? 0 : x.start)
            google.timers.load.t.start = google.stvsc.start;
        function y(a) {
            if ("hidden" === document.visibilityState) {
                google.c.fh = a;
                var b;
                window.performance && window.performance.timing && (b = Math.floor(window.performance.timing.navigationStart + a));
                google.tick("load", "fht", b);
                return !0
            }
            return !1
        }
        function z(a) {
            y(a.timeStamp) && m(document, "visibilitychange", z, !0)
        }
        google.c.fh = Infinity;
        l(document, "visibilitychange", z, !0);
        y(0);
        h && (p = n, l(document.documentElement, "load", p, !0), google.c.glu = q);
    }).call(this);
    (function() {
        var g = this || self;
        function h(a) {
            try {
                a()
            } catch (b) {
                google.ml(b, !1)
            }
        }
        google.caft = function(a, b) {
            null === google.aftq ? h(a) : (google.aftq = google.aftq || [], google.aftq.push(a), b && window.setTimeout(function() {
                google.aftq && (google.aftq = google.aftq.filter(function(c) {
                    return a !== c
                }), h(a))
            }, b))
        };
        function m() {
            return window.performance && window.performance.navigation && window.performance.navigation.type
        }
        ;
        function aa(a) {
            if (!a || ba(a))
                return 0;
            if (!a.getBoundingClientRect)
                return 1;
            var b = function(c) {
                return c.getBoundingClientRect()
            };
            return ca(a, b) ? 0 : da(a, b)
        }
        function ca(a, b) {
            var c;
            a:
            {
                for (c = a; c && void 0 !== c; c = c.parentElement)
                    if ("hidden" === c.style.overflow || "G-EXPANDABLE-CONTENT" === c.tagName && "hidden" === getComputedStyle(c).getPropertyValue("overflow"))
                        break a;
                c = null
            }if (!c)
                return !1;
            a = b(a);
            b = b(c);
            return a.bottom < b.top || a.top >= b.bottom || a.right < b.left || a.left >= b.right
        }
        function ba(a) {
            return "none" === a.style.display ? !0 : document.defaultView && document.defaultView.getComputedStyle ? (a = document.defaultView.getComputedStyle(a), !!a && ("hidden" === a.visibility || "0px" === a.height && "0px" === a.width)) : !1
        }
        function da(a, b) {
            var c = b(a);
            a = c.left + window.pageXOffset;
            b = c.top + window.pageYOffset;
            var d = c.width;
            c = c.height;
            var e = 0;
            if (0 >= c && 0 >= d)
                return e;
            var f = window.innerHeight || document.documentElement.clientHeight;
            0 > b + c ? e = 2 : b >= f && (e = 4);
            if (0 > a + d || a >= (window.innerWidth || document.documentElement.clientWidth))
                e |= 8;
            e || (e = 1, b + c > f && (e |= 4));
            return e
        }
        ;
        var q = google.c.bfrt,
            ea = google.c.lhc,
            fa = google.c.pbph,
            t = google.c.sxs,
            u = google.c.taf,
            v = google.c.btfi,
            w = google.c.frt,
            x = google.c.frvt,
            y = google.c.timl,
            z = google.c.upb;
        function A(a) {
            return "/gen_204?s=" + google.sn + "&t=" + a + "&atyp=csi&ei=" + google.kEI
        }
        ;
        function B() {
            var a;
            null == (a = C("cap")) || a.sendNow();
            var b;
            null == (b = C("aft")) || b.sendNow();
            var c;
            null == (c = C("all")) || c.sendNow();
            a = window;
            "addEventListener" in a ? a.removeEventListener("pagehide", B, !1) : a.attachEvent && a.detachEvent("onpagehide", B)
        }
        var D = {};
        function E(a) {
            z && (D[a] = new PendingGetBeacon(A(a) + "&inc=1"))
        }
        function C(a) {
            if (z)
                return D[a]
        }
        ;
        var ha = window.location,
            ia = "aft afti aftr afts cbs cbt fht frt frts frvt hct prt sct".split(" ");
        function F(a) {
            return (a = ha.search.match(new RegExp("[?&]" + a + "=(\\d+)"))) ? Number(a[1]) : -1
        }
        function G(a, b) {
            var c = google.timers[b || "load"];
            b = c.m;
            if (!b || !b.prs) {
                var d = m() ? 0 : F("qsubts");
                0 < d && (b = F("fbts"), 0 < b && (c.t.start = Math.max(d, b)));
                var e = c.t,
                    f = e.start;
                b = {
                    wsrt: c.wsrt || 0
                };
                if (f)
                    for (var r = 0, n; n = ia[r++];) {
                        var k = e[n];
                        k && (b[n] = Math.max(k - f, 0))
                    }
                0 < d && (b.gsasrt = c.t.start - d);
                d = c.e;
                c = A(a) + "&rt=";
                e = "";
                for (var p in b)
                    c += "" + e + p + "." + b[p],
                    e = ",";
                for (var l in d)
                    c += "&" + l + "=" + d[l];
                p = c;
                l = "";
                c = [];
                g._cshid && c.push(["cshid", g._cshid]);
                d = void 0 !== window.google && void 0 !== window.google.kOPI && 0 !== window.google.kOPI ? window.google.kOPI : null;
                null != d && c.push(["opi", d.toString()]);
                for (d = 0; d < c.length; d++) {
                    if (0 === d || 0 < d)
                        l += "&";
                    l += c[d][0] + "=" + c[d][1]
                }
                c = p + l;
                2 === m() && (c += "&bb=1");
                1 === m() && (c += "&r=1");
                "gsasrt" in b && (b = F("qsd"), 0 < b && (c += "&qsd=" + b));
                google.kBL && (c += "&bl=" + google.kBL);
                b = c;
                (a = C(a)) ? (a.setURL(b), a.sendNow()) : "function" === typeof navigator.sendBeacon ? navigator.sendBeacon(b, "") : google.log("", "", b)
            }
        }
        ;
        function H(a) {
            a && google.tick("load", "cbs", a);
            google.tick("load", "cbt");
            G("cap")
        }
        ;
        var I = "src bsrc url ll image img-url".split(" ");
        function ja(a) {
            for (var b = 0; b < I.length; ++b)
                if (a.getAttribute("data-" + I[b]))
                    return !0;
            return !1
        }
        function ma(a) {
            var b = a.parentElement;
            if (b && ("G-IMG" === b.tagName || b.classList.contains("uhHOwf")) && (b.style.height || b.style.width)) {
                var c = b.getBoundingClientRect(),
                    d = a.getBoundingClientRect();
                if (c.height <= d.height || c.width <= d.width)
                    a = b
            }
            return aa(a)
        }
        google.c.iim = google.c.iim || {};
        var J = window.performance;
        var K = window.innerHeight || document.documentElement.clientHeight,
            L = 0,
            M = 0,
            N = 0,
            O = 0,
            na = 0,
            oa = 0,
            P = 0,
            Q = 0,
            pa = 0,
            qa = 0,
            R = !0,
            S = !0,
            T = -1,
            U,
            V = t ? "load2" : "load";
        function W(a, b, c, d) {
            var e = google.timers[V].t[a];
            e && (c || d && null != b && b < e) || google.tick(V, a, b)
        }
        function X(a, b, c) {
            var d = "1" === a.getAttribute("data-frt");
            w && d && (W("frt", c, !1, !0), ++O, Y());
            b && (x && d && (W("frvt", c, !1, !0), ++oa), W("aft", c, !1, !0), W("afti", c, !1, !0), ++Q, R || (T = K), Y());
            y && W("iml", c, !1, !0);
            ++M;
            a.setAttribute("data-frt", "0");
            (y || b || q && d) && ra()
        }
        function ra() {
            var a = Q === P,
                b = O === N;
            a = q ? a && b : a;
            a = y ? M === L : a;
            !S && a && google.c.u("il", V)
        }
        function Y() {
            if (!R) {
                var a = Q === P,
                    b = O === N,
                    c = x && oa === na;
                a && (google.c.e(V, "aft", "1"), google.c.e(V, "aftp", String(Math.round(T))));
                if (a && b) {
                    U && clearTimeout(U);
                    var d;
                    null == (d = C("cap")) || d.deactivate();
                    G(t ? "aft2" : "aft", V);
                    if (!t && google.c.c4t && J && J.mark && J.timing) {
                        var e = google.timers.load;
                        d = e.wsrt;
                        e = e.t.aft;
                        d && 0 < d && e && 0 < e && (e -= J.timing.navigationStart, 0 < e && (J.mark("SearchAFTStart", {
                            startTime: d
                        }), J.mark("trigger:SearchAFTEnd", {
                            startTime: e
                        })))
                    }
                }
                "hidden" === document.visibilityState && google.c.e(V, "hddn", "1");
                if (!t &&
                null !== google.aftq && (2 === google.fevent || 3 === google.fevent ? google.fevent : 1) & ((a ? 1 : 0) | (c || b ? 2 : 0))) {
                    google.tick("load", "aftqf", Date.now());
                    var f;
                    for (a = 0; b = null == (f = google.aftq) ? void 0 : f[a++];)
                        h(b);
                    google.aftq = null
                }
            }
        }
        function sa() {
            R && !google.c.bofr && (R = !1, R || (google.c.e(V, "ima", String(P)), google.c.e(V, "imad", String(pa)), google.c.e(V, "imac", String(qa)), google.c.e(V, "imf", String(N)), document.getElementsByClassName("Ib7Efc").length && google.c.e(V, "ddl", "1")), Y())
        }
        function ta(a, b) {
            0 === b || b & 8 || (a.setAttribute("data-frt", "1"), w && ++N)
        }
        if (z && "function" === typeof window.PendingGetBeacon) {
            E("cap");
            E("aft");
            E("all");
            if (fa) {
                var Z = window;
                Z.addEventListener ? Z.addEventListener("pagehide", B, !1) : Z.attachEvent && Z.attachEvent("onpagehide", B)
            }
            google.c.lpb = C("all")
        }
        if (0 < google.c.cap && !t)
            a:
            {
                var ua = google.c.cap;
                if (window.performance && window.performance.timing && "navigationStart" in window.performance.timing) {
                    var va = window.performance.now(),
                        wa = ua - va;
                    if (0 < wa) {
                        U = setTimeout(H, wa, Math.floor(window.performance.timing.navigationStart + va));
                        break a
                    }
                    H()
                }
                U = void 0
            }google.c.wh = Math.floor(window.innerHeight || document.documentElement.clientHeight);
        google.c.e(V, "wh", String(google.c.wh));
        google.c.b("il", V);
        google.c.setup = function(a, b, c) {
            var d = a.getAttribute("data-atf");
            if (d)
                return c = Number(d), b && !a.hasAttribute("data-frt") && ta(a, c), c;
            var e = "string" !== typeof a.src || !a.src,
                f = !!a.getAttribute("data-bsrc"),
                r = !!a.getAttribute("data-deferred"),
                n = !r && ja(a);
            n && a.setAttribute("data-lzy_", "1");
            d = ma(a);
            a.setAttribute("data-atf", String(d));
            var k = !!(d & 1);
            e = (e || a.complete) && !r && !f && !(k && n);
            f = !ea && Number(a.getAttribute("data-iml")) || 0;
            ++L;
            if (e && !f || a.hasAttribute("data-noaft"))
                a.setAttribute("data-frt", "0"),
                ++M,
                k &&
                ++qa;
            else {
                var p = d & 4,
                    l = v && p && f && T < K;
                if (l) {
                    var ka = a.getBoundingClientRect().top + window.pageYOffset;
                    !c || 0 > c || ka < c ? T = k ? K : ka : l = !1
                }
                k && (++P, r && ++pa);
                b && ta(a, d);
                x && k && b && ++na;
                l && (W("aft", f, !1, !0), W("aftb", f, !1, !0));
                if (e && f)
                    X(a, k, v ? 0 : f);
                else {
                    k && (!u && !c || p || c && (0 > c || c >= K)) && (T = K);
                    var la = a.src;
                    google.rll(a, !0, function() {
                        (r || n) && la && la === a.src ? google.rll(a, !0, function() {
                            X(a, k, Date.now())
                        }) : X(a, k, Date.now())
                    })
                }
            }
            return d
        };
        google.c.ubr = function(a, b, c, d) {
            u && T < K ? (T = c || -1, W("aft", b)) : 0 > T && (c && (T = c), v && W("aft", b));
            a || W("afts", b, !0);
            d || (W("aft", b, !0), a && S ? (W("prt", b), y && W("iml", b, !0), S = !1, sa(), ra(), google.c.setup = function() {
                return 0
            }, google.c.ubr = function() {}) : sa())
        };
    }).call(this);
    (function() {
        var b = [function() {
            google.tick && google.tick("load", "dcl")
        }];
        google.dclc = function(a) {
            b.length ? b.push(a) : a()
        };
        function c() {
            for (var a = b.shift(); a;)
                a(),
                a = b.shift()
        }
        window.addEventListener ? (document.addEventListener("DOMContentLoaded", c, !1), window.addEventListener("load", c, !1)) : window.attachEvent && window.attachEvent("onload", c);
    }).call(this);
    (function() {
        var b = [];
        google.jsc = {
            xx: b,
            x: function(a) {
                b.push(a)
            },
            mm: [],
            m: function(a) {
                google.jsc.mm.length || (google.jsc.mm = a)
            }
        };
    }).call(this);
    (function() {
        var e = this || self;
        var f = {};
        function w(a, c) {
            if (null === c)
                return !1;
            if ("contains" in a && 1 == c.nodeType)
                return a.contains(c);
            if ("compareDocumentPosition" in a)
                return a == c || !!(a.compareDocumentPosition(c) & 16);
            for (; c && a != c;)
                c = c.parentNode;
            return c == a
        }
        ;
        var y = function(a, c) {
                return function(d) {
                    d || (d = window.event);
                    return c.call(a, d)
                }
            },
            z = "undefined" != typeof navigator && /Macintosh/.test(navigator.userAgent),
            E = function() {
                this._mouseEventsPrevented = !0
            };
        var F = function(a) {
                this.g = a;
                this.h = []
            },
            G = function(a) {
                for (var c = 0; c < a.h.length; ++c) {
                    var d = a.g,
                        b = a.h[c];
                    d.removeEventListener ? d.removeEventListener(b.eventType, b.s, b.capture) : d.detachEvent && d.detachEvent("on" + b.eventType, b.s)
                }
                a.h = []
            };
        var H = e._jsa || {};
        H._cfc = void 0;
        H._aeh = void 0;
        var I = function() {
                this.h = this.g = null
            },
            K = function(a, c) {
                var d = J;
                d.g = a;
                d.h = c;
                return d
            };
        I.prototype.i = function() {
            var a = this.g;
            this.g && this.g != this.h ? this.g = this.g.__owner || this.g.parentNode : this.g = null;
            return a
        };
        var L = function() {
                var a;
                this.j = a = void 0 === a ? [] : a;
                this.g = 0;
                this.h = null;
                this.l = !1
            },
            N = function(a, c) {
                var d = M;
                d.j = a;
                d.g = 0;
                d.h = c;
                d.l = !1;
                return d
            };
        L.prototype.i = function() {
            if (this.l)
                return J.i();
            if (this.g != this.j.length) {
                var a = this.j[this.g];
                this.g++;
                a != this.h && a && a.__owner && (this.l = !0, K(a.__owner, this.h));
                return a
            }
            return null
        };
        var J = new I,
            M = new L;
        var Q = function() {
                this.v = [];
                this.g = [];
                this.h = [];
                this.l = {};
                this.i = null;
                this.j = [];
                P(this, "_custom")
            },
            R = function(a) {
                return String.prototype.trim ? a.trim() : a.replace(/^\s+/, "").replace(/\s+$/, "")
            },
            ia = function(a, c) {
                return function m(b, g) {
                    g = void 0 === g ? !0 : g;
                    var l = c;
                    if ("_custom" == l) {
                        l = b.detail;
                        if (!l || !l._type)
                            return;
                        l = l._type
                    }
                    var k = l;
                    "click" == k && (z && b.metaKey || !z && b.ctrlKey || 2 == b.which || null == b.which && 4 == b.button || b.shiftKey) ? k = "clickmod" : "keydown" == k && !b.a11ysc && (k = "maybe_click");
                    var u = b.srcElement || b.target;
                    l = S(k, b, u, "", null);
                    var aa = b.path ? N(b.path, this) : b.composedPath ? N(b.composedPath(), this) : K(u, this);
                    for (var r; r = aa.i();) {
                        var h = r;
                        var p = void 0;
                        r = h;
                        var q = k,
                            ba = b;
                        var n = r.__jsaction;
                        if (!n) {
                            var x;
                            n = null;
                            "getAttribute" in r && (n = r.getAttribute("jsaction"));
                            if (x = n) {
                                n = f[x];
                                if (!n) {
                                    n = {};
                                    for (var A = x.split(ca), da = A ? A.length : 0, B = 0; B < da; B++) {
                                        var v = A[B];
                                        if (v) {
                                            var C = v.indexOf(":"),
                                                O = -1 != C,
                                                fa = O ? R(v.substr(0, C)) : ea;
                                            v = O ? R(v.substr(C + 1)) : v;
                                            n[fa] = v
                                        }
                                    }
                                    f[x] = n
                                }
                                r.__jsaction = n
                            } else
                                n = ha,
                                r.__jsaction = n
                        }
                        "maybe_click" == q && n.click ? (p = q, q = "click") : "clickkey" == q ? q = "click" : "click" != q || n.click || (q = "clickonly");
                        p = H._cfc && n.click ? H._cfc(r, ba, n, q, p) : {
                            eventType: p ? p : q,
                            action: n[q] || "",
                            event: null,
                            ignore: !1
                        };
                        l = S(p.eventType, p.event || b, u, p.action || "", h, l.timeStamp);
                        if (p.ignore || p.action)
                            break
                    }
                    l && "touchend" == l.eventType && (l.event._preventMouseEvents = E);
                    if (p && p.action) {
                        if ("mouseenter" == k || "mouseleave" == k || "pointerenter" == k || "pointerleave" == k)
                            if (u = b.relatedTarget, !("mouseover" == b.type && "mouseenter" == k || "mouseout" == b.type && "mouseleave" == k ||
                            "pointerover" == b.type && "pointerenter" == k || "pointerout" == b.type && "pointerleave" == k) || u && (u === h || w(h, u)))
                                l.action = "",
                                l.actionElement = null;
                            else {
                                k = {};
                                for (var t in b)
                                    "function" !== typeof b[t] && "srcElement" !== t && "target" !== t && (k[t] = b[t]);
                                k.type = "mouseover" == b.type ? "mouseenter" : "mouseout" == b.type ? "mouseleave" : "pointerover" == b.type ? "pointerenter" : "pointerleave";
                                k.target = k.srcElement = h;
                                k.bubbles = !1;
                                l.event = k;
                                l.targetElement = h
                            }
                    } else
                        l.action = "",
                        l.actionElement = null;
                    h = l;
                    a.i && !h.event.a11ysgd && (t = S(h.eventType, h.event, h.targetElement, h.action, h.actionElement, h.timeStamp), "clickonly" == t.eventType && (t.eventType = "click"), a.i(t, !0));
                    if (h.actionElement || "maybe_click" == h.eventType) {
                        if (a.i) {
                            if (!h.actionElement || "A" != h.actionElement.tagName || "click" != h.eventType && "clickmod" != h.eventType || (b.preventDefault ? b.preventDefault() : b.returnValue = !1), (b = a.i(h)) && g) {
                                m.call(this, b, !1);
                                return
                            }
                        } else {
                            if ((g = e.document) && !g.createEvent && g.createEventObject)
                                try {
                                    var D = g.createEventObject(b)
                                } catch (la) {
                                    D = b
                                }
                            else
                                D = b;
                            h.event = D;
                            a.j.push(h)
                        }
                        H._aeh &&
                        H._aeh(h)
                    }
                }
            },
            S = function(a, c, d, b, g, m) {
                return {
                    eventType: a,
                    event: c,
                    targetElement: d,
                    action: b,
                    actionElement: g,
                    timeStamp: m || Date.now()
                }
            },
            ja = function(a, c) {
                return function(d) {
                    var b = a,
                        g = c,
                        m = !1;
                    "mouseenter" == b ? b = "mouseover" : "mouseleave" == b ? b = "mouseout" : "pointerenter" == b ? b = "pointerover" : "pointerleave" == b && (b = "pointerout");
                    if (d.addEventListener) {
                        if ("focus" == b || "blur" == b || "error" == b || "load" == b || "toggle" == b)
                            m = !0;
                        d.addEventListener(b, g, m)
                    } else
                        d.attachEvent && ("focus" == b ? b = "focusin" : "blur" == b && (b = "focusout"), g = y(d, g), d.attachEvent("on" + b, g));
                    return {
                        eventType: b,
                        s: g,
                        capture: m
                    }
                }
            },
            P = function(a, c) {
                if (!a.l.hasOwnProperty(c)) {
                    var d = ia(a, c),
                        b = ja(c, d);
                    a.l[c] = d;
                    a.v.push(b);
                    for (d = 0; d < a.g.length; ++d) {
                        var g = a.g[d];
                        g.h.push(b.call(null, g.g))
                    }
                    "click" == c && P(a, "keydown")
                }
            };
        Q.prototype.s = function(a) {
            return this.l[a]
        };
        var W = function(a, c) {
                var d = new F(c);
                a:
                {
                    for (var b = 0; b < a.g.length; b++)
                        if (T(a.g[b].g, c)) {
                            c = !0;
                            break a
                        }
                    c = !1
                }if (c)
                    return a.h.push(d), d;
                U(a, d);
                a.g.push(d);
                V(a);
                return d
            },
            V = function(a) {
                for (var c = a.h.concat(a.g), d = [], b = [], g = 0; g < a.g.length; ++g) {
                    var m = a.g[g];
                    X(m, c) ? (d.push(m), G(m)) : b.push(m)
                }
                for (g = 0; g < a.h.length; ++g)
                    m = a.h[g],
                    X(m, c) ? d.push(m) : (b.push(m), U(a, m));
                a.g = b;
                a.h = d
            },
            U = function(a, c) {
                var d = c.g;
                ka && (d.style.cursor = "pointer");
                for (d = 0; d < a.v.length; ++d)
                    c.h.push(a.v[d].call(null, c.g))
            },
            Y = function(a, c) {
                a.i = c;
                a.j && (0 < a.j.length && c(a.j), a.j = null)
            },
            X = function(a, c) {
                for (var d = 0; d < c.length; ++d)
                    if (c[d].g != a.g && T(c[d].g, a.g))
                        return !0;
                return !1
            },
            T = function(a, c) {
                for (; a != c && c.parentNode;)
                    c = c.parentNode;
                return a == c
            },
            ka = "undefined" != typeof navigator && /iPhone|iPad|iPod/.test(navigator.userAgent),
            ca = /\s*;\s*/,
            ea = "click",
            ha = {};
        var Z = new Q;
        W(Z, window.document.documentElement);
        P(Z, "click");
        P(Z, "focus");
        P(Z, "focusin");
        P(Z, "blur");
        P(Z, "focusout");
        P(Z, "error");
        P(Z, "load");
        P(Z, "auxclick");
        P(Z, "change");
        P(Z, "copy");
        P(Z, "dblclick");
        P(Z, "beforeinput");
        P(Z, "input");
        P(Z, "keyup");
        P(Z, "keydown");
        P(Z, "keypress");
        P(Z, "mousedown");
        P(Z, "mouseenter");
        P(Z, "mouseleave");
        P(Z, "mouseout");
        P(Z, "mouseover");
        P(Z, "mouseup");
        P(Z, "paste");
        P(Z, "pointerenter");
        P(Z, "pointerleave");
        P(Z, "touchstart");
        P(Z, "touchmove");
        P(Z, "touchend");
        P(Z, "touchcancel");
        P(Z, "transitioncancel");
        P(Z, "transitionend");
        P(Z, "transitionrun");
        P(Z, "transitionstart");
        P(Z, "dragover");
        P(Z, "dragenter");
        P(Z, "dragleave");
        P(Z, "drop");
        P(Z, "dragstart");
        P(Z, "dragend");
        P(Z, "speech");
        (function(a) {
            google.jsad = function(c) {
                Y(a, c)
            };
            google.jsaac = function(c) {
                return W(a, c)
            };
            google.jsarc = function(c) {
                G(c);
                for (var d = !1, b = 0; b < a.g.length; ++b)
                    if (a.g[b] === c) {
                        a.g.splice(b, 1);
                        d = !0;
                        break
                    }
                if (!d)
                    for (d = 0; d < a.h.length; ++d)
                        if (a.h[d] === c) {
                            a.h.splice(d, 1);
                            break
                        }
                V(a)
            }
        })(Z);
        e.gws_wizbind = function(a) {
            return {
                trigger: function(c) {
                    var d = a.s(c.type);
                    d || (P(a, c.type), d = a.s(c.type));
                    var b = c.target || c.srcElement;
                    d && d.call(b.ownerDocument.documentElement, c)
                },
                bind: function(c) {
                    Y(a, c)
                }
            }
        }(Z);
    }).call(this);
    (function() {
        function b(c) {
            var a;
            a:
            {
                for (a = c.target; a && a !== document.documentElement; a = a.parentElement)
                    if ("A" === a.tagName && "1" === a.getAttribute("data-jsarwt"))
                        break a;
                a = null
            }a && window.jsarwt(a, null, c);
            return !0
        }
        ;
        window.document.documentElement.addEventListener("mousedown", b, !0);
        window.document.documentElement.addEventListener("touchstart", b, !0);
    }).call(this);
    </script>
    <script nonce="p_Tq9wZ0x9trjT50lPtgNA">
    (function() {
        google.xjs = {
            ck: 'xjs.s.1cSoGalsFF0.L.W.O',
            cs: 'ACT90oEr0yoFZocTgnOPuEbWudIxojLjqA',
            cssopt: false,
            csss: 'ACT90oGUN3VQ2qtBFlU_EXQJvH1zMxFuBA',
            excm: [],
            sepcss: false
        };
    })();
    </script>
    <script nonce="p_Tq9wZ0x9trjT50lPtgNA">
    (function() {
        google.kEXPI = '0,202638,3497657,654,219,460776,46542,110372,82879,40704,22937,104955,10655,6245,170999,22693,78476,6636,2025,5363,11916,41737,5252,8194,20890,36246,5209744,62,5994623,2834974,741,4,23942610,4058007,43279,1737548,23427626,6265,5513,4479,2558,2019,1508,897,835,1181,3542,240,3263,785,867,7756,4862,2210,284,2831,664,7670,441,2913,478,782,418,1571,2459,2515,842,204,1341,2439,92,374,2,425,1638,871,2332,1325,1418,636,835,1467,53,2812,862,315,1755,350,131,1684,1330';
    })();
    window._ = window._ || {};
    window._DumpException = _._DumpException = function(e) {
        throw e;
    };
    window._s = window._s || {};
    _s._DumpException = _._DumpException;
    window._qs = window._qs || {};
    _qs._DumpException = _._DumpException;
    (function() {
        window._F_toggles = [40, 0, 536871424, 43786344, 3155648, 2621441, 524288, 128, 566231040, 786440, 617233424, 33685556, 6308368, 8061712, 2427200, 0, 403167296, 0, 8392192, 69730304, 8652288, 16394, 126877696, 491520, 23146592, 0, 0, 318832640, 24141954, 8421385, 32, 0, 603979776, 70198858, 20971584];
    })();
    function _F_installCss(c) {}
    (function() {
        window.google.xjsu = '/xjs/_/js/k\x3dxjs.s.en_GB.eB4q4lG4mgQ.O/am\x3dCAAAAAAAAAAgAACigXAIwAYwQAAACAAAgAAAAgAAAADAIQIAAwDBo0zSAAgIEEJgAMTAHgCUUAIAAAAAQNgHGAAAAADgAAgAAKAQAAaEgAIQAAAAAHkAAB4AYDBhAQAAAAAAAAAAAARMgmBwQQIgIAACAAAAAAAAAAAApJLJCwEEABQ/d\x3d1/ed\x3d1/dg\x3d2/rs\x3dACT90oE-Wi9duIUu15HPyBxbEGbTqvwMlg/ee\x3dcEt90b:ws9Tlc;qddgKe:x4FYXe,d7YSfd;yxTchf:KUM7Z;dtl0hd:lLQWFe;eHDfl:ofjVkb;qaS3gd:yiLg6e;nAFL3:NTMZac,s39S4;oGtAuc:sOXFj;iFQyKf:vfuNJf,QIhFr;SNUn3:ZwDk9d,x8cHvb;io8t5d:sgY6Zb;Oj465e:KG2eXe,KG2eXe;Erl4fe:FloWmf,FloWmf;JsbNhc:Xd8iUd;sP4Vbe:VwDzFe;kMFpHd:OTA3Ae;uY49fb:COQbmf;Pjplud:PoEs9b,EEDORb;QGR0gd:Mlhmy;a56pNe:JEfCwb;Me32dd:MEeYgc;wR5FRb:TtcOte,O1Gjze;pXdRYb:JKoKVe,MdUzUe;dIoSBb:ZgGg9b;EmZ2Bf:zr1jrb;NSEoX:lazG7b;eBAeSb:Ck63tb;WCEKNd:I46Hvd;wV5Pjc:L8KGxe;EVNhjf:pw70Gc;sTsDMc:kHVSUb;wQlYve:aLUfP;zOsCQe:Ko78Df;KcokUb:KiuZBf;YV5bee:IvPZ6d;kbAm9d:MkHyGd;ZWEUA:afR4Cf;g8nkx:U4MzKc;lzgfYb:PI40bd;ESrPQc:mNTJvc;qavrXe:zQzcXe,mYbt1d;w9w86d:dt4g2b;GleZL:J1A7Od;bcPXSc:gSZLJb;JXS8fb:Qj0suc;IoGlCf:b5lhvb;vfVwPd:OXTqFb;VGRfx:VFqbr;BjwMce:cXX2Wb;pNsl2d:j9Yuyc;R9Ulx:CR7Ufe;kY7VAf:d91TEb;KpRAue:Tia57b;jY0zg:Q6tNgc;l8Azde:j4Ca9b;oSUNyd:fTfGO,fTfGO,vjQg0b;SMDL4c:fTfGO,vjQg0b;aZ61od:arTwJ;ZrFutb:W4Cdfc;K8vqCc:MyIcle;NPKaK:SdcwHb;LBgRLc:XVMNvd,SdcwHb;rQSrae:C6D5Fc;kCQyJ:ueyPK;KQzWid:mB4wNe;EABSZ:MXZt9d;TxfV6d:YORN0b;UDrY1c:eps46d;F9mqte:UoRcbe;Nyt6ic:jn2sGd;w3bZCb:ZPGaIb;G0KhTb:LIaoZ;aAJE9c:WHW6Ef;V2HTTe:RolTY;Wfmdue:g3MJlb;imqimf:jKGL2e;BgS6mb:fidj5d;UVmjEd:EesRsb;z97YGf:oug9te;AfeaP:TkrAjf;eBZ5Nd:audvde;CxXAWb:YyRLvc;VN6jIc:ddQyuf;SLtqO:Kh1xYe;tosKvd:ZCqP3;VOcgDe:YquhTb;uuQkY:u2V3ud;WDGyFe:jcVOxd;trZL0b:qY8PFe;VxQ32b:k0XsBb;DULqB:RKfG5c;Np8Qkd:Dpx6qc;cFTWae:gT8qnd;gaub4:TN6bMe;xBbsrc:NEW1Qc;DpcR3d:zL72xf;hjRo6e:F62sG;yGxLoc:FmAr0c;oUlnpc:RagDlc;R2kc8b:ALJqWb;pj82le:mg5CW;dLlj2:Qqt3Gf;qGV2uc:HHi04c;gtVSi:ekUOYd;UyG7Kb:wQd0G;LsNahb:ucGLNb;xbe2wc:wbTLEd;Q1Ow7b:x5CSu;okUaUd:wItadb;G6wU6e:hezEbd;uknmt:GkPrzb;PqHfGe:im2cZe;Fmv9Nc:O1Tzwc;hK67qb:QWEO5b;BMxAGc:E5bFse;R4IIIb:QWfeKf;whEZac:F4AmNb;tH4IIe:Ymry6;zxnPse:GkRiKb;xqZiqf:wmnU7d;lkq0A:Z0MWEf;daB6be:lMxGPd;U96pRd:FsR04;LEikZe:byfTOb,lsjVmc/m\x3dcdos,cr,hsm,jsa,mb4ZUb,d,csi,cEt90b,SNUn3,qddgKe,sTsDMc,dtl0hd,eHDfl';
        window._F_jsUrl = '/xjs/_/js/k\x3dxjs.s.en_GB.eB4q4lG4mgQ.O/am\x3dCAAAAAAAAAAgAACigXAIwAYwQAAACAAAgAAAAgAAAADAIQIAAwDBo0zSAAgIEEJgAMTAHgCUUAIAAAAAQNgHGAAAAADgAAgAAKAQAAaEgAIQAAAAAHkAAB4AYDBhAQAAAAAAAAAAAARMgmBwQQIgIAACAAAAAAAAAAAApJLJCwEEABQ/d\x3d1/ed\x3d1/dg\x3d2/rs\x3dACT90oE-Wi9duIUu15HPyBxbEGbTqvwMlg/ee\x3dcEt90b:ws9Tlc;qddgKe:x4FYXe,d7YSfd;yxTchf:KUM7Z;dtl0hd:lLQWFe;eHDfl:ofjVkb;qaS3gd:yiLg6e;nAFL3:NTMZac,s39S4;oGtAuc:sOXFj;iFQyKf:vfuNJf,QIhFr;SNUn3:ZwDk9d,x8cHvb;io8t5d:sgY6Zb;Oj465e:KG2eXe,KG2eXe;Erl4fe:FloWmf,FloWmf;JsbNhc:Xd8iUd;sP4Vbe:VwDzFe;kMFpHd:OTA3Ae;uY49fb:COQbmf;Pjplud:PoEs9b,EEDORb;QGR0gd:Mlhmy;a56pNe:JEfCwb;Me32dd:MEeYgc;wR5FRb:TtcOte,O1Gjze;pXdRYb:JKoKVe,MdUzUe;dIoSBb:ZgGg9b;EmZ2Bf:zr1jrb;NSEoX:lazG7b;eBAeSb:Ck63tb;WCEKNd:I46Hvd;wV5Pjc:L8KGxe;EVNhjf:pw70Gc;sTsDMc:kHVSUb;wQlYve:aLUfP;zOsCQe:Ko78Df;KcokUb:KiuZBf;YV5bee:IvPZ6d;kbAm9d:MkHyGd;ZWEUA:afR4Cf;g8nkx:U4MzKc;lzgfYb:PI40bd;ESrPQc:mNTJvc;qavrXe:zQzcXe,mYbt1d;w9w86d:dt4g2b;GleZL:J1A7Od;bcPXSc:gSZLJb;JXS8fb:Qj0suc;IoGlCf:b5lhvb;vfVwPd:OXTqFb;VGRfx:VFqbr;BjwMce:cXX2Wb;pNsl2d:j9Yuyc;R9Ulx:CR7Ufe;kY7VAf:d91TEb;KpRAue:Tia57b;jY0zg:Q6tNgc;l8Azde:j4Ca9b;oSUNyd:fTfGO,fTfGO,vjQg0b;SMDL4c:fTfGO,vjQg0b;aZ61od:arTwJ;ZrFutb:W4Cdfc;K8vqCc:MyIcle;NPKaK:SdcwHb;LBgRLc:XVMNvd,SdcwHb;rQSrae:C6D5Fc;kCQyJ:ueyPK;KQzWid:mB4wNe;EABSZ:MXZt9d;TxfV6d:YORN0b;UDrY1c:eps46d;F9mqte:UoRcbe;Nyt6ic:jn2sGd;w3bZCb:ZPGaIb;G0KhTb:LIaoZ;aAJE9c:WHW6Ef;V2HTTe:RolTY;Wfmdue:g3MJlb;imqimf:jKGL2e;BgS6mb:fidj5d;UVmjEd:EesRsb;z97YGf:oug9te;AfeaP:TkrAjf;eBZ5Nd:audvde;CxXAWb:YyRLvc;VN6jIc:ddQyuf;SLtqO:Kh1xYe;tosKvd:ZCqP3;VOcgDe:YquhTb;uuQkY:u2V3ud;WDGyFe:jcVOxd;trZL0b:qY8PFe;VxQ32b:k0XsBb;DULqB:RKfG5c;Np8Qkd:Dpx6qc;cFTWae:gT8qnd;gaub4:TN6bMe;xBbsrc:NEW1Qc;DpcR3d:zL72xf;hjRo6e:F62sG;yGxLoc:FmAr0c;oUlnpc:RagDlc;R2kc8b:ALJqWb;pj82le:mg5CW;dLlj2:Qqt3Gf;qGV2uc:HHi04c;gtVSi:ekUOYd;UyG7Kb:wQd0G;LsNahb:ucGLNb;xbe2wc:wbTLEd;Q1Ow7b:x5CSu;okUaUd:wItadb;G6wU6e:hezEbd;uknmt:GkPrzb;PqHfGe:im2cZe;Fmv9Nc:O1Tzwc;hK67qb:QWEO5b;BMxAGc:E5bFse;R4IIIb:QWfeKf;whEZac:F4AmNb;tH4IIe:Ymry6;zxnPse:GkRiKb;xqZiqf:wmnU7d;lkq0A:Z0MWEf;daB6be:lMxGPd;U96pRd:FsR04;LEikZe:byfTOb,lsjVmc/m\x3dcdos,cr,hsm,jsa,mb4ZUb,d,csi,cEt90b,SNUn3,qddgKe,sTsDMc,dtl0hd,eHDfl';
    })();
    </script>
    <script defer="" src="/xjs/_/js/k=xjs.s.en_GB.eB4q4lG4mgQ.O/am=CAAAAAAAAAAgAACigXAIwAYwQAAACAAAgAAAAgAAAADAIQIAAwDBo0zSAAgIEEJgAMTAHgCUUAIAAAAAQNgHGAAAAADgAAgAAKAQAAaEgAIQAAAAAHkAAB4AYDBhAQAAAAAAAAAAAARMgmBwQQIgIAACAAAAAAAAAAAApJLJCwEEABQ/d=1/ed=1/dg=2/rs=ACT90oE-Wi9duIUu15HPyBxbEGbTqvwMlg/ee=cEt90b:ws9Tlc;qddgKe:x4FYXe,d7YSfd;yxTchf:KUM7Z;dtl0hd:lLQWFe;eHDfl:ofjVkb;qaS3gd:yiLg6e;nAFL3:NTMZac,s39S4;oGtAuc:sOXFj;iFQyKf:vfuNJf,QIhFr;SNUn3:ZwDk9d,x8cHvb;io8t5d:sgY6Zb;Oj465e:KG2eXe,KG2eXe;Erl4fe:FloWmf,FloWmf;JsbNhc:Xd8iUd;sP4Vbe:VwDzFe;kMFpHd:OTA3Ae;uY49fb:COQbmf;Pjplud:PoEs9b,EEDORb;QGR0gd:Mlhmy;a56pNe:JEfCwb;Me32dd:MEeYgc;wR5FRb:TtcOte,O1Gjze;pXdRYb:JKoKVe,MdUzUe;dIoSBb:ZgGg9b;EmZ2Bf:zr1jrb;NSEoX:lazG7b;eBAeSb:Ck63tb;WCEKNd:I46Hvd;wV5Pjc:L8KGxe;EVNhjf:pw70Gc;sTsDMc:kHVSUb;wQlYve:aLUfP;zOsCQe:Ko78Df;KcokUb:KiuZBf;YV5bee:IvPZ6d;kbAm9d:MkHyGd;ZWEUA:afR4Cf;g8nkx:U4MzKc;lzgfYb:PI40bd;ESrPQc:mNTJvc;qavrXe:zQzcXe,mYbt1d;w9w86d:dt4g2b;GleZL:J1A7Od;bcPXSc:gSZLJb;JXS8fb:Qj0suc;IoGlCf:b5lhvb;vfVwPd:OXTqFb;VGRfx:VFqbr;BjwMce:cXX2Wb;pNsl2d:j9Yuyc;R9Ulx:CR7Ufe;kY7VAf:d91TEb;KpRAue:Tia57b;jY0zg:Q6tNgc;l8Azde:j4Ca9b;oSUNyd:fTfGO,fTfGO,vjQg0b;SMDL4c:fTfGO,vjQg0b;aZ61od:arTwJ;ZrFutb:W4Cdfc;K8vqCc:MyIcle;NPKaK:SdcwHb;LBgRLc:XVMNvd,SdcwHb;rQSrae:C6D5Fc;kCQyJ:ueyPK;KQzWid:mB4wNe;EABSZ:MXZt9d;TxfV6d:YORN0b;UDrY1c:eps46d;F9mqte:UoRcbe;Nyt6ic:jn2sGd;w3bZCb:ZPGaIb;G0KhTb:LIaoZ;aAJE9c:WHW6Ef;V2HTTe:RolTY;Wfmdue:g3MJlb;imqimf:jKGL2e;BgS6mb:fidj5d;UVmjEd:EesRsb;z97YGf:oug9te;AfeaP:TkrAjf;eBZ5Nd:audvde;CxXAWb:YyRLvc;VN6jIc:ddQyuf;SLtqO:Kh1xYe;tosKvd:ZCqP3;VOcgDe:YquhTb;uuQkY:u2V3ud;WDGyFe:jcVOxd;trZL0b:qY8PFe;VxQ32b:k0XsBb;DULqB:RKfG5c;Np8Qkd:Dpx6qc;cFTWae:gT8qnd;gaub4:TN6bMe;xBbsrc:NEW1Qc;DpcR3d:zL72xf;hjRo6e:F62sG;yGxLoc:FmAr0c;oUlnpc:RagDlc;R2kc8b:ALJqWb;pj82le:mg5CW;dLlj2:Qqt3Gf;qGV2uc:HHi04c;gtVSi:ekUOYd;UyG7Kb:wQd0G;LsNahb:ucGLNb;xbe2wc:wbTLEd;Q1Ow7b:x5CSu;okUaUd:wItadb;G6wU6e:hezEbd;uknmt:GkPrzb;PqHfGe:im2cZe;Fmv9Nc:O1Tzwc;hK67qb:QWEO5b;BMxAGc:E5bFse;R4IIIb:QWfeKf;whEZac:F4AmNb;tH4IIe:Ymry6;zxnPse:GkRiKb;xqZiqf:wmnU7d;lkq0A:Z0MWEf;daB6be:lMxGPd;U96pRd:FsR04;LEikZe:byfTOb,lsjVmc/m=cdos,cr,hsm,jsa,mb4ZUb,d,csi,cEt90b,SNUn3,qddgKe,sTsDMc,dtl0hd,eHDfl" nonce="p_Tq9wZ0x9trjT50lPtgNA"></script>
    <script nonce="p_Tq9wZ0x9trjT50lPtgNA">
    (function() {
        window.rwt = function() {
            return !0
        };
    }).call(this);
    (function() {
        var b = this || self;
        var d,
            e;
        a:
        {
            for (var f = ["CLOSURE_FLAGS"], g = b, h = 0; h < f.length; h++)
                if (g = g[f[h]], null == g) {
                    e = null;
                    break a
                }
            e = g
        }var k = e && e[610401301];
        d = null != k ? k : !1;
        var l,
            m = b.navigator;
        l = m ? m.userAgentData || null : null;
        function n(c) {
            return d ? l ? l.brands.some(function(a) {
                return (a = a.brand) && -1 != a.indexOf(c)
            }) : !1 : !1
        }
        function t(c) {
            var a;
            a:
            {
                if (a = b.navigator)
                    if (a = a.userAgent)
                        break a;
                a = ""
            }return -1 != a.indexOf(c)
        }
        ;
        function u() {
            return d ? !!l && 0 < l.brands.length : !1
        }
        function v() {
            return t("Safari") && !(w() || (u() ? 0 : t("Coast")) || (u() ? 0 : t("Opera")) || (u() ? 0 : t("Edge")) || (u() ? n("Microsoft Edge") : t("Edg/")) || (u() ? n("Opera") : t("OPR")) || t("Firefox") || t("FxiOS") || t("Silk") || t("Android"))
        }
        function w() {
            return u() ? n("Chromium") : (t("Chrome") || t("CriOS")) && !(u() ? 0 : t("Edge")) || t("Silk")
        }
        ;
        var x = function(c) {
            return String(c).replace(/\-([a-z])/g, function(a, p) {
                return p.toUpperCase()
            })
        };
        var z = u() ? !1 : t("Trident") || t("MSIE");
        !t("Android") || w();
        w();
        v();
        var A = !z && !v();
        window.jsarwt = function(c, a, p) {
            if (!a)
                if (A && c.dataset)
                    a = c.dataset;
                else {
                    a = {};
                    for (var y = c.attributes, q = 0; q < y.length; ++q) {
                        var r = y[q];
                        if (0 == r.name.lastIndexOf("data-", 0)) {
                            var B = x(r.name.slice(5));
                            a[B] = r.value
                        }
                    }
                }
            if (!("jrwt" in a))
                if (window.rwt(c, "", "", "", a.cd || "", a.usg || "", "", a.ved || "", Number(a.au) || null, a.psig || "", p), A && c.dataset)
                    c.dataset.jrwt = "1";
                else {
                    if (/-[a-z]/.test("jrwt"))
                        throw Error("a");
                    c.setAttribute.call(c, "data-" + "jrwt".replace(/([A-Z])/g, "-$1").toLowerCase(), "1")
                }
            return !1
        };
    }).call(this);
    (function() {
        window._skwEvts = [];
    })();
    (function() {
        window.google.erd = {
            jsr: 1,
            bv: 1851,
            sd: true,
            de: true
        };
    })();
    (function() {
        var sdo = false;
        var mei = 10;
        var l = this || self;
        var m,
            n = null != (m = l.mei) ? m : 1,
            p,
            q = null != (p = l.sdo) ? p : !0,
            r = 0,
            t,
            u = google.erd,
            v = u.jsr;
        google.ml = function(a, b, d, h, e) {
            e = void 0 === e ? 2 : e;
            b && (t = a && a.message);
            if (google.dl)
                return google.dl(a, e, d), null;
            if (0 > v) {
                window.console && console.error(a, d);
                if (-2 === v)
                    throw a;
                b = !1
            } else
                b = !a || !a.message || "Error loading script" === a.message || r >= n && !h ? !1 : !0;
            if (!b)
                return null;
            r++;
            d = d || {};
            b = encodeURIComponent;
            var c = "/gen_204?atyp=i&ei=" + b(google.kEI);
            google.kEXPI && (c += "&jexpid=" + b(google.kEXPI));
            c += "&srcpg=" + b(google.sn) + "&jsr=" + b(u.jsr) + "&bver=" + b(u.bv);
            var f = a.lineNumber;
            void 0 !== f && (c += "&line=" + f);
            var g =
            a.fileName;
            g && (0 < g.indexOf("-extension:/") && (e = 3), c += "&script=" + b(g), f && g === window.location.href && (f = document.documentElement.outerHTML.split("\n")[f], c += "&cad=" + b(f ? f.substring(0, 300) : "No script found.")));
            c += "&cad=ple_" + google.ple + ".aple_" + google.aple;
            google.ple && 1 === google.ple && (e = 2);
            c += "&jsel=" + e;
            for (var k in d)
                c += "&",
                c += b(k),
                c += "=",
                c += b(d[k]);
            c = c + "&emsg=" + b(a.name + ": " + a.message);
            c = c + "&jsst=" + b(a.stack || "N/A");
            12288 <= c.length && (c = c.substr(0, 12288));
            a = c;
            h || google.log(0, "", a);
            return a
        };
        window.onerror = function(a, b, d, h, e) {
            if (t !== a) {
                a = e instanceof Error ? e : Error(a);
                void 0 === d || "lineNumber" in a || (a.lineNumber = d);
                void 0 === b || "fileName" in a || (a.fileName = b);
                b = void 0;
                if (a.stack && (-1 !== a.stack.indexOf("?xjs=s0") || -1 !== a.stack.indexOf("&xjs=s0"))) {
                    b = document.querySelectorAll("script[src*=\\/xjs\\/_\\/js\\/]");
                    for (h = d = 0; h < b.length; h++)
                        d += b[h].async ? 1 : 0;
                    var c = e = h = -1,
                        f = -1,
                        g = -1;
                    if (performance && google.xjsu) {
                        h = 0;
                        e = google.timers.load.t.xjsee ? 1 : 0;
                        f = c = 0;
                        g = performance.getEntriesByType("resource");
                        for (var k =
                        0; k < g.length; k++)
                            -1 !== g[k].name.indexOf(google.xjsu) && (h = 1),
                            -1 !== g[k].name.indexOf("/xjs/_/js/") && (c += 1, f += "script" === g[k].initiatorType ? 1 : 0);
                        g = c - f
                    }
                    b = {
                        cad: "pl_" + h + ".pe_" + e + ".asc_" + d + ".tsc_" + b.length + ".fasc_" + (b.length - d) + ".lxc_" + c + ".lsx_" + f + ".lnsx_" + g
                    }
                }
                google.ml(a, !1, b, !1, "SyntaxError" === a.name || "SyntaxError" === a.message.substring(0, 11) || -1 !== a.message.indexOf("Script error") ? 3 : 0)
            }
            t = null;
            q && r >= n && (window.onerror = null)
        };
    })();
    ;
    this.gbar_ = {
        CONFIG: [[[0, "www.gstatic.com", "og.qtm.en_US.qYFIEIkCIVI.2019.O", "by", "en", "538", 0, [4, 2, "", "", "", "556625501", "0"], null, "1qDgZPKIEoOD9u8Plt2G4AI", null, 0, "og.qtm.lyzWpsGgyY4.L.W.O", "AA2YrTsgd_ypzHoy2JPJv2iswMZ51SEckw", "AA2YrTuGs_dsg3deeYWmrd2SeOOCbFjXog", "", 2, 1, 200, "BLR", null, null, "1", "538", 1], null, [1, 0.1000000014901161, 2, 1], [1, 0.001000000047497451, 1], [1, 0, 0, null, "0", "kirillinski2006@gmail.com", "", "ADRvXp02u-TDuKsm8jBYKVRnO5N1LNinOuyN_vIucHSvpIRtPuO88zE57XXqVTZast2-bQtCC56D7b-hLYBgBDbTAaeF8m22qw", 0, 0, 0], [0, 0, "", 1, 0, 0, 0, 0, 0, 0, null, 0, 0, null, 0, 0, null, null, 0, 0, 0, "", "", "", "", "", "", null, 0, 0, 0, 0, 0, null, null, null, "rgba(32,33,36,1)", "rgba(255,255,255,1)", 0, 0, 1, null, null, 1, 0, 0], ["%1$s (default)", "Brand account", 0, "%1$s (delegated)", 1, null, 83, "https://www.google.com/webhp?authuser=$authuser", null, null, null, 1, "https://accounts.google.com/ListAccounts?listPages=0\u0026authuser=0\u0026pid=538\u0026gpsia=1\u0026source=ogb\u0026atic=1\u0026mo=1\u0026mn=1\u0026hl=en\u0026ts=157", 0, "dashboard", null, null, null, null, "Profile", "", 0, null, "Signed out", "https://accounts.google.com/AccountChooser?source=ogb\u0026continue=$continue\u0026Email=$email\u0026ec=GAhAmgQ", "https://accounts.google.com/RemoveLocalAccount?source=ogb", "Remove", "Sign in", 0, 1, 1, 0, 1, 1, 0, null, null, null, "Session expired", null, null, null, "Visitor", null, "Default", "Delegated", "Sign out of all accounts", 1, null, null, 0, null, null, "myaccount.google.com", "https", 0, 1, 0], null, ["1", "gci_91f30755d6a6b787dcc2a4062e6e9824.js", "googleapis.client:gapi.iframes", "0", "en"], null, null, null, null, ["m;/_/scs/abc-static/_/js/k=gapi.gapi.en.hh2Jqle7bK0.O/d=1/rs=AHpOoo-jeiq7uVLkyqJvSohFtUkaGjEuyg/m=__features__", "https://apis.google.com", "", "", "1", "", null, 1, "es_plusone_gc_20230704.0_p0", "en", null, 0], [0.009999999776482582, "by", "538", [null, "", "0", null, 1, 5184000, null, null, "", null, null, null, null, null, 0, null, 0, null, 1, 0, 0, 0, null, null, 0, 0, null, 0, 0, 0, 0, 0], null, null, null, 0, null, null, ["5061451", "google\\.(com|ru|ca|by|kz|com\\.mx|com\\.tr)$", 1]], [1, 1, null, 40400, 538, "BLR", "en", "556625501.0", 8, 0.009999999776482582, 1, 0, null, null, null, null, "3700949,3701166,3701168", null, null, null, "1qDgZPKIEoOD9u8Plt2G4AI", 0, 0, 0, null, 2, 5, "en", 38, 0, 0, 1, 1, 1], [[null, null, null, "https://www.gstatic.com/og/_/js/k=og.qtm.en_US.qYFIEIkCIVI.2019.O/rt=j/m=qabr,qgl,q_dnp,qcwid,qbg,qbd,qapid,qald,qrcd,q_dg/exm=qaaw,qadd,qaid,qein,qhaw,qhba,qhbr,qhch,qhga,qhid,qhin/d=1/ed=1/rs=AA2YrTsgd_ypzHoy2JPJv2iswMZ51SEckw"], [null, null, null, "https://www.gstatic.com/og/_/ss/k=og.qtm.lyzWpsGgyY4.L.W.O/m=qcwid/excm=qaaw,qadd,qaid,qein,qhaw,qhba,qhbr,qhch,qhga,qhid,qhin/d=1/ed=1/ct=zgms/rs=AA2YrTuGs_dsg3deeYWmrd2SeOOCbFjXog"]], null, null, null, [[[null, null, [null, null, null, "https://ogs.google.com/u/0/widget/app?awwd=1\u0026gm3=1"], 0, 470, 370, 49, 4, 1, 0, 0, 63, 64, 8000, "https://www.google.by/intl/en/about/products", 67, 1, 69, null, 1, 70, "Can't seem to load the app launcher right now. Try again or go to the %1$sGoogle Products%2$s page.", 3, 0, 0, 74, 4000, null, null, null, null, null, null, null, "/widget/app", null, null, null, null, null, null, null, 0], [null, null, [null, null, null, "https://ogs.google.com/u/0/widget/account?amf=1\u0026amb=1\u0026sea=1"], 0, 414, 436, 49, 4, 1, 0, 0, 65, 66, 8000, "https://accounts.google.com/SignOutOptions?hl=en\u0026continue=https://www.google.com/%3Fclient%3Dsafari%26channel%3Diphone_bm\u0026ec=GBRAmgQ", 68, 2, null, null, 1, 113, "Something went wrong.%1$s Refresh to try again or %2$schoose another account%3$s.", 3, null, null, 75, 0, null, null, null, null, null, null, null, "/widget/account", ["https", "myaccount.google.com", 0, 32, 83, 0], 0, 0, 1, ["Critical security alert", "Important account alert"], 0, 1, null, 1, 1]], null, null, "1", "538", 1, 0, null, "en", 0, ["https://www.google.com/webhp?authuser=$authuser", "https://accounts.google.com/AddSession?hl=en\u0026continue=https://www.google.com/%3Fclient%3Dsafari%26channel%3Diphone_bm\u0026ec=GAlAmgQ", "https://accounts.google.com/Logout?hl=en\u0026continue=https://www.google.com/%3Fclient%3Dsafari%26channel%3Diphone_bm\u0026timeStmp=1692442838\u0026secTok=.AG5fkS_uQFrOpoXpbHZJsSzMOrt60PGNTA\u0026ec=GAdAmgQ", "https://accounts.google.com/ListAccounts?listPages=0\u0026authuser=0\u0026pid=538\u0026gpsia=1\u0026source=ogb\u0026atic=1\u0026mo=1\u0026mn=1\u0026hl=en\u0026ts=157", 0, 0, "", 0, 0, null, 0, 0, "https://accounts.google.com/ServiceLogin?hl=en\u0026passive=true\u0026continue=https://www.google.com/%3Fclient%3Dsafari%26channel%3Diphone_bm\u0026ec=GAZAmgQ"], 0, 0, 0, null, 0], [300000, "/u/0", "/u/0/_/gog/get", "ADRvXp02u-TDuKsm8jBYKVRnO5N1LNinOuyN_vIucHSvpIRtPuO88zE57XXqVTZast2-bQtCC56D7b-hLYBgBDbTAaeF8m22qw", "https", 0, "aa.google.com", "rt=j\u0026sourceid=538", "", "p_Tq9wZ0x9trjT50lPtgNA", null, 0, 0, null, 0, null, 1, 0, "https://waa-pa.clients6.google.com", "AIzaSyBGb5fGAyC-pRcRU6MUHb__b_vKha71HRE", "/JR8jsAkqotcKsEKhXic", null, 0], [["mousedown", "touchstart", "touchmove", "wheel", "keydown"], 300000], [[null, null, null, "https://accounts.google.com/RotateCookiesPage"], 3, 1000, 1, 1, 3701166]]],
    };
    this.gbar_ = this.gbar_ || {};
    (function(_) {
        var window = this;
        try {
            /*

             Copyright The Closure Library Authors.
             SPDX-License-Identifier: Apache-2.0
            */
            var ha,
                ma,
                pa,
                qa,
                Aa,
                Ba,
                Ca,
                Da,
                Ga,
                Oa,
                Qa,
                Pa,
                Sa,
                Ua,
                Ta,
                Va,
                Wa,
                bb;
            _.aa = function(a, b) {
                if (Error.captureStackTrace)
                    Error.captureStackTrace(this, _.aa);
                else {
                    const c = Error().stack;
                    c && (this.stack = c)
                }
                a && (this.message = String(a));
                void 0 !== b && (this.cause = b)
            };
            _.ba = function() {
                var a = _.p.navigator;
                return a && (a = a.userAgent) ? a : ""
            };
            ha = function(a) {
                return da ? ea ? ea.brands.some(({brand: b}) => b && -1 != b.indexOf(a)) : !1 : !1
            };
            _.t = function(a) {
                return -1 != _.ba().indexOf(a)
            };
            _.ia = function() {
                return da ? !!ea && 0 < ea.brands.length : !1
            };
            _.ja = function() {
                return _.ia() ? !1 : _.t("Opera")
            };
            _.ka = function() {
                return _.ia() ? !1 : _.t("Trident") || _.t("MSIE")
            };
            _.la = function() {
                return _.t("Firefox") || _.t("FxiOS")
            };
            _.na = function() {
                return _.t("Safari") && !(ma() || (_.ia() ? 0 : _.t("Coast")) || _.ja() || (_.ia() ? 0 : _.t("Edge")) || (_.ia() ? ha("Microsoft Edge") : _.t("Edg/")) || (_.ia() ? ha("Opera") : _.t("OPR")) || _.la() || _.t("Silk") || _.t("Android"))
            };
            ma = function() {
                return _.ia() ? ha("Chromium") : (_.t("Chrome") || _.t("CriOS")) && !(_.ia() ? 0 : _.t("Edge")) || _.t("Silk")
            };
            _.oa = function() {
                return _.t("Android") && !(ma() || _.la() || _.ja() || _.t("Silk"))
            };
            pa = function() {
                return da ? !!ea && !!ea.platform : !1
            };
            qa = function() {
                return _.t("iPhone") && !_.t("iPod") && !_.t("iPad")
            };
            _.ra = function() {
                return qa() || _.t("iPad") || _.t("iPod")
            };
            _.sa = function() {
                return pa() ? "macOS" === ea.platform : _.t("Macintosh")
            };
            _.ua = function(a, b) {
                return 0 <= _.ta(a, b)
            };
            _.va = function(a) {
                let b = "",
                    c = 0;
                const d = a.length - 10240;
                for (; c < d;)
                    b += String.fromCharCode.apply(null, a.subarray(c, c += 10240));
                b += String.fromCharCode.apply(null, c ? a.subarray(c) : a);
                return btoa(b)
            };
            _.wa = function(a) {
                return null != a && a instanceof Uint8Array
            };
            _.xa = function(a) {
                return Array.prototype.slice.call(a)
            };
            _.ya = function(a) {
                const b = a[_.u] | 0;
                1 !== (b & 1) && (Object.isFrozen(a) && (a = _.xa(a)), a[_.u] = b | 1);
                return a
            };
            _.za = function(a) {
                a[_.u] |= 1;
                return a
            };
            Aa = function(a, b) {
                b[_.u] = (a | 0) & -255
            };
            Ba = function(a, b) {
                b[_.u] = (a | 34) & -221
            };
            Ca = function(a) {
                a = a >> 10 & 1023;
                return 0 === a ? 536870912 : a
            };
            Da = function(a) {
                return null !== a && "object" === typeof a && !Array.isArray(a) && a.constructor === Object
            };
            _.Ea = function(a) {
                if (a & 2)
                    throw Error();
            };
            Ga = function(a, b) {
                (b = _.Fa ? b[_.Fa] : void 0) && (a[_.Fa] = _.xa(b))
            };
            _.Ha = function(a) {
                if ("number" !== typeof a)
                    throw Error();
                return a
            };
            _.Ia = function(a) {
                if (null != a && "string" !== typeof a)
                    throw Error();
                return a
            };
            _.Ja = function(a) {
                return null == a || "string" === typeof a ? a : void 0
            };
            _.La = function(a, b, c) {
                var d = !1;
                if (null != a && "object" === typeof a && !(d = Array.isArray(a)) && a.qe === Ka)
                    return a;
                if (d) {
                    var e = d = a[_.u] | 0;
                    0 === e && (e |= c & 32);
                    e |= c & 2;
                    e !== d && (a[_.u] = e);
                    return new b(a)
                }
            };
            _.Na = function(a, b) {
                Ma = b;
                a = new a(b);
                Ma = void 0;
                return a
            };
            Oa = function(a, b, c) {
                const d = 1023 + b,
                    e = a.length;
                for (let f = d; f < e; f++) {
                    const g = a[f];
                    null != g && g !== c && (c[f - b] = g)
                }
                a.length = d + 1;
                a[d] = c
            };
            Qa = function(a, b) {
                return Pa(b)
            };
            Pa = function(a) {
                switch (typeof a) {
                case "number":
                    return isFinite(a) ? a : String(a);
                case "boolean":
                    return a ? 1 : 0;
                case "object":
                    if (a && !Array.isArray(a)) {
                        if (_.wa(a))
                            return _.va(a);
                        if ("function" == typeof _.Ra && a instanceof _.Ra)
                            return a.hg()
                    }
                }
                return a
            };
            Sa = function(a, b, c) {
                const d = _.xa(a);
                var e = d.length;
                const f = b & 256 ? d[e - 1] : void 0;
                e += f ? -1 : 0;
                for (b = b & 512 ? 1 : 0; b < e; b++)
                    d[b] = c(d[b]);
                if (f) {
                    b = d[b] = {};
                    for (const g in f)
                        b[g] = c(f[g])
                }
                Ga(d, a);
                return d
            };
            Ua = function(a, b, c, d, e, f) {
                if (null != a) {
                    if (Array.isArray(a))
                        a = e && 0 == a.length && (a[_.u] | 0) & 1 ? void 0 : f && (a[_.u] | 0) & 2 ? a : Ta(a, b, c, void 0 !== d, e, f);
                    else if (Da(a)) {
                        const g = {};
                        for (let h in a)
                            g[h] = Ua(a[h], b, c, d, e, f);
                        a = g
                    } else
                        a = b(a, d);
                    return a
                }
            };
            Ta = function(a, b, c, d, e, f) {
                const g = d || c ? a[_.u] | 0 : 0;
                d = d ? !!(g & 32) : void 0;
                const h = _.xa(a);
                for (let k = 0; k < h.length; k++)
                    h[k] = Ua(h[k], b, c, d, e, f);
                c && (Ga(h, a), c(g, h));
                return h
            };
            Va = function(a) {
                return a.qe === Ka ? a.toJSON() : Pa(a)
            };
            Wa = function(a, b, c=Ba) {
                if (null != a) {
                    if (a instanceof Uint8Array)
                        return b ? a : new Uint8Array(a);
                    if (Array.isArray(a)) {
                        const d = a[_.u] | 0;
                        return d & 2 ? a : !b || d & 68 || !(d & 32 || 0 === d) ? Ta(a, Wa, d & 4 ? Ba : c, !0, !1, !0) : (a[_.u] = d | 34, a)
                    }
                    a.qe === Ka && (b = a.na, c = b[_.u], a = c & 2 ? a : _.Na(a.constructor, _.Xa(b, c, !0)));
                    return a
                }
            };
            _.Xa = function(a, b, c) {
                const d = c || b & 2 ? Ba : Aa,
                    e = !!(b & 32);
                a = Sa(a, b, f => Wa(f, e, d));
                a[_.u] = a[_.u] | 32 | (c ? 2 : 0);
                return a
            };
            _.Ya = function(a) {
                const b = a.na,
                    c = b[_.u];
                return c & 2 ? _.Na(a.constructor, _.Xa(b, c, !1)) : a
            };
            _.Za = function(a, b, c, d, e) {
                var f = Ca(b);
                if (c >= f || e) {
                    e = b;
                    if (b & 256)
                        f = a[a.length - 1];
                    else {
                        if (null == d)
                            return;
                        f = a[f + (+!!(b & 512) - 1)] = {};
                        e |= 256
                    }
                    f[c] = d;
                    e !== b && (a[_.u] = e)
                } else
                    a[c + (+!!(b & 512) - 1)] = d,
                    b & 256 && (a = a[a.length - 1], c in a && delete a[c])
            };
            _.$a = function(a, b) {
                return null != a ? a : b
            };
            bb = function(a, b, c) {
                var d = a.constructor.ya,
                    e = Ca((c ? a.na : b)[_.u]),
                    f = !1;
                if (d) {
                    if (!c) {
                        b = _.xa(b);
                        var g;
                        if (b.length && Da(g = b[b.length - 1]))
                            for (f = 0; f < d.length; f++)
                                if (d[f] >= e) {
                                    Object.assign(b[b.length - 1] = {}, g);
                                    break
                                }
                        f = !0
                    }
                    e = b;
                    c = !c;
                    g = a.na[_.u];
                    a = Ca(g);
                    g = +!!(g & 512) - 1;
                    var h;
                    for (let N = 0; N < d.length; N++) {
                        var k = d[N];
                        if (k < a) {
                            k += g;
                            var m = e[k];
                            null == m ? e[k] = c ? _.ab : _.za([]) : c && m !== _.ab && _.ya(m)
                        } else {
                            if (!h) {
                                var n = void 0;
                                e.length && Da(n = e[e.length - 1]) ? h = n : e.push(h = {})
                            }
                            m = h[k];
                            null == h[k] ? h[k] = c ? _.ab : _.za([]) : c && m !== _.ab && _.ya(m)
                        }
                    }
                }
                d =
                b.length;
                if (!d)
                    return b;
                let q,
                    v;
                if (Da(h = b[d - 1])) {
                    a:
                    {
                        var r = h;
                        n = {};
                        e = !1;
                        for (let N in r)
                            c = r[N],
                            Array.isArray(c) && c != c && (e = !0),
                            null != c ? n[N] = c : e = !0;
                        if (e) {
                            for (let N in n) {
                                r = n;
                                break a
                            }
                            r = null
                        }
                    }r != h && (q = !0);
                    d--
                }
                for (; 0 < d; d--) {
                    h = b[d - 1];
                    if (null != h)
                        break;
                    v = !0
                }
                if (!q && !v)
                    return b;
                var z;
                f ? z = b : z = Array.prototype.slice.call(b, 0, d);
                b = z;
                f && (b.length = d);
                r && b.push(r);
                return b
            };
            _.w = function(a, b) {
                return null != a ? !!a : !!b
            };
            _.x = function(a, b) {
                void 0 == b && (b = "");
                return null != a ? a : b
            };
            _.cb = function(a, b) {
                void 0 == b && (b = 0);
                return null != a ? a : b
            };
            _.eb = function(a, b) {
                let c,
                    d;
                for (let e = 1; e < arguments.length; e++) {
                    d = arguments[e];
                    for (c in d)
                        a[c] = d[c];
                    for (let f = 0; f < db.length; f++)
                        c = db[f],
                        Object.prototype.hasOwnProperty.call(d, c) && (a[c] = d[c])
                }
            };
            var jb,
                kb;
            _.fb = _.fb || {};
            _.p = this || self;
            _.gb = function(a, b) {
                a = a.split(".");
                b = b || _.p;
                for (var c = 0; c < a.length; c++)
                    if (b = b[a[c]], null == b)
                        return null;
                return b
            };
            _.hb = function(a) {
                var b = typeof a;
                return "object" == b && null != a || "function" == b
            };
            _.ib = "closure_uid_" + (1E9 * Math.random() >>> 0);
            jb = function(a, b, c) {
                return a.call.apply(a.bind, arguments)
            };
            kb = function(a, b, c) {
                if (!a)
                    throw Error();
                if (2 < arguments.length) {
                    var d = Array.prototype.slice.call(arguments, 2);
                    return function() {
                        var e = Array.prototype.slice.call(arguments);
                        Array.prototype.unshift.apply(e, d);
                        return a.apply(b, e)
                    }
                }
                return function() {
                    return a.apply(b, arguments)
                }
            };
            _.y = function(a, b, c) {
                _.y = Function.prototype.bind && -1 != Function.prototype.bind.toString().indexOf("native code") ? jb : kb;
                return _.y.apply(null, arguments)
            };
            _.A = function(a, b) {
                a = a.split(".");
                var c = _.p;
                a[0] in c || "undefined" == typeof c.execScript || c.execScript("var " + a[0]);
                for (var d; a.length && (d = a.shift());)
                    a.length || void 0 === b ? c[d] && c[d] !== Object.prototype[d] ? c = c[d] : c = c[d] = {} : c[d] = b
            };
            _.B = function(a, b) {
                function c() {}
                c.prototype = b.prototype;
                a.V = b.prototype;
                a.prototype = new c;
                a.prototype.constructor = a;
                a.xi = function(d, e, f) {
                    for (var g = Array(arguments.length - 2), h = 2; h < arguments.length; h++)
                        g[h - 2] = arguments[h];
                    return b.prototype[e].apply(d, g)
                }
            };
            _.B(_.aa, Error);
            _.aa.prototype.name = "CustomError";
            _.lb = String.prototype.trim ? function(a) {
                return a.trim()
            } : function(a) {
                return /^[\s\xa0]*([\s\S]*?)[\s\xa0]*$/.exec(a)[1]
            };
            var da,
                mb = _.gb("WIZ_global_data.oxN3nb"),
                nb = mb && mb[610401301];
            da = null != nb ? nb : !1;
            var ea,
                ob = _.p.navigator;
            ea = ob ? ob.userAgentData || null : null;
            _.ta = function(a, b) {
                return Array.prototype.indexOf.call(a, b, void 0)
            };
            _.pb = function(a, b, c) {
                Array.prototype.forEach.call(a, b, c)
            };
            _.qb = function(a) {
                _.qb[" "](a);
                return a
            };
            _.qb[" "] = function() {};
            var Db,
                Eb,
                Jb;
            _.rb = _.ja();
            _.C = _.ka();
            _.sb = _.t("Edge");
            _.tb = _.sb || _.C;
            _.ub = _.t("Gecko") && !(-1 != _.ba().toLowerCase().indexOf("webkit") && !_.t("Edge")) && !(_.t("Trident") || _.t("MSIE")) && !_.t("Edge");
            _.vb = -1 != _.ba().toLowerCase().indexOf("webkit") && !_.t("Edge");
            _.wb = _.sa();
            _.xb = pa() ? "Windows" === ea.platform : _.t("Windows");
            _.yb = pa() ? "Android" === ea.platform : _.t("Android");
            _.zb = qa();
            _.Ab = _.t("iPad");
            _.Bb = _.t("iPod");
            _.Cb = _.ra();
            Db = function() {
                var a = _.p.document;
                return a ? a.documentMode : void 0
            };
            a:
            {
                var Fb = "",
                    Gb = function() {
                        var a = _.ba();
                        if (_.ub)
                            return /rv:([^\);]+)(\)|;)/.exec(a);
                        if (_.sb)
                            return /Edge\/([\d\.]+)/.exec(a);
                        if (_.C)
                            return /\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a);
                        if (_.vb)
                            return /WebKit\/(\S+)/.exec(a);
                        if (_.rb)
                            return /(?:Version)[ \/]?(\S+)/.exec(a)
                    }();
                Gb && (Fb = Gb ? Gb[1] : "");
                if (_.C) {
                    var Hb = Db();
                    if (null != Hb && Hb > parseFloat(Fb)) {
                        Eb = String(Hb);
                        break a
                    }
                }
                Eb = Fb
            }_.Ib = Eb;
            if (_.p.document && _.C) {
                var Kb = Db();
                Jb = Kb ? Kb : parseInt(_.Ib, 10) || void 0
            } else
                Jb = void 0;
            _.Lb = Jb;
            _.Mb = _.la();
            _.Nb = qa() || _.t("iPod");
            _.Ob = _.t("iPad");
            _.Pb = _.oa();
            _.Qb = ma();
            _.Rb = _.na() && !_.ra();
            _.Sb = "undefined" !== typeof TextDecoder;
            _.Tb = "undefined" !== typeof TextEncoder;
            _.u = Symbol();
            var Ka,
                Ub,
                Vb;
            Ka = {};
            Vb = [];
            Vb[_.u] = 39;
            _.ab = Object.freeze(Vb);
            var Ma;
            _.D = function(a, b) {
                a = a.na;
                return _.Wb(a, a[_.u], b)
            };
            _.Wb = function(a, b, c, d) {
                if (-1 === c)
                    return null;
                if (c >= Ca(b)) {
                    if (b & 256)
                        return a[a.length - 1][c]
                } else {
                    var e = a.length;
                    if (d && b & 256 && (d = a[e - 1][c], null != d))
                        return d;
                    b = c + (+!!(b & 512) - 1);
                    if (b < e)
                        return a[b]
                }
            };
            _.E = function(a, b, c, d) {
                const e = a.na,
                    f = e[_.u];
                _.Ea(f);
                _.Za(e, f, b, c, d);
                return a
            };
            _.F = function(a, b) {
                a = _.D(a, b);
                return null == a ? a : "boolean" !== typeof a && "number" !== typeof a ? void 0 : !!a
            };
            _.Xb = function(a, b, c, d) {
                a = a.na;
                const e = a[_.u],
                    f = _.Wb(a, e, c, d);
                b = _.La(f, b, e);
                b !== f && null != b && _.Za(a, e, c, b, d);
                return b
            };
            _.G = function(a, b, c, d=!1) {
                b = _.Xb(a, b, c, d);
                if (null == b)
                    return b;
                a = a.na;
                const e = a[_.u];
                if (!(e & 2)) {
                    const f = _.Ya(b);
                    f !== b && (b = f, _.Za(a, e, c, b, d))
                }
                return b
            };
            _.H = function(a, b, c) {
                null == c && (c = void 0);
                return _.E(a, b, c)
            };
            _.I = function(a, b, c) {
                return _.E(a, b, null == c ? c : _.Ha(c))
            };
            _.J = function(a, b) {
                return _.Ja(_.D(a, b))
            };
            _.K = function(a, b, c) {
                return _.E(a, b, _.Ia(c))
            };
            _.L = function(a, b) {
                return _.$a(_.F(a, b), !1)
            };
            _.Yb = function(a, b, c=0) {
                a = a.na;
                const d = a[_.u],
                    e = _.Wb(a, d, b);
                var f = null == e ? e : "number" === typeof e || "NaN" === e || "Infinity" === e || "-Infinity" === e ? Number(e) : void 0;
                null != f && f !== e && _.Za(a, d, b, f);
                return _.$a(f, c)
            };
            _.M = function(a, b) {
                return _.$a(_.J(a, b), "")
            };
            _.O = class {
                constructor(a, b, c)
                {
                    a:
                    {
                        null == a && (a = Ma);
                        Ma = void 0;
                        if (null == a) {
                            var d = 96;
                            c ? (a = [c], d |= 512) : a = [];
                            b && (d = d & -1047553 | (b & 1023) << 10)
                        } else {
                            if (!Array.isArray(a))
                                throw Error();
                            d = a[_.u] | 0;
                            if (d & 64)
                                break a;
                            d |= 64;
                            if (c && (d |= 512, c !== a[0]))
                                throw Error();
                            b:
                            {
                                c = a;
                                var e = c.length;
                                if (e) {
                                    const g = e - 1;
                                    var f = c[g];
                                    if (Da(f)) {
                                        d |= 256;
                                        b = +!!(d & 512) - 1;
                                        e = g - b;
                                        1024 <= e && (Oa(c, b, f), e = 1023);
                                        d = d & -1047553 | (e & 1023) << 10;
                                        break b
                                    }
                                }
                                b && (f = +!!(d & 512) - 1, b = Math.max(b, e - f), 1024 < b && (Oa(c, f, {}), d |= 256, b = 1023), d = d & -1047553 | (b & 1023) << 10)
                            }
                        }
                        a[_.u] =
                        d
                    }this.na = a
                }
                toJSON()
                {
                    if (Ub)
                        var a = bb(this, this.na, !1);
                    else
                        a = Ta(this.na, Va, void 0, void 0, !1, !1),
                        a = bb(this, a, !0);
                    return a
                }
                Ha()
                {
                    Ub = !0;
                    try {
                        return JSON.stringify(this.toJSON(), Qa)
                    } finally {
                        Ub = !1
                    }
                }
                Yb()
                {
                    return !!((this.na[_.u] | 0) & 2)
                }
            }
            ;
            _.O.prototype.qe = Ka;
            _.O.prototype.toString = function() {
                return bb(this, this.na, !1).toString()
            };
            _.Zb = Symbol();
            _.$b = Symbol();
            _.ac = Symbol();
            _.bc = Symbol();
            var cc = class  extends _.O{
                constructor()
                {
                    super()
                }
            }
            ;
            _.dc = class  extends _.O{
                constructor()
                {
                    super()
                }
                xd(a)
                {
                    return _.I(this, 3, a)
                }
            }
            ;
            var ec = class  extends _.O{
                constructor(a)
                {
                    super(a)
                }
            }
            ;
            var fc = class  extends _.O{
                constructor(a)
                {
                    super(a)
                }
                Rc(a)
                {
                    return _.K(this, 24, a)
                }
            }
            ;
            _.gc = class  extends _.O{
                constructor(a)
                {
                    super(a)
                }
            }
            ;
            _.hc = function() {
                this.Ia = this.Ia;
                this.ma = this.ma
            };
            _.hc.prototype.Ia = !1;
            _.hc.prototype.isDisposed = function() {
                return this.Ia
            };
            _.hc.prototype.oa = function() {
                this.Ia || (this.Ia = !0, this.N())
            };
            _.hc.prototype.N = function() {
                if (this.ma)
                    for (; this.ma.length;)
                        this.ma.shift()()
            };
            var ic = class  extends _.hc{
                constructor()
                {
                    var a = window;
                    super();
                    this.o = a;
                    this.i = [];
                    this.j = {}
                }
                resolve(a)
                {
                    var b = this.o;
                    a = a.split(".");
                    for (var c = a.length, d = 0; d < c; ++d)
                        if (b[a[d]])
                            b = b[a[d]];
                        else
                            return null;
                    return b instanceof Function ? b : null
                }
                Jc()
                {
                    for (var a = this.i.length, b = this.i, c = [], d = 0; d < a; ++d) {
                        var e = b[d].i(),
                            f = this.resolve(e);
                        if (f && f != this.j[e])
                            try {
                                b[d].Jc(f)
                            } catch (g) {}
                        else
                            c.push(b[d])
                    }
                    this.i = c.concat(b.slice(a))
                }
            }
            ;
            var kc = class  extends _.hc{
                constructor()
                {
                    var a = _.jc;
                    super();
                    this.o = a;
                    this.v = this.i = null;
                    this.s = 0;
                    this.B = {};
                    this.j = !1;
                    a = window.navigator.userAgent;
                    0 <= a.indexOf("MSIE") && 0 <= a.indexOf("Trident") && (a = /\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a)) && a[1] && 9 > parseFloat(a[1]) && (this.j = !0)
                }
                A(a, b)
                {
                    this.i = b;
                    this.v = a;
                    b.preventDefault ? b.preventDefault() : b.returnValue = !1
                }
            }
            ;
            _.lc = class  extends _.O{
                constructor(a)
                {
                    super(a)
                }
            }
            ;
            var mc = class  extends _.O{
                constructor(a)
                {
                    super(a)
                }
            }
            ;
            var oc;
            _.nc = function(a, b) {
                if (a.i) {
                    const c = new cc;
                    _.K(c, 1, b.message);
                    _.K(c, 2, b.stack);
                    _.I(c, 3, b.lineNumber);
                    _.E(c, 5, 1);
                    b = new _.dc;
                    _.H(b, 40, c);
                    a.i.log(98, b)
                }
            };
            oc = class {
                constructor()
                {
                    this.i = null
                }
                log(a)
                {
                    _.nc(this, a)
                }
            }
            ;
            var rc,
                sc,
                vc,
                xc;
            _.pc = class {
                constructor(a)
                {
                    this.i = a
                }
                toString()
                {
                    return this.i.toString()
                }
            }
            ;
            _.pc.prototype.Bb = !0;
            _.pc.prototype.ob = function() {
                return this.i.toString()
            };
            _.qc = function(a) {
                return a instanceof _.pc && a.constructor === _.pc ? a.i : "type_error:SafeUrl"
            };
            rc = /^data:(.*);base64,[a-z0-9+\/]+=*$/i;
            sc = /^(?:(?:https?|mailto|ftp):|[^:/?#]*(?:[/?#]|$))/i;
            _.uc = function(a) {
                if (a instanceof _.pc)
                    return a;
                a = "object" == typeof a && a.Bb ? a.ob() : String(a);
                sc.test(a) ? a = _.tc(a) : (a = String(a).replace(/(%0A|%0D)/g, ""), a = a.match(rc) ? _.tc(a) : null);
                return a
            };
            try {
                new URL("s://g"),
                vc = !0
            } catch (a) {
                vc = !1
            }
            _.wc = vc;
            xc = {};
            _.tc = function(a) {
                return new _.pc(a, xc)
            };
            _.yc = _.tc("about:invalid#zClosurez");
            var zc,
                Dc,
                Cc;
            _.Ac = function(a) {
                let b;
                b = window.google && window.google.logUrl ? "" : "https://www.google.com";
                b += "/gen_204?use_corp=on&";
                b += a.Ha(2040 - b.length);
                zc(_.uc(b) || _.yc)
            };
            zc = function(a) {
                var b = new Image,
                    c = Cc;
                b.onerror = b.onload = b.onabort = function() {
                    c in Dc && delete Dc[c]
                };
                Dc[Cc++] = b;
                b.src = _.qc(a)
            };
            Dc = [];
            Cc = 0;
            _.Ec = class {
                constructor()
                {
                    this.data = {}
                }
                Ha(a)
                {
                    var b = [],
                        c;
                    for (c in this.data)
                        b.push(encodeURIComponent(c) + "=" + encodeURIComponent(String(this.data[c])));
                    return ("atyp=i&zx=" + (new Date).getTime() + "&" + b.join("&")).substr(0, a)
                }
            }
            ;
            var Fc = class  extends _.Ec{
                constructor(a)
                {
                    super();
                    var b = _.G(a, ec, 8) || new ec;
                    window.google && window.google.kEI && (this.data.ei = window.google.kEI);
                    this.data.sei = _.x(_.J(a, 10));
                    this.data.ogf = _.x(_.J(b, 3));
                    this.data.ogrp = (window.google && window.google.sn ? !/.*hp$/.test(window.google.sn) : _.w(_.F(a, 7))) ? "1" : "";
                    this.data.ogv = _.x(_.J(b, 6)) + "." + _.x(_.J(b, 7));
                    this.data.ogd = _.x(_.J(a, 21));
                    this.data.ogc = _.x(_.J(a, 20));
                    this.data.ogl = _.x(_.J(a, 5));
                    this.data.oggv = "quantum:gapiBuildLabel"
                }
            }
            ;
            var db = "constructor hasOwnProperty isPrototypeOf propertyIsEnumerable toLocaleString toString valueOf".split(" ");
            var Gc = [1, 2, 3, 4, 5, 6, 9, 10, 11, 13, 14, 28, 29, 30, 34, 35, 37, 38, 39, 40, 42, 43, 48, 49, 50, 51, 52, 53, 62, 500],
                Ic = function(a) {
                    if (!Hc) {
                        Hc = {};
                        for (var b = 0; b < Gc.length; b++)
                            Hc[Gc[b]] = !0
                    }
                    return !!Hc[a]
                },
                Jc = function(a) {
                    a = String(a);
                    return a.replace(".", "%2E").replace(",", "%2C")
                },
                Kc = class  extends Fc{
                    constructor(a, b, c, d, e)
                    {
                        super(a);
                        _.eb(this.data, {
                            oge: c,
                            ogex: _.x(_.J(a, 9)),
                            ogp: _.x(_.J(a, 6)),
                            ogsr: Math.round(1 / (Ic(c) ? _.cb(_.Yb(b, 3, 1)) : _.cb(_.Yb(b, 2, 1E-4)))),
                            ogus: d
                        });
                        if (e) {
                            "ogw" in e && (this.data.ogw = e.ogw, delete e.ogw);
                            "ved" in e &&
                            (this.data.ved = e.ved, delete e.ved);
                            a = [];
                            for (var f in e)
                                0 != a.length && a.push(","),
                                a.push(Jc(f)),
                                a.push("."),
                                a.push(Jc(e[f]));
                            e = a.join("");
                            "" != e && (this.data.ogad = e)
                        }
                    }
                }
                ,
                Hc = null;
            var Lc = class  extends _.O{
                constructor(a)
                {
                    super(a)
                }
            }
            ;
            var Pc = class {
                constructor()
                {
                    var a = Mc,
                        b = Nc,
                        c = Oc;
                    this.i = a;
                    this.s = b;
                    this.o = _.cb(_.Yb(a, 2, 1E-4), 1E-4);
                    this.B = _.cb(_.Yb(a, 3, 1), 1);
                    b = Math.random();
                    this.j = _.w(_.F(a, 1)) && b < this.o;
                    this.v = _.w(_.F(a, 1)) && b < this.B;
                    a = 0;
                    _.w(_.F(c, 1)) && (a |= 1);
                    _.w(_.F(c, 2)) && (a |= 2);
                    _.w(_.F(c, 3)) && (a |= 4);
                    this.A = a
                }
                log(a, b)
                {
                    try {
                        if (Ic(a) ? this.v : this.j) {
                            const c = new Kc(this.s, this.i, a, this.A, b);
                            _.Ac(c)
                        }
                    } catch (c) {}
                }
            }
            ;
            var Rc;
            _.Qc = function(a) {
                if (0 < a.j.length) {
                    var b = void 0 !== a.ua,
                        c = void 0 !== a.i;
                    if (b || c) {
                        b = b ? a.o : a.s;
                        c = a.j;
                        a.j = [];
                        try {
                            _.pb(c, b, a)
                        } catch (d) {
                            console.error(d)
                        }
                    }
                }
            };
            _.Sc = class {
                constructor(a)
                {
                    this.ua = a;
                    this.i = void 0;
                    this.j = []
                }
                then(a, b, c)
                {
                    this.j.push(new Rc(a, b, c));
                    _.Qc(this)
                }
                resolve(a)
                {
                    if (void 0 !== this.ua || void 0 !== this.i)
                        throw Error("y");
                    this.ua = a;
                    _.Qc(this)
                }
                o(a)
                {
                    a.j && a.j.call(a.i, this.ua)
                }
                s(a)
                {
                    a.o && a.o.call(a.i, this.i)
                }
            }
            ;
            Rc = class {
                constructor(a, b, c)
                {
                    this.j = a;
                    this.o = b;
                    this.i = c
                }
            }
            ;
            _.Tc = a => {
                var b = "zc";
                if (a.zc && a.hasOwnProperty(b))
                    return a.zc;
                b = new a;
                return a.zc = b
            };
            _.P = class {
                constructor()
                {
                    this.s = new _.Sc;
                    this.i = new _.Sc;
                    this.C = new _.Sc;
                    this.B = new _.Sc;
                    this.A = new _.Sc;
                    this.v = new _.Sc;
                    this.o = new _.Sc;
                    this.j = new _.Sc;
                    this.G = new _.Sc
                }
                J()
                {
                    return this.s
                }
                L()
                {
                    return this.i
                }
                M()
                {
                    return this.C
                }
                K()
                {
                    return this.B
                }
                Ia()
                {
                    return this.A
                }
                ma()
                {
                    return this.v
                }
                H()
                {
                    return this.o
                }
                F()
                {
                    return this.j
                }
                static i()
                {
                    return _.Tc(_.P)
                }
            }
            ;
            var Yc;
            _.Vc = function() {
                return _.G(_.Uc, fc, 1)
            };
            _.Wc = function() {
                return _.G(_.Uc, _.gc, 5)
            };
            Yc = class  extends _.O{
                constructor()
                {
                    super(Xc)
                }
            }
            ;
            var Xc;
            window.gbar_ && window.gbar_.CONFIG ? Xc = window.gbar_.CONFIG[0] || {} : Xc = [];
            _.Uc = new Yc;
            var Nc,
                Oc,
                Mc;
            _.G(_.Uc, mc, 3) || new mc;
            _.Vc() || new fc;
            _.jc = new oc;
            Nc = _.Vc() || new fc;
            Oc = _.Wc() || new _.gc;
            Mc = _.G(_.Uc, Lc, 4) || new Lc;
            new Pc;
            _.A("gbar_._DumpException", function(a) {
                _.jc ? _.jc.log(a) : console.error(a)
            });
            _.Zc = new kc;
            var ad;
            _.bd = function(a, b) {
                var c = _.$c.i();
                if (a in c.i) {
                    if (c.i[a] != b)
                        throw new ad;
                } else {
                    c.i[a] = b;
                    if (b = c.j[a])
                        for (let d = 0, e = b.length; d < e; d++)
                            b[d].i(c.i, a);
                    delete c.j[a]
                }
            };
            _.$c = class {
                constructor()
                {
                    this.i = {};
                    this.j = {}
                }
                static i()
                {
                    return _.Tc(_.$c)
                }
            }
            ;
            _.dd = class  extends _.aa{
                constructor()
                {
                    super()
                }
            }
            ;
            ad = class  extends _.dd{}
            ;
            _.A("gbar.A", _.Sc);
            _.Sc.prototype.aa = _.Sc.prototype.then;
            _.A("gbar.B", _.P);
            _.P.prototype.ba = _.P.prototype.L;
            _.P.prototype.bb = _.P.prototype.M;
            _.P.prototype.bd = _.P.prototype.Ia;
            _.P.prototype.bf = _.P.prototype.J;
            _.P.prototype.bg = _.P.prototype.K;
            _.P.prototype.bh = _.P.prototype.ma;
            _.P.prototype.bj = _.P.prototype.H;
            _.P.prototype.bk = _.P.prototype.F;
            _.A("gbar.a", _.P.i());
            var ed = new ic;
            _.bd("api", ed);
            var fd = _.Wc() || new _.gc;
            window.__PVT = _.x(_.J(fd, 8));
            _.bd("eq", _.Zc);
        } catch (e) {
            _._DumpException(e)
        }
        try {
            _.gd = class  extends _.O{
                constructor(a)
                {
                    super(a)
                }
            }
            ;
        } catch (e) {
            _._DumpException(e)
        }
        try {
            var hd = class  extends _.O{
                constructor()
                {
                    super()
                }
            }
            ;
            var id = class  extends _.hc{
                constructor()
                {
                    super();
                    this.j = [];
                    this.i = []
                }
                o(a, b)
                {
                    this.j.push({
                        features: a,
                        options: b
                    })
                }
                init(a, b, c)
                {
                    window.gapi = {};
                    var d = window.___jsl = {};
                    d.h = _.x(_.J(a, 1));
                    null != _.F(a, 12) && (d.dpo = _.w(_.L(a, 12)));
                    d.ms = _.x(_.J(a, 2));
                    d.m = _.x(_.J(a, 3));
                    d.l = [];
                    _.M(b, 1) && (a = _.J(b, 3)) && this.i.push(a);
                    _.M(c, 1) && (c = _.J(c, 2)) && this.i.push(c);
                    _.A("gapi.load", (0, _.y)(this.o, this));
                    return this
                }
            }
            ;
            var jd = _.G(_.Uc, _.lc, 14);
            if (jd) {
                var kd = _.G(_.Uc, _.gd, 9) || new _.gd,
                    ld = new hd,
                    md = new id;
                md.init(jd, kd, ld);
                _.bd("gs", md)
            }
            ;
        } catch (e) {
            _._DumpException(e)
        }
    })(this.gbar_);
    // Google Inc.
    </script>
    <style>
    h1, ol, ul, li, button {
        margin: 0;
        padding:0
    }

    button {
        border: none;
        background:none
    }

    body {
        background:#fff
    }

    body, input, button {
        font-size: 14px;
        font-family: arial, sans-serif;
        color:#202124
    }

    a {
        color: #1a0dab;
        text-decoration:none
    }

    a:hover, a:active {
        text-decoration:underline
    }

    a:visited {
        color:#681da8
    }

    html, body {
        min-width:400px
    }

    body, html {
        height: 100%;
        margin: 0;
        padding:0
    }

    .gb_8a:not(.gb_ad) {
        font: 13px/27px Roboto, Arial, sans-serif;
        z-index:986
    }

    @-webkit-keyframes gb__a {
        0% {
            opacity:0
        }

        50% {
            opacity:1
        }
    }

    @keyframes gb__a {
        0% {
            opacity:0
        }

        50% {
            opacity:1
        }
    }

    a.gb_pa {
        border: none;
        color: #4285f4;
        cursor: default;
        font-weight: bold;
        outline: none;
        position: relative;
        text-align: center;
        text-decoration: none;
        text-transform: uppercase;
        white-space: nowrap;
        -webkit-user-select:none
    }

    a.gb_pa:hover:after, a.gb_pa:focus:after {
        background-color: rgba(0, 0, 0, .12);
        content: "";
        height: 100%;
        left: 0;
        position: absolute;
        top: 0;
        width:100%
    }

    a.gb_pa:hover, a.gb_pa:focus {
        text-decoration:none
    }

    a.gb_pa:active {
        background-color: rgba(153, 153, 153, .4);
        text-decoration:none
    }

    a.gb_qa {
        background-color: #4285f4;
        color:#fff
    }

    a.gb_qa:active {
        background-color:#0043b2
    }

    .gb_ra {
        box-shadow:0 1px 1px rgba(0, 0, 0, .16)
    }

    .gb_pa, .gb_qa, .gb_sa, .gb_ta {
        display: inline-block;
        line-height: 28px;
        padding: 0 12px;
        border-radius:2px
    }

    .gb_sa {
        background: #f8f8f8;
        border:1px solid #c6c6c6
    }

    .gb_ta {
        background:#f8f8f8
    }

    .gb_sa, #gb a.gb_sa.gb_sa, .gb_ta {
        color: #666;
        cursor: default;
        text-decoration:none
    }

    #gb a.gb_ta {
        cursor: default;
        text-decoration:none
    }

    .gb_ta {
        border: 1px solid #4285f4;
        font-weight: bold;
        outline: none;
        background: #4285f4;
        background: -webkit-gradient(linear, left top, left bottom, from(top), color-stop(#4387fd), to(#4683ea));
        background: -webkit-linear-gradient(top, #4387fd, #4683ea);
        background: linear-gradient(top, #4387fd, #4683ea);
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#4387fd, endColorstr=#4683ea, GradientType=0)
    }

    #gb a.gb_ta {
        color:#fff
    }

    .gb_ta:hover {
        box-shadow:0 1px 0 rgba(0, 0, 0, .15)
    }

    .gb_ta:active {
        box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15);
        background: #3c78dc;
        background: -webkit-gradient(linear, left top, left bottom, from(top), color-stop(#3c7ae4), to(#3f76d3));
        background: -webkit-linear-gradient(top, #3c7ae4, #3f76d3);
        background: linear-gradient(top, #3c7ae4, #3f76d3);
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#3c7ae4, endColorstr=#3f76d3, GradientType=0)
    }

    #gb .gb_ua {
        background: #fff;
        border: 1px solid #dadce0;
        color: #1a73e8;
        display: inline-block;
        text-decoration:none
    }

    #gb .gb_ua:hover {
        background: #f8fbff;
        border-color: #dadce0;
        color:#174ea6
    }

    #gb .gb_ua:focus {
        background: #f4f8ff;
        color: #174ea6;
        outline:1px solid #174ea6
    }

    #gb .gb_ua:active, #gb .gb_ua:focus:active {
        background: #ecf3fe;
        color:#174ea6
    }

    #gb .gb_ua.gb_k {
        background: transparent;
        border: 1px solid #5f6368;
        color: #8ab4f8;
        text-decoration:none
    }

    #gb .gb_ua.gb_k:hover {
        background: rgba(255, 255, 255, .04);
        color:#e8eaed
    }

    #gb .gb_ua.gb_k:focus {
        background: rgba(232, 234, 237, .12);
        color: #e8eaed;
        outline:1px solid #e8eaed
    }

    #gb .gb_ua.gb_k:active, #gb .gb_ua.gb_k:focus:active {
        background: rgba(232, 234, 237, .1);
        color:#e8eaed
    }

    .gb_p {
        display:none !important
    }

    .gb_Sa {
        visibility:hidden
    }

    .gb_Hd {
        display: inline-block;
        vertical-align:middle
    }

    .gb_Jd .gb_o {
        bottom: -3px;
        right:-5px
    }

    .gb_g {
        position:relative
    }

    .gb_d {
        display: inline-block;
        outline: none;
        vertical-align: middle;
        border-radius: 2px;
        box-sizing: border-box;
        height: 40px;
        width: 40px;
        cursor: pointer;
        text-decoration:none
    }

    #gb#gb a.gb_d {
        cursor: pointer;
        text-decoration:none
    }

    .gb_d, a.gb_d {
        color:#000
    }

    .gb_8e {
        border-color: transparent;
        border-bottom-color: #fff;
        border-style: dashed dashed solid;
        border-width: 0 8.5px 8.5px;
        display: none;
        position: absolute;
        left: 11.5px;
        top: 33px;
        z-index: 1;
        height: 0;
        width: 0;
        -webkit-animation: gb__a .2s;
        animation:gb__a .2s
    }

    .gb_9e {
        border-color: transparent;
        border-style: dashed dashed solid;
        border-width: 0 8.5px 8.5px;
        display: none;
        position: absolute;
        left: 11.5px;
        z-index: 1;
        height: 0;
        width: 0;
        -webkit-animation: gb__a .2s;
        animation: gb__a .2s;
        border-bottom-color: rgba(0, 0, 0, .2);
        top:32px
    }

    x:-o-prefocus, div.gb_9e {
        border-bottom-color:#ccc
    }

    .gb_W {
        background: #fff;
        border: 1px solid #ccc;
        border-color: rgba(0, 0, 0, .2);
        color: #000;
        -webkit-box-shadow: 0 2px 10px rgba(0, 0, 0, .2);
        box-shadow: 0 2px 10px rgba(0, 0, 0, .2);
        display: none;
        outline: none;
        overflow: hidden;
        position: absolute;
        right: 8px;
        top: 62px;
        -webkit-animation: gb__a .2s;
        animation: gb__a .2s;
        border-radius: 2px;
        -webkit-user-select:text
    }

    .gb_Hd.gb_Ca .gb_8e, .gb_Hd.gb_Ca .gb_9e, .gb_Hd.gb_Ca .gb_W, .gb_Ca.gb_W {
        display:block
    }

    .gb_Hd.gb_Ca.gb_af .gb_8e, .gb_Hd.gb_Ca.gb_af .gb_9e {
        display:none
    }

    .gb_Kd {
        position: absolute;
        right: 8px;
        top: 62px;
        z-index:-1
    }

    .gb_Za .gb_8e, .gb_Za .gb_9e, .gb_Za .gb_W {
        margin-top:-10px
    }

    .gb_Hd:first-child, #gbsfw:first-child + .gb_Hd {
        padding-left:4px
    }

    .gb_Ha.gb_Ld .gb_Hd:first-child {
        padding-left:0
    }

    .gb_Md {
        position:relative
    }

    .gb_Ha .gb_Nd .gb_Ed.gb_dd, .gb_Ha.gb_Ia .gb_Nd .gb_Ed.gb_dd {
        padding:3px 8px 3px 16px
    }

    .gb_Nd .gb_Od {
        display:inline-block
    }

    .gb_Nd .gb_dd {
        -webkit-border-radius: 100px;
        border-radius: 100px;
        background: #0b57d0;
        color: #fff;
        font-size: 14px;
        font-weight: 500;
        white-space: nowrap;
        width:auto
    }

    .gb_Nd .gb_Pd {
        -webkit-box-align: center;
        -webkit-align-items: center;
        -webkit-align-items: center;
        align-items: center;
        display: -webkit-inline-box;
        display: -webkit-inline-flex;
        display: -webkit-inline-box;
        display: -webkit-inline-flex;
        display:inline-flex
    }

    .gb_Nd .gb_u {
        fill: #0b57d0;
        margin-left:8px
    }

    .gb_Nd .gb_u circle {
        fill:#fff
    }

    .gb_Nd .gb_dd .gb_Ad {
        -webkit-box-flex: 1;
        -webkit-flex-grow: 1;
        -webkit-box-flex: 1;
        box-flex: 1;
        -webkit-flex-grow: 1;
        flex-grow: 1;
        text-align:center
    }

    .gb_Nd .gb_dd:hover {
        background:#3763cd
    }

    .gb_Nd .gb_dd:hover .gb_u {
        fill:#3763cd
    }

    .gb_Nd .gb_dd:focus, .gb_Nd .gb_dd:active, .gb_Nd .gb_dd:focus:hover, .gb_Nd .gb_dd[aria-expanded=true], .gb_Nd .gb_dd:hover[aria-expanded=true] {
        background:#416acf
    }

    .gb_Nd .gb_dd:focus .gb_u, .gb_Nd .gb_dd:active .gb_u, .gb_Nd .gb_dd:focus:hover .gb_u, .gb_Nd .gb_dd[aria-expanded=true] .gb_u, .gb_Nd .gb_dd:hover[aria-expanded=true] .gb_u {
        fill:#416acf
    }

    .gb_Nd .gb_dd:hover, .gb_Nd .gb_dd:focus, .gb_Nd .gb_dd:active, .gb_Nd .gb_dd[aria-expanded=true] {
        -webkit-box-shadow: 0 1px 3px 1px rgba(66, 64, 67, .15), 0 1px 2px 0 rgba(60, 64, 67, .3);
        box-shadow:0 1px 3px 1px rgba(66, 64, 67, .15), 0 1px 2px 0 rgba(60, 64, 67, .3)
    }

    .gb_Nd .gb_dd:focus-visible {
        outline: 1px solid #416acf;
        outline-offset:2px
    }

    .gb_Nd .gb_k.gb_dd {
        background: #a8c7fa;
        color:#062e6f
    }

    .gb_Nd .gb_k.gb_dd .gb_u {
        fill:#a8c7fa
    }

    .gb_Nd .gb_k.gb_dd .gb_u circle {
        fill:#062e6f
    }

    .gb_Nd .gb_k.gb_dd:hover {
        background:#b4cbf6
    }

    .gb_Nd .gb_k.gb_dd:hover .gb_u {
        fill:#b4cbf6
    }

    .gb_Nd .gb_k.gb_dd:focus, .gb_Nd .gb_k.gb_dd:focus:hover, .gb_Nd .gb_k.gb_dd:active, .gb_Nd .gb_k.gb_dd[aria-expanded=true], .gb_Nd .gb_k.gb_dd:hover[aria-expanded=true] {
        background:#b8cdf7
    }

    .gb_Nd .gb_k.gb_dd:focus .gb_u, .gb_Nd .gb_k.gb_dd:focus:hover .gb_u, .gb_Nd .gb_k.gb_dd:active .gb_u, .gb_Nd .gb_k.gb_dd[aria-expanded=true] .gb_u, .gb_Nd .gb_k.gb_dd:hover[aria-expanded=true] .gb_u {
        fill:#b8cdf7
    }

    .gb_Nd .gb_k.gb_dd:focus-visible {
        outline-color:#b8cdf7
    }

    .gb_Nd .gb_k.gb_dd:hover, .gb_Nd .gb_k.gb_dd:focus, .gb_Nd .gb_k.gb_dd:active, .gb_Nd .gb_k.gb_dd[aria-expanded=true] {
        -webkit-box-shadow: 0 1px 3px 1px rgba(66, 64, 67, .15), 0 1px 2px 0 rgba(60, 64, 67, .3);
        box-shadow:0 1px 3px 1px rgba(66, 64, 67, .15), 0 1px 2px 0 rgba(60, 64, 67, .3)
    }

    .gb_Wc .gb_Md, .gb_f .gb_Md {
        float:right
    }

    .gb_d {
        padding: 8px;
        cursor:pointer
    }

    .gb_Ha .gb_de:not(.gb_pa):focus img {
        background-color: rgba(0, 0, 0, .2);
        outline: none;
        -webkit-border-radius: 50%;
        border-radius:50%
    }

    .gb_Qd button svg, .gb_d {
        -webkit-border-radius: 50%;
        border-radius:50%
    }

    .gb_Qd button:focus:not(:focus-visible) svg, .gb_Qd button:hover svg, .gb_Qd button:active svg, .gb_d:focus:not(:focus-visible), .gb_d:hover, .gb_d:active, .gb_d[aria-expanded=true] {
        outline:none
    }

    .gb_Fc .gb_Qd.gb_me button:focus-visible svg, .gb_Qd button:focus-visible svg, .gb_d:focus-visible {
        outline:1px solid #202124
    }

    .gb_Fc .gb_Qd button:focus-visible svg, .gb_Fc .gb_d:focus-visible {
        outline:1px solid #f1f3f4
    }

    @media (forced-colors: active) {
        .gb_Fc .gb_Qd.gb_me button:focus-visible svg, .gb_Qd button:focus-visible svg, .gb_Fc .gb_Qd button:focus-visible svg {
            outline:1px solid currentcolor
        }
    }

    .gb_Fc .gb_Qd.gb_me button:focus svg, .gb_Fc .gb_Qd.gb_me button:focus:hover svg, .gb_Qd button:focus svg, .gb_Qd button:focus:hover svg, .gb_d:focus, .gb_d:focus:hover {
        background-color:rgba(60, 64, 67, .1)
    }

    .gb_Fc .gb_Qd.gb_me button:active svg, .gb_Qd button:active svg, .gb_d:active {
        background-color:rgba(60, 64, 67, .12)
    }

    .gb_Fc .gb_Qd.gb_me button:hover svg, .gb_Qd button:hover svg, .gb_d:hover {
        background-color:rgba(60, 64, 67, .08)
    }

    .gb_va .gb_d.gb_xa:hover {
        background-color:transparent
    }

    .gb_d[aria-expanded=true], .gb_d:hover[aria-expanded=true] {
        background-color:rgba(95, 99, 104, .24)
    }

    .gb_d[aria-expanded=true] .gb_j {
        fill: #5f6368;
        opacity:1
    }

    .gb_Fc .gb_Qd button:hover svg, .gb_Fc .gb_d:hover {
        background-color:rgba(232, 234, 237, .08)
    }

    .gb_Fc .gb_Qd button:focus svg, .gb_Fc .gb_Qd button:focus:hover svg, .gb_Fc .gb_d:focus, .gb_Fc .gb_d:focus:hover {
        background-color:rgba(232, 234, 237, .1)
    }

    .gb_Fc .gb_Qd button:active svg, .gb_Fc .gb_d:active {
        background-color:rgba(232, 234, 237, .12)
    }

    .gb_Fc .gb_d[aria-expanded=true], .gb_Fc .gb_d:hover[aria-expanded=true] {
        background-color:rgba(255, 255, 255, .12)
    }

    .gb_Fc .gb_d[aria-expanded=true] .gb_j {
        fill: #fff;
        opacity:1
    }

    .gb_Hd {
        padding:4px
    }

    .gb_Ha.gb_Ld .gb_Hd {
        padding:4px 2px
    }

    .gb_Ha.gb_Ld .gb_b.gb_Hd {
        padding-left:6px
    }

    .gb_W {
        z-index: 991;
        line-height:normal
    }

    .gb_W.gb_Rd {
        left: 0;
        right:auto
    }

    @media (max-width: 350px) {
        .gb_W.gb_Rd {
            left:0
        }
    }

    .gb_Sd .gb_W {
        top:56px
    }

    .gb_h .gb_d, .gb_V .gb_h .gb_d {
        background-position:-64px -29px
    }

    .gb_B .gb_h .gb_d {
        background-position: -29px -29px;
        opacity:1
    }

    .gb_h .gb_d, .gb_h .gb_d:hover, .gb_h .gb_d:focus {
        opacity:1
    }

    .gb_bd {
        display:none
    }

    @media screen and (max-width: 319px) {
        .gb_id:not(.gb_nd) .gb_h {
            display: none;
            visibility:hidden
        }
    }

    .gb_o {
        display:none
    }

    .gb_5c {
        font-family: Google Sans, Roboto, Helvetica, Arial, sans-serif;
        font-size: 20px;
        font-weight: 400;
        letter-spacing: 0.25px;
        line-height: 48px;
        margin-bottom: 2px;
        opacity: 1;
        overflow: hidden;
        padding-left: 16px;
        position: relative;
        text-overflow: ellipsis;
        vertical-align: middle;
        top: 2px;
        white-space: nowrap;
        -webkit-flex: 1 1 auto;
        -webkit-box-flex: 1;
        flex:1 1 auto
    }

    .gb_5c.gb_6c {
        color:#3c4043
    }

    .gb_Ha.gb_Ia .gb_5c {
        margin-bottom:0
    }

    .gb_7c.gb_8c .gb_5c {
        padding-left:4px
    }

    .gb_Ha.gb_Ia .gb_9c {
        position: relative;
        top:-2px
    }

    .gb_Ha {
        color: black;
        min-width: 160px;
        position: relative;
        -webkit-transition: box-shadow 250ms;
        transition:box-shadow 250ms
    }

    .gb_Ha.gb_Oc {
        min-width:120px
    }

    .gb_Ha.gb_gd .gb_hd {
        display:none
    }

    .gb_Ha.gb_gd .gb_id {
        height:56px
    }

    header.gb_Ha {
        display:block
    }

    .gb_Ha svg {
        fill:currentColor
    }

    .gb_jd {
        position: fixed;
        top: 0;
        width:100%
    }

    .gb_kd {
        -webkit-box-shadow: 0 4px 5px 0 rgba(0, 0, 0, .14), 0 1px 10px 0 rgba(0, 0, 0, .12), 0 2px 4px -1px rgba(0, 0, 0, .2);
        box-shadow:0 4px 5px 0 rgba(0, 0, 0, .14), 0 1px 10px 0 rgba(0, 0, 0, .12), 0 2px 4px -1px rgba(0, 0, 0, .2)
    }

    .gb_ld {
        height:64px
    }

    .gb_id {
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        position: relative;
        width: 100%;
        display: -webkit-box;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: space-between;
        -webkit-justify-content: space-between;
        justify-content: space-between;
        min-width: -webkit-min-content;
        min-width:min-content
    }

    .gb_Ha:not(.gb_Ia) .gb_id {
        padding:8px
    }

    .gb_Ha.gb_md .gb_id {
        -webkit-flex: 1 0 auto;
        -webkit-box-flex: 1;
        flex:1 0 auto
    }

    .gb_Ha .gb_id.gb_nd.gb_od {
        min-width:0
    }

    .gb_Ha.gb_Ia .gb_id {
        padding: 4px;
        padding-left: 8px;
        min-width:0
    }

    .gb_hd {
        height: 48px;
        vertical-align: middle;
        white-space: nowrap;
        -webkit-box-align: center;
        -webkit-align-items: center;
        align-items: center;
        display: -webkit-box;
        display: -webkit-flex;
        display: flex;
        -webkit-user-select:none
    }

    .gb_qd > .gb_hd {
        display: table-cell;
        width:100%
    }

    .gb_7c {
        padding-right: 30px;
        box-sizing: border-box;
        -webkit-flex: 1 0 auto;
        -webkit-box-flex: 1;
        flex:1 0 auto
    }

    .gb_Ha.gb_Ia .gb_7c {
        padding-right:14px
    }

    .gb_rd {
        -webkit-flex: 1 1 100%;
        -webkit-box-flex: 1;
        flex:1 1 100%
    }

    .gb_rd > :only-child {
        display:inline-block
    }

    .gb_sd.gb_Xc {
        padding-left:4px
    }

    .gb_sd.gb_td, .gb_Ha.gb_md .gb_sd, .gb_Ha.gb_Ia:not(.gb_f) .gb_sd {
        padding-left:0
    }

    .gb_Ha.gb_Ia .gb_sd.gb_td {
        padding-right:0
    }

    .gb_Ha.gb_Ia .gb_sd.gb_td .gb_va {
        margin-left:10px
    }

    .gb_Xc {
        display:inline
    }

    .gb_Ha.gb_Rc .gb_sd.gb_ud, .gb_Ha.gb_f .gb_sd.gb_ud {
        padding-left:2px
    }

    .gb_5c {
        display:inline-block
    }

    .gb_sd {
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        height: 48px;
        line-height: normal;
        padding: 0 4px;
        padding-left: 30px;
        -webkit-flex: 0 0 auto;
        -webkit-box-flex: 0;
        flex: 0 0 auto;
        -webkit-box-pack: flex-end;
        -webkit-justify-content: flex-end;
        justify-content:flex-end
    }

    .gb_f {
        height:48px
    }

    .gb_Ha.gb_f {
        min-width:auto
    }

    .gb_f .gb_sd {
        float: right;
        padding-left:32px
    }

    .gb_f .gb_sd.gb_vd {
        padding-left:0
    }

    .gb_wd {
        font-size: 14px;
        max-width: 200px;
        overflow: hidden;
        padding: 0 12px;
        text-overflow: ellipsis;
        white-space: nowrap;
        -webkit-user-select:text
    }

    .gb_cd {
        -webkit-transition: background-color .4s;
        -webkit-transition: background-color .4s;
        transition:background-color .4s
    }

    .gb_Cd {
        color:black
    }

    .gb_Fc {
        color:white
    }

    .gb_Ha a, .gb_Lc a {
        color:inherit
    }

    .gb_M {
        color:rgba(0, 0, 0, .87)
    }

    .gb_Ha svg, .gb_Lc svg, .gb_7c .gb_fd, .gb_Wc .gb_fd {
        color: #5f6368;
        opacity:1
    }

    .gb_Fc svg, .gb_Lc.gb_Pc svg, .gb_Fc .gb_7c .gb_fd, .gb_Fc .gb_7c .gb_Ec, .gb_Fc .gb_7c .gb_9c, .gb_Lc.gb_Pc .gb_fd {
        color:rgba(255, 255, 255, .87)
    }

    .gb_Fc .gb_7c .gb_Dc:not(.gb_Dd) {
        opacity:.87
    }

    .gb_6c {
        color: inherit;
        opacity: 1;
        text-rendering: optimizeLegibility;
        -webkit-font-smoothing:antialiased
    }

    .gb_Fc .gb_6c, .gb_Cd .gb_6c {
        opacity:1
    }

    .gb_xd {
        position:relative
    }

    .gb_yd {
        font-family: arial, sans-serif;
        line-height: normal;
        padding-right:15px
    }

    a.gb_y, span.gb_y {
        color: rgba(0, 0, 0, .87);
        text-decoration:none
    }

    .gb_Fc a.gb_y, .gb_Fc span.gb_y {
        color:white
    }

    a.gb_y:focus {
        outline-offset:2px
    }

    a.gb_y:hover {
        text-decoration:underline
    }

    .gb_z {
        display: inline-block;
        padding-left:15px
    }

    .gb_z .gb_y {
        display: inline-block;
        line-height: 24px;
        vertical-align:middle
    }

    .gb_Ed {
        font-family: Google Sans, Roboto, Helvetica, Arial, sans-serif;
        font-weight: 500;
        font-size: 14px;
        letter-spacing: .25px;
        line-height: 16px;
        margin-left: 10px;
        margin-right: 8px;
        min-width: 96px;
        padding: 9px 23px;
        text-align: center;
        vertical-align: middle;
        border-radius: 4px;
        box-sizing:border-box
    }

    .gb_Ha.gb_f .gb_Ed {
        margin-left:8px
    }

    #gb a.gb_ta.gb_Ed {
        cursor:pointer
    }

    .gb_ta.gb_Ed:hover {
        background: #1b66c9;
        -webkit-box-shadow: 0 1px 3px 1px rgba(66, 64, 67, .15), 0 1px 2px 0 rgba(60, 64, 67, .3);
        box-shadow:0 1px 3px 1px rgba(66, 64, 67, .15), 0 1px 2px 0 rgba(60, 64, 67, .3)
    }

    .gb_ta.gb_Ed:focus, .gb_ta.gb_Ed:hover:focus {
        background: #1c5fba;
        -webkit-box-shadow: 0 1px 3px 1px rgba(66, 64, 67, .15), 0 1px 2px 0 rgba(60, 64, 67, .3);
        box-shadow:0 1px 3px 1px rgba(66, 64, 67, .15), 0 1px 2px 0 rgba(60, 64, 67, .3)
    }

    .gb_ta.gb_Ed:active {
        background: #1b63c1;
        -webkit-box-shadow: 0 1px 3px 1px rgba(66, 64, 67, .15), 0 1px 2px 0 rgba(60, 64, 67, .3);
        box-shadow:0 1px 3px 1px rgba(66, 64, 67, .15), 0 1px 2px 0 rgba(60, 64, 67, .3)
    }

    .gb_Ed {
        background: #1a73e8;
        border:1px solid transparent
    }

    .gb_Ha.gb_Ia .gb_Ed {
        padding: 9px 15px;
        min-width:80px
    }

    .gb_zd {
        text-align:left
    }

    #gb .gb_Fc a.gb_Ed:not(.gb_k), #gb.gb_Fc a.gb_Ed:not(.gb_t) {
        background: #fff;
        border-color: #dadce0;
        -webkit-box-shadow: none;
        box-shadow: none;
        color:#1a73e8
    }

    #gb a.gb_ta.gb_k.gb_Ed {
        background: #8ab4f8;
        border: 1px solid transparent;
        -webkit-box-shadow: none;
        box-shadow: none;
        color:#202124
    }

    #gb .gb_Fc a.gb_Ed:hover:not(.gb_k), #gb.gb_Fc a.gb_Ed:not(.gb_t):hover {
        background: #f8fbff;
        border-color:#cce0fc
    }

    #gb a.gb_ta.gb_k.gb_Ed:hover {
        background: #93baf9;
        border-color: transparent;
        -webkit-box-shadow: 0 1px 3px 1px rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .3);
        box-shadow:0 1px 3px 1px rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .3)
    }

    #gb .gb_Fc a.gb_Ed:focus:not(.gb_k), #gb .gb_Fc a.gb_Ed:focus:hover:not(.gb_k), #gb.gb_Fc a.gb_Ed:focus:not(.gb_k), #gb.gb_Fc a.gb_Ed:focus:hover:not(.gb_k) {
        background: #f4f8ff;
        outline:1px solid #c9ddfc
    }

    #gb a.gb_ta.gb_k.gb_Ed:focus, #gb a.gb_ta.gb_k.gb_Ed:focus:hover {
        background: #a6c6fa;
        border-color: transparent;
        -webkit-box-shadow: none;
        box-shadow:none
    }

    #gb .gb_Fc a.gb_Ed:active:not(.gb_k), #gb.gb_Fc a.gb_Ed:not(.gb_t):active {
        background:#ecf3fe
    }

    #gb a.gb_ta.gb_k.gb_Ed:active {
        background: #a1c3f9;
        -webkit-box-shadow: 0 1px 2px rgba(60, 64, 67, .3), 0 2px 6px 2px rgba(60, 64, 67, .15);
        box-shadow:0 1px 2px rgba(60, 64, 67, .3), 0 2px 6px 2px rgba(60, 64, 67, .15)
    }

    .gb_Fd {
        display:none
    }

    @media screen and (max-width: 319px) {
        .gb_id:not(.gb_nd) .gb_h {
            display: none;
            visibility:hidden
        }
    }

    .gb_va {
        background-color: rgba(255, 255, 255, .88);
        border: 1px solid #dadce0;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        cursor: pointer;
        display: inline-block;
        max-height: 48px;
        overflow: hidden;
        outline: none;
        padding: 0;
        vertical-align: middle;
        width: 134px;
        -webkit-border-radius: 8px;
        border-radius:8px
    }

    .gb_va.gb_k {
        background-color: transparent;
        border:1px solid #5f6368
    }

    .gb_Ba {
        display:inherit
    }

    .gb_va.gb_k .gb_Ba {
        background: #fff;
        -webkit-border-radius: 4px;
        border-radius: 4px;
        display: inline-block;
        left: 8px;
        margin-right: 5px;
        position: relative;
        padding: 3px;
        top:-1px
    }

    .gb_va:hover {
        border: 1px solid #d2e3fc;
        background-color:rgba(248, 250, 255, .88)
    }

    .gb_va.gb_k:hover {
        background-color: rgba(241, 243, 244, .04);
        border:1px solid #5f6368
    }

    .gb_va:focus-visible, .gb_va:focus {
        background-color: #fff;
        outline: 1px solid #202124;
        -webkit-box-shadow: 0 1px 2px 0 rgba(60, 64, 67, .3), 0 1px 3px 1px rgba(60, 64, 67, .15);
        box-shadow:0 1px 2px 0 rgba(60, 64, 67, .3), 0 1px 3px 1px rgba(60, 64, 67, .15)
    }

    .gb_va.gb_k:focus-visible, .gb_va.gb_k:focus {
        background-color: rgba(241, 243, 244, .12);
        outline: 1px solid #f1f3f4;
        -webkit-box-shadow: 0 1px 3px 1px rgba(0, 0, 0, .15), 0 1px 2px 0 rgba(0, 0, 0, .3);
        box-shadow:0 1px 3px 1px rgba(0, 0, 0, .15), 0 1px 2px 0 rgba(0, 0, 0, .3)
    }

    .gb_va.gb_k:active, .gb_va.gb_Ca.gb_k:focus {
        background-color: rgba(241, 243, 244, .1);
        border:1px solid #5f6368
    }

    .gb_Da {
        display: inline-block;
        padding-bottom: 2px;
        padding-left: 7px;
        padding-top: 2px;
        text-align: center;
        vertical-align: middle;
        line-height: 32px;
        width:78px
    }

    .gb_va.gb_k .gb_Da {
        line-height: 26px;
        margin-left: 0;
        padding-bottom: 0;
        padding-left: 0;
        padding-top: 0;
        width:72px
    }

    .gb_Da.gb_Ea {
        background-color: #f1f3f4;
        -webkit-border-radius: 4px;
        border-radius: 4px;
        margin-left: 8px;
        padding-left: 0;
        line-height:30px
    }

    .gb_Da.gb_Ea .gb_Fa {
        vertical-align:middle
    }

    .gb_Ha:not(.gb_Ia) .gb_va {
        margin-left: 10px;
        margin-right:4px
    }

    .gb_Ja {
        max-height: 32px;
        width:78px
    }

    .gb_va.gb_k .gb_Ja {
        max-height: 26px;
        width:72px
    }

    .gb_n {
        -webkit-background-size: 32px 32px;
        background-size: 32px 32px;
        border: 0;
        -webkit-border-radius: 50%;
        border-radius: 50%;
        display: block;
        margin: 0px;
        position: relative;
        height: 32px;
        width: 32px;
        z-index:0
    }

    .gb_Ta {
        background-color: #e8f0fe;
        border: 1px solid rgba(32, 33, 36, .08);
        position:relative
    }

    .gb_Ta.gb_n {
        height: 30px;
        width:30px
    }

    .gb_Ta.gb_n:hover, .gb_Ta.gb_n:active {
        -webkit-box-shadow: none;
        box-shadow:none
    }

    .gb_Ua {
        background: #fff;
        border: none;
        -webkit-border-radius: 50%;
        border-radius: 50%;
        bottom: 2px;
        -webkit-box-shadow: 0px 1px 2px 0px rgba(60, 64, 67, .30), 0px 1px 3px 1px rgba(60, 64, 67, .15);
        box-shadow: 0px 1px 2px 0px rgba(60, 64, 67, .30), 0px 1px 3px 1px rgba(60, 64, 67, .15);
        height: 14px;
        margin: 2px;
        position: absolute;
        right: 0;
        width:14px
    }

    .gb_Va {
        color: #1f71e7;
        font: 400 22px/32px Google Sans, Roboto, Helvetica, Arial, sans-serif;
        text-align: center;
        text-transform:uppercase
    }

    @media (-webkit-min-device-pixel-ratio: 1.25),(min-resolution: 1.25dppx),(min-device-pixel-ratio: 1.25) {
        .gb_n::before, .gb_Wa::before {
            display: inline-block;
            -webkit-transform: scale(0.5);
            -webkit-transform: scale(0.5);
            transform: scale(0.5);
            -webkit-transform-origin: left 0;
            -webkit-transform-origin: left 0;
            transform-origin:left 0
        }

        .gb_D .gb_Wa::before {
            -webkit-transform: scale(scale(0.416666667));
            -webkit-transform: scale(scale(0.416666667));
            transform:scale(scale(0.416666667))
        }
    }

    .gb_n:hover, .gb_n:focus {
        -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .15);
        box-shadow:0 1px 0 rgba(0, 0, 0, .15)
    }

    .gb_n:active {
        -webkit-box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15);
        box-shadow:inset 0 2px 0 rgba(0, 0, 0, .15)
    }

    .gb_n:active::after {
        background: rgba(0, 0, 0, .1);
        -webkit-border-radius: 50%;
        border-radius: 50%;
        content: "";
        display: block;
        height:100%
    }

    .gb_Xa {
        cursor: pointer;
        line-height: 40px;
        min-width: 30px;
        opacity: .75;
        overflow: hidden;
        vertical-align: middle;
        text-overflow:ellipsis
    }

    .gb_d.gb_Xa {
        width:auto
    }

    .gb_Xa:hover, .gb_Xa:focus {
        opacity:.85
    }

    .gb_Za .gb_Xa, .gb_Za .gb_0a {
        line-height:26px
    }

    #gb#gb.gb_Za a.gb_Xa, .gb_Za .gb_0a {
        font-size: 11px;
        height:auto
    }

    .gb_1a {
        border-top: 4px solid #000;
        border-left: 4px dashed transparent;
        border-right: 4px dashed transparent;
        display: inline-block;
        margin-left: 6px;
        opacity: .75;
        vertical-align:middle
    }

    .gb_xa:hover .gb_1a {
        opacity:.85
    }

    .gb_va > .gb_b {
        padding:3px 3px 3px 4px
    }

    .gb_2a.gb_Sa {
        color:#fff
    }

    .gb_B .gb_Xa, .gb_B .gb_1a {
        opacity:1
    }

    #gb#gb.gb_B.gb_B a.gb_Xa, #gb#gb .gb_B.gb_B a.gb_Xa {
        color:#fff
    }

    .gb_B.gb_B .gb_1a {
        border-top-color: #fff;
        opacity:1
    }

    .gb_V .gb_n:hover, .gb_B .gb_n:hover, .gb_V .gb_n:focus, .gb_B .gb_n:focus {
        -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .2);
        box-shadow:0 1px 0 rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .2)
    }

    .gb_3a .gb_b, .gb_4a .gb_b {
        position: absolute;
        right:1px
    }

    .gb_b.gb_A, .gb_5a.gb_A, .gb_xa.gb_A {
        -webkit-flex: 0 1 auto;
        -webkit-box-flex: 0;
        flex:0 1 auto
    }

    .gb_6a.gb_7a .gb_Xa {
        width:30px !important
    }

    .gb_m {
        height: 40px;
        position: absolute;
        right: -5px;
        top: -5px;
        width:40px
    }

    .gb_8a .gb_m, .gb_9a .gb_m {
        right: 0;
        top:0
    }

    .gb_b .gb_d {
        padding:4px
    }

    .gb_q {
        display:none
    }

    sentinel {
    }

    .cB4NFc {
        padding-top:16px
    }

    .v0rrvd {
        padding-bottom:16px
    }

    .GUHazd {
        padding-bottom:12px
    }

    .OdBhM {
        padding-top:8px
    }

    .TUOsUe {
        text-align:left
    }

    .yMNJR .qk7LXc {
        max-width:100%
    }

    .cJFqsd .qk7LXc {
        height:100%
    }

    .rfx2Y .qk7LXc {
        width:100%
    }

    @media (min-height: 576px) {
        .uSolm .qk7LXc {
            height:100%
        }

        .uSolm {
            padding:64px 0px
        }
    }

    @media (max-height: 575px) {
        .uSolm .qk7LXc {
            height: 100%;
            max-height:448px
        }
    }

    .BhUHze .qk7LXc {
        width:75%
    }

    @media (min-height: 496px) {
        .GeOznc .qk7LXc {
            height:100%
        }

        .GeOznc {
            padding:24px 0px
        }
    }

    @media (max-height: 495px) {
        .GeOznc .qk7LXc {
            height: 100%;
            max-height:448px
        }
    }

    .dgVGnc .qk7LXc {
        width:90%
    }

    .KUf18.ivkdbf {
        background-color: rgba(0, 0, 0, 0.6);
        opacity: 1;
        visibility:inherit
    }

    .VfsLpf.ivkdbf {
        background-color: #000;
        opacity: .4;
        visibility:inherit
    }

    .J3Hnlf.ivkdbf {
        background-color: #202124;
        opacity: .7;
        visibility:inherit
    }

    .X46m8.ivkdbf {
        background-color: #000;
        opacity: .8;
        visibility:inherit
    }

    .cBoDed.ivkdbf {
        background-color: #f8f9fa;
        opacity: .85;
        visibility:inherit
    }

    .kyk7qb.ivkdbf {
        background-color: #202124;
        opacity: .6;
        visibility:inherit
    }

    .qk7LXc.ivkdbf {
        opacity:1
    }

    .mcPPZ.ivkdbf {
        opacity: 1;
        visibility:inherit
    }

    .mcPPZ.nP0TDe {
        cursor:pointer
    }

    .mcPPZ.nP0TDe .qk7LXc {
        cursor:default
    }

    .kJFf0c {
        position: fixed;
        z-index: 9997;
        right: 0;
        bottom: -200px;
        top: 0;
        left: 0;
        -webkit-transition: opacity .25s;
        transition: opacity .25s;
        opacity: 0;
        visibility:hidden
    }

    .qk7LXc {
        display: inline-block;
        z-index: 9997;
        background-color: #fff;
        opacity: 0;
        white-space: normal;
        overflow:hidden
    }

    .qk7LXc {
        border-radius:8px
    }

    .qk7LXc {
        box-shadow:0px 5px 26px 0px rgba(0, 0, 0, 0.22), 0px 20px 28px 0px rgba(0, 0, 0, 0.3)
    }

    .qk7LXc.DJEOfc {
        background-color:transparent
    }

    .qk7LXc.DJEOfc {
        box-shadow:none
    }

    .qk7LXc.Fb1AKc {
        position: relative;
        vertical-align:middle
    }

    .qk7LXc.ulWzbd {
        position:absolute
    }

    .qk7LXc.P1WYLb {
        border: 1px solid #dadce0;
        box-shadow:#dadce0
    }

    .mcPPZ {
        position: fixed;
        right: 0;
        bottom: 0;
        top: 0;
        left: 0;
        z-index: 9997;
        vertical-align: middle;
        visibility: hidden;
        white-space: nowrap;
        max-height: 100%;
        max-width: 100%;
        overflow-x: hidden;
        overflow-y:auto
    }

    .mcPPZ.xg7rAe {
        text-align:center
    }

    .mcPPZ::after {
        content: "";
        display: inline-block;
        height: 100%;
        vertical-align:middle
    }

    .mcPPZ {
        tap-highlight-color:rgba(0, 0, 0, 0)
    }

    .LjfRsf {
        height: 0;
        opacity: 0;
        position: absolute;
        width:0
    }

    .VH47ed {
        visibility:hidden
    }

    .TaoyYc {
        overflow:hidden
    }

    .qk7LXc.aJPx6e {
        overflow:visible
    }

    .vAJJzd {
        opacity:.999
    }

    .xTWltf {
        margin-right:24px
    }

    .OhScic {
        margin:0px
    }

    .TkZZsf {
        padding-bottom: 4px;
        padding-top:4px
    }

    .lgo9kc.vKW4md {
        opacity: .2;
        visibility:inherit
    }

    .vSyRff.vKW4md {
        -webkit-transform: translateY(0);
        transform: translateY(0);
        opacity: 1;
        visibility:inherit
    }

    .lgo9kc {
        background-color: #000;
        -webkit-transition: opacity .25s;
        transition: opacity .25s;
        bottom: 0;
        left: 0;
        opacity: 0;
        position: fixed;
        right: 0;
        top: 0;
        visibility: hidden;
        z-index:1000
    }

    .lgo9kc.GJyMZe {
        z-index:9998
    }

    .lgo9kc.SNco2 {
        z-index:979
    }

    .vSyRff {
        -webkit-transform: translateY(100%);
        transform: translateY(100%);
        -webkit-transition: opacity .3s 0s ease-in-out, visibility .3s 0s ease-in-out, -webkit-transform .3s 0s ease-in-out;
        transition: opacity .3s 0s ease-in-out, visibility .3s 0s ease-in-out, -webkit-transform .3s 0s ease-in-out;
        transition: transform .3s 0s ease-in-out, opacity .3s 0s ease-in-out, visibility .3s 0s ease-in-out;
        transition: transform .3s 0s ease-in-out, opacity .3s 0s ease-in-out, visibility .3s 0s ease-in-out, -webkit-transform .3s 0s ease-in-out;
        opacity: 0;
        position: fixed;
        visibility: hidden;
        z-index:1060
    }

    .vSyRff.GJyMZe {
        z-index:9999
    }

    .vSyRff.SNco2 {
        z-index:980
    }

    .XEnKRe {
        height: 0;
        opacity: 0;
        position: absolute;
        width:0
    }

    .jnyxRd {
        background-color: #fff;
        display: inline-block;
        text-align: start;
        width:100%
    }

    .ujnsy {
        border-top-left-radius: 8px;
        border-top-right-radius:8px
    }

    .TpRPV {
        border-top-left-radius: 16px;
        border-top-right-radius:16px
    }

    .jnyxRd:focus {
        outline:none
    }

    .IEBxXd {
        height:100%
    }

    .vSyRff .uBEihf {
        padding: 10px;
        position: absolute;
        right: 0;
        top: 0;
        z-index:1
    }

    .vSyRff.fC2KG {
        background-color: #fff;
        box-shadow:0 2px 2px 2px rgba(0, 0, 0, 0.1), 0 2px 6px 6px rgba(0, 0, 0, 0.06)
    }

    @media (min-width: 320px) {
        .vSyRff.fC2KG {
            bottom: 0;
            left: 0;
            right:0
        }
    }

    @media (min-width: 480px) {
        .vSyRff.fC2KG {
            display: inline-block;
            bottom:20px
        }
    }

    .vSyRff.Y5Ip8c {
        background-color: #fff;
        border-radius: 20px;
        bottom: 40px;
        right: 40px;
        box-shadow:0 4px 8px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.06)
    }

    .jnyxRd.Y5Ip8c {
        border-radius:20px
    }

    @media (min-width: 480px) {
        .JXXsr.fC2KG {
            left: 20px;
            right:auto
        }
    }

    @media (min-width: 480px) {
        .c3k6Zc.fC2KG {
            left: auto;
            right:20px
        }
    }

    .vSyRff.kqLqDd {
        bottom: 0;
        left: 0;
        right:0
    }

    @media (min-width: 480px) {
        .Jm7ege.fC2KG {
            min-width:380px
        }
    }

    g-img {
        display:block
    }

    g-img {
        height:100%
    }

    .YQ4gaf {
        display: block;
        border:0
    }

    .u9wH7d .YQ4gaf {
        object-fit:fill
    }

    .mNsIhb .YQ4gaf {
        object-fit:cover
    }

    .tb08Pd .YQ4gaf {
        object-fit:contain
    }

    .wA1Bge {
        position:relative
    }

    .hhtjrc {
        -webkit-box-flex: 0;
        -webkit-flex: none;
        flex:none
    }

    .ZGomKf {
        overflow:hidden
    }

    .LLO8yd {
        background-color: rgba(0, 0, 0, .03);
        position: absolute;
        top: 0;
        bottom: 0;
        pointer-events: none;
        left: 0;
        right:0
    }

    .LqkKtf {
        -webkit-box-align: center;
        -webkit-align-items: center;
        align-items: center;
        display: none;
        height: 100%;
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        left: 0;
        opacity: .999;
        overflow: hidden;
        position: absolute;
        top: 0;
        width:100%
    }

    .Iz740d.LqkKtf {
        border-radius:50%
    }

    .LqkKtf.DngrPc {
        left: 50%;
        margin-left: -50vw;
        margin-right: -50vw;
        right: 50%;
        width:100vw
    }

    .amp_re {
        position:relative
    }

    .zsYMMe {
        padding:0px
    }

    .QyJI3d {
        background-color: #fff;
        color: #666;
        box-shadow:0 4px 16px rgba(0, 0, 0, 0.2)
    }

    .oQcPt {
        background-color:#fff
    }

    .QyJI3d {
        border: 1px solid rgba(0, 0, 0, .2);
        position: absolute;
        z-index:9120
    }

    .nFdFHf {
        -webkit-animation: g-bubble-show .2s forwards;
        animation:g-bubble-show .2s forwards
    }

    .bE3Kif {
        -webkit-animation: g-bubble-hide .2s forwards;
        animation:g-bubble-hide .2s forwards
    }

    @-webkit-keyframes g-bubble-show {
        from {
            opacity:0
        }

        to {
            opacity:1
        }
    }

    @keyframes g-bubble-show {
        from {
            opacity:0
        }

        to {
            opacity:1
        }
    }

    @-webkit-keyframes g-bubble-hide {
        from {
            opacity:1
        }

        to {
            opacity:0
        }
    }

    @keyframes g-bubble-hide {
        from {
            opacity:1
        }

        to {
            opacity:0
        }
    }

    .QyJI3d.QJnoze {
        border-radius:12px
    }

    .QyJI3d.SiOjJb {
        border-left-width: 0;
        border-right-width: 0;
        width:100%
    }

    .QyJI3d.PnQMie {
        background-color: #202124;
        border: 1px solid rgba(0, 0, 0, 0.5);
        color:#dadce0
    }

    .QyJI3d.LWen5c {
        background-color: #1a73e8;
        border: none;
        color: #fff;
        z-index:9100
    }

    .tYmfxe {
        -webkit-transform: translate(2.5px, 1.8px) rotateZ(45deg);
        transform: translate(2.5px, 1.8px) rotateZ(45deg);
        position: absolute;
        z-index:9121
    }

    [dir=rtl] .tYmfxe {
        -webkit-transform: translate(-2.5px, 1.8px) rotateZ(45deg);
        transform:translate(-2.5px, 1.8px) rotateZ(45deg)
    }

    .IBPZu.tYmfxe {
        -webkit-transform: translate(2.5px, -5.7px) rotateZ(45deg);
        transform:translate(2.5px, -5.7px) rotateZ(45deg)
    }

    [dir=rtl] .IBPZu.tYmfxe {
        -webkit-transform: translate(-2.5px, -5.7px) rotateZ(45deg);
        transform:translate(-2.5px, -5.7px) rotateZ(45deg)
    }

    .oQcPt {
        border-bottom: none;
        border-left: 1px solid rgba(0, 0, 0, .2);
        border-right: none;
        border-top: 1px solid rgba(0, 0, 0, .2);
        box-sizing: border-box;
        height: 13.435px;
        width:13.435px
    }

    .IBPZu .oQcPt {
        border-bottom: 1px solid rgba(0, 0, 0, .2);
        border-left: none;
        border-right: 1px solid rgba(0, 0, 0, .2);
        border-top:none
    }

    .PnQMie .oQcPt {
        background-color: #202124;
        border-color:rgba(0, 0, 0, 0.5)
    }

    .LWen5c .oQcPt {
        background-color: #1a73e8;
        border:none
    }

    .nnFGuf {
        display:none
    }

    .c5aZPb {
        cursor:pointer
    }

    .Dcltre {
        pointer-events:none
    }

    .TYQ8Af {
        clip: rect(1px, 1px, 1px, 1px);
        height: 1px;
        overflow: hidden;
        position: absolute;
        white-space: nowrap;
        width: 1px;
        z-index: -1000;
        top: 3px;
        right:3px
    }

    .VDgVie {
        text-align:center
    }

    .yUTMj {
        font-family: arial, sans-serif;
        font-weight:400
    }

    .wHYlTd {
        font-family: arial, sans-serif;
        font-size: 14px;
        line-height:22px
    }

    .zJUuqf {
        margin-bottom:4px
    }

    .AB4Wff {
        margin-left:16px
    }

    @-webkit-keyframes g-snackbar-show {
        from {
            pointer-events: none;
            -webkit-transform: translateY(0);
            transform:translateY(0)
        }

        to {
            -webkit-transform: translateY(-100%);
            transform:translateY(-100%)
        }
    }

    @keyframes g-snackbar-show {
        from {
            pointer-events: none;
            -webkit-transform: translateY(0);
            transform:translateY(0)
        }

        to {
            -webkit-transform: translateY(-100%);
            transform:translateY(-100%)
        }
    }

    @-webkit-keyframes g-snackbar-hide {
        from {
            -webkit-transform: translateY(-100%);
            transform:translateY(-100%)
        }

        to {
            -webkit-transform: translateY(0);
            transform:translateY(0)
        }
    }

    @keyframes g-snackbar-hide {
        from {
            -webkit-transform: translateY(-100%);
            transform:translateY(-100%)
        }

        to {
            -webkit-transform: translateY(0);
            transform:translateY(0)
        }
    }

    @-webkit-keyframes g-snackbar-show-content {
        from {
            opacity:0
        }
    }

    @keyframes g-snackbar-show-content {
        from {
            opacity:0
        }
    }

    @-webkit-keyframes g-snackbar-hide-content {
        to {
            opacity:0
        }
    }

    @keyframes g-snackbar-hide-content {
        to {
            opacity:0
        }
    }

    .LH3wG, .jhZvod {
        bottom: 0;
        height: 0;
        position: fixed;
        z-index:999
    }

    .Ox8Cyd {
        height: 0;
        position: fixed;
        z-index:999
    }

    .E7Hdgb {
        box-sizing: border-box;
        visibility: hidden;
        display:inline-block
    }

    .yK6jqe, .Wu0v9b {
        box-sizing: border-box;
        visibility:hidden
    }

    .rTYTNb {
        -webkit-animation: g-snackbar-hide .4s cubic-bezier(0.4, 0, 0.2, 1) both;
        animation: g-snackbar-hide .4s cubic-bezier(0.4, 0, 0.2, 1) both;
        visibility:inherit
    }

    .UewPMd {
        -webkit-animation: g-snackbar-show .5s cubic-bezier(0.4, 0, 0.2, 1) both;
        animation: g-snackbar-show .5s cubic-bezier(0.4, 0, 0.2, 1) both;
        visibility:inherit
    }

    .b77HKf {
        background-color: #323232;
        padding:0 24px
    }

    .rIxsve {
        -webkit-box-align: center;
        -webkit-align-items: center;
        align-items: center;
        box-align: center;
        display: box;
        display: -webkit-box;
        display: -webkit-flex;
        display:flex
    }

    .rTYTNb .rIxsve {
        -webkit-animation: g-snackbar-hide-content .35s cubic-bezier(0.4, 0, 0.2, 1) both;
        animation:g-snackbar-hide-content .35s cubic-bezier(0.4, 0, 0.2, 1) both
    }

    .UewPMd .rIxsve {
        -webkit-animation: g-snackbar-show-content .35s cubic-bezier(0.4, 0, 0.2, 1) .15s both;
        animation:g-snackbar-show-content .35s cubic-bezier(0.4, 0, 0.2, 1) .15s both
    }

    .Txngnb.Txngnb {
        line-height:20px
    }

    .Txngnb {
        box-flex: 1;
        color: #fff;
        -webkit-box-flex: 1;
        -webkit-flex: 1 1 auto;
        flex: 1 1 auto;
        margin: 14px 0;
        word-break:break-word
    }

    .sHFNYd {
        margin-right:-8px
    }

    @media (min-width: 569px) and(min-height: 569px) {
        .LH3wG, .jhZvod {
            text-align:center
        }

        .Wu0v9b, .yK6jqe {
            display: inline-block;
            max-width: 568px;
            min-width: 288px;
            text-align:left
        }

        .b77HKf {
            border-radius:8px
        }

        .sHFNYd {
            margin-left:40px
        }
    }

    .V9O1Yd .rIxsve {
        display: block;
        padding:8px 0
    }

    .V9O1Yd .sHFNYd {
        margin-left:0
    }

    .V9O1Yd .sHFNYd g-flat-button {
        padding-left:0
    }

    .jhZvod {
        left: 16px;
        right:auto
    }

    .LH3wG, .Ox8Cyd {
        left: 0;
        right:0
    }

    .yK6jqe, .Wu0v9b, .E7Hdgb {
        position:relative
    }

    .G9jore {
        position: absolute;
        top: -24px;
        bottom: -24px;
        left: -24px;
        right:-24px
    }

    .iwY1Mb {
        height: 0;
        opacity: 0;
        display:block
    }

    .V8fWH {
        border: 0;
        clip: rect(0 0 0 0);
        -webkit-clip-path: polygon(0 0, 0 0, 0 0);
        clip-path: polygon(0 0, 0 0, 0 0);
        height: 1px;
        margin: -1px;
        overflow: hidden;
        padding: 0;
        position: absolute;
        width: 1px;
        white-space: nowrap;
        -webkit-appearance: none;
        appearance: none;
        z-index: -1000;
        -webkit-user-select: none;
        user-select:none
    }

    .gW7zSc {
        display:block
    }

    .CqmPRe:active .aVlTpc span {
        -webkit-animation-timing-function: cubic-bezier(.2, .2, 0, 1);
        animation-timing-function: cubic-bezier(.2, .2, 0, 1);
        -webkit-animation-duration: .5s;
        animation-duration:.5s
    }

    @-webkit-keyframes shape-tween-right {
        50% {
            -webkit-transform: scaleY(.9) translateX(8%);
            transform:scaleY(.9) translateX(8%)
        }

        100% {
            -webkit-transform: none;
            transform:none
        }
    }

    @keyframes shape-tween-right {
        50% {
            -webkit-transform: scaleY(.9) translateX(8%);
            transform:scaleY(.9) translateX(8%)
        }

        100% {
            -webkit-transform: none;
            transform:none
        }
    }

    @-webkit-keyframes shape-tween-left {
        50% {
            -webkit-transform: scaleY(.9) translateX(-8%);
            transform:scaleY(.9) translateX(-8%)
        }

        100% {
            -webkit-transform: none;
            transform:none
        }
    }

    @keyframes shape-tween-left {
        50% {
            -webkit-transform: scaleY(.9) translateX(-8%);
            transform:scaleY(.9) translateX(-8%)
        }

        100% {
            -webkit-transform: none;
            transform:none
        }
    }

    .CqmPRe:active .KArJuc span {
        -webkit-animation-name: shape-tween-right;
        animation-name:shape-tween-right
    }

    .CqmPRe:active .YbCrzd span {
        -webkit-animation-name: shape-tween-left;
        animation-name:shape-tween-left
    }

    @-webkit-keyframes shape-tween-up {
        50% {
            -webkit-transform: scaleX(.9) translateY(-8%);
            transform:scaleX(.9) translateY(-8%)
        }

        100% {
            -webkit-transform: none;
            transform:none
        }
    }

    @keyframes shape-tween-up {
        50% {
            -webkit-transform: scaleX(.9) translateY(-8%);
            transform:scaleX(.9) translateY(-8%)
        }

        100% {
            -webkit-transform: none;
            transform:none
        }
    }

    .CqmPRe:active .oXqZxc span {
        -webkit-animation-name: shape-tween-up;
        animation-name:shape-tween-up
    }

    @-webkit-keyframes shape-tween-down {
        50% {
            -webkit-transform: scaleX(.9) translateY(8%);
            transform:scaleX(.9) translateY(8%)
        }

        100% {
            -webkit-transform: none;
            transform:none
        }
    }

    @keyframes shape-tween-down {
        50% {
            -webkit-transform: scaleX(.9) translateY(8%);
            transform:scaleX(.9) translateY(8%)
        }

        100% {
            -webkit-transform: none;
            transform:none
        }
    }

    .CqmPRe:active .TD5FQe span {
        -webkit-animation-name: shape-tween-down;
        animation-name:shape-tween-down
    }

    .e5KZJf {
        display: none;
        position: absolute;
        width: 100%;
        height: 100%;
        opacity: .1;
        left: 0;
        top:0
    }

    .e5KZJf:active {
        -webkit-animation-duration: .4s;
        animation-duration: .4s;
        -webkit-animation-name: shift;
        animation-name:shift
    }

    @-webkit-keyframes shift {
        25% {
            background:#3c4043
        }
    }

    @keyframes shift {
        25% {
            background:#3c4043
        }
    }

    .sjVJQd {
        font-family: Google Sans, arial, sans-serif-medium, sans-serif;
        font-size: 14px;
        font-weight: 400;
        line-height:20px
    }

    .Aajd3 {
        padding-left:16px
    }

    .gxMdVd {
        padding-right:8px
    }

    .r2fjmd {
        margin-bottom: 0px;
        margin-top:0px
    }

    g-dropdown-menu {
        display: inline-block;
        position:relative
    }

    .Jb0Zif g-dropdown-menu {
        vertical-align:middle
    }

    .WNN1b {
        background-color:#fff
    }

    .W4XqN {
        cursor: pointer;
        background-color:#fff
    }

    .GKXWV {
        border-top: 1px solid #dadce0;
        height: 0;
        margin-left: 5px;
        margin-right:5px
    }

    .eNRwyf {
        height: 100%;
        width:100%
    }

    .pkWBse {
        box-shadow:0 2px 10px 0 rgba(0, 0, 0, 0.2)
    }

    .pkWBse {
        border-radius:8px
    }

    .PBn44e {
        border-radius:8px
    }

    .yTik0 {
        border: none;
        display: block;
        outline:none
    }

    .wplJBd {
        white-space:nowrap
    }

    .JM22S::-webkit-scrollbar {
        width:8px
    }

    .JM22S::-webkit-scrollbar-thumb {
        background-color: #bababa;
        border-right:4px solid #fff
    }

    .iQXTJe {
        padding:5px 0
    }

    .Zt0a5e.LGiluc {
        border-top-color:#dadce0
    }

    .Zt0a5e.LGiluc, .Zt0a5e.EpPYLd[disabled] {
        color:rgba(0, 0, 0, 0.26) !important
    }

    .CjiZvb, .GZnQqe.EpPYLd:active {
        background-color:rgba(0, 0, 0, 0.1)
    }

    .eCcUA, .cDnxO {
        pointer-events: none;
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border-radius:50%
    }

    .rLdWfe {
        position: absolute;
        border-radius: inherit;
        top: 0;
        left: 0;
        width: 100%;
        height:100%
    }

    .MDfoTd, .hdqIFe {
        pointer-events: none;
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height:100%
    }

    .MDfoTd, .cDnxO {
        opacity:0
    }

    .hdqIFe, .cDnxO {
        overflow:hidden
    }

    .bKvogb .MDfoTd, .bKvogb .hdqIFe {
        border-radius:50%
    }

    .bKvogb .eCcUA {
        overflow:hidden
    }

    .Dh17Xe {
        --sY1IGd: #001d35;
        --HVh8he: #ebf1ff;
        --SDQGQc: #001d35;
        --JqDFeb: #d3e3fd;
        --o0W9Kd: #a3c9ff;
        --ncFr3c: #001d35;
        --Xe9rte: #fff;
        --ojQQT: #f7f8f9;
        --Jk3LHc: #ecedee;
        --oBmcEb: #1f1f1f;
        --Jvm36b: #474747;
        --XB5uFb: #5e5e5e;
        --pQOjNd: #1a0dab;
        --oVktv: #0b57d0;
        --HebTqd: #747878;
        --SZLnK: #d2d2d2;
        --NHdp4c: #dadce0;
        --c7pEhe: #d2d2d2;
        --uoLUrf: #0b57d0;
        --zoZLvf: #0b57d0;
        --whX90c: #fff;
        --Alm9vb: #f7f8f9;
        --Xtqjh: #fff;
        --j9YGEd: #edf1f9;
        --Hct93e:#e0e9ff
    }

    .OvQkSb {
        border-radius:9999px
    }

    .bNg8Rb {
        clip: rect(1px, 1px, 1px, 1px);
        height: 1px;
        overflow: hidden;
        position: absolute;
        white-space: nowrap;
        width: 1px;
        z-index: -1000;
        user-select: none;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select:none
    }

    .jbBItf {
        display: block;
        position:relative
    }

    .DU0NJ {
        bottom: 0;
        left: 0;
        position: absolute;
        right: 0;
        top:0
    }

    .lP3Jof {
        display: inline-block;
        position:relative
    }

    .nNMuOd {
        -webkit-animation: qli-container-rotate 1568.2352941176ms linear infinite;
        animation:qli-container-rotate 1568.2352941176ms linear infinite
    }

    @-webkit-keyframes qli-container-rotate {
        from {
            -webkit-transform: rotate(0);
            transform:rotate(0)
        }

        to {
            -webkit-transform: rotate(1turn);
            transform:rotate(1turn)
        }
    }

    @keyframes qli-container-rotate {
        from {
            -webkit-transform: rotate(0);
            transform:rotate(0)
        }

        to {
            -webkit-transform: rotate(1turn);
            transform:rotate(1turn)
        }
    }

    .RoKmhb {
        height: 100%;
        opacity: 0;
        position: absolute;
        width:100%
    }

    .nNMuOd .VQdeab {
        -webkit-animation: qli-fill-unfill-rotate 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both, qli-blue-fade-in-out 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        animation:qli-fill-unfill-rotate 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both, qli-blue-fade-in-out 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both
    }

    .nNMuOd .IEqiAf {
        -webkit-animation: qli-fill-unfill-rotate 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both, qli-red-fade-in-out 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        animation:qli-fill-unfill-rotate 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both, qli-red-fade-in-out 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both
    }

    .nNMuOd .smocse {
        -webkit-animation: qli-fill-unfill-rotate 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both, qli-yellow-fade-in-out 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        animation:qli-fill-unfill-rotate 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both, qli-yellow-fade-in-out 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both
    }

    .nNMuOd .FlKbCe {
        -webkit-animation: qli-fill-unfill-rotate 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both, qli-green-fade-in-out 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        animation:qli-fill-unfill-rotate 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both, qli-green-fade-in-out 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both
    }

    .BSnLb .nNMuOd .RoKmhb {
        -webkit-animation: qli-fill-unfill-rotate 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        animation: qli-fill-unfill-rotate 5332ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        opacity:0.99
    }

    @-webkit-keyframes qli-fill-unfill-rotate {
        0% {
            -webkit-transform: rotate(0);
            transform:rotate(0)
        }

        12.5% {
            -webkit-transform: rotate(135deg);
            transform:rotate(135deg)
        }

        25% {
            -webkit-transform: rotate(270deg);
            transform:rotate(270deg)
        }

        37.5% {
            -webkit-transform: rotate(405deg);
            transform:rotate(405deg)
        }

        50% {
            -webkit-transform: rotate(540deg);
            transform:rotate(540deg)
        }

        62.5% {
            -webkit-transform: rotate(675deg);
            transform:rotate(675deg)
        }

        75% {
            -webkit-transform: rotate(810deg);
            transform:rotate(810deg)
        }

        87.5% {
            -webkit-transform: rotate(945deg);
            transform:rotate(945deg)
        }

        100% {
            -webkit-transform: rotate(3turn);
            transform:rotate(3turn)
        }
    }

    @keyframes qli-fill-unfill-rotate {
        0% {
            -webkit-transform: rotate(0);
            transform:rotate(0)
        }

        12.5% {
            -webkit-transform: rotate(135deg);
            transform:rotate(135deg)
        }

        25% {
            -webkit-transform: rotate(270deg);
            transform:rotate(270deg)
        }

        37.5% {
            -webkit-transform: rotate(405deg);
            transform:rotate(405deg)
        }

        50% {
            -webkit-transform: rotate(540deg);
            transform:rotate(540deg)
        }

        62.5% {
            -webkit-transform: rotate(675deg);
            transform:rotate(675deg)
        }

        75% {
            -webkit-transform: rotate(810deg);
            transform:rotate(810deg)
        }

        87.5% {
            -webkit-transform: rotate(945deg);
            transform:rotate(945deg)
        }

        100% {
            -webkit-transform: rotate(3turn);
            transform:rotate(3turn)
        }
    }

    @-webkit-keyframes qli-blue-fade-in-out {
        0% {
            opacity:0.99
        }

        25% {
            opacity:0.99
        }

        26% {
            opacity:0
        }

        89% {
            opacity:0
        }

        90% {
            opacity:0.99
        }

        100% {
            opacity:0.99
        }
    }

    @keyframes qli-blue-fade-in-out {
        0% {
            opacity:0.99
        }

        25% {
            opacity:0.99
        }

        26% {
            opacity:0
        }

        89% {
            opacity:0
        }

        90% {
            opacity:0.99
        }

        100% {
            opacity:0.99
        }
    }

    @-webkit-keyframes qli-red-fade-in-out {
        0% {
            opacity:0
        }

        15% {
            opacity:0
        }

        25% {
            opacity:0.99
        }

        50% {
            opacity:0.99
        }

        51% {
            opacity:0
        }
    }

    @keyframes qli-red-fade-in-out {
        0% {
            opacity:0
        }

        15% {
            opacity:0
        }

        25% {
            opacity:0.99
        }

        50% {
            opacity:0.99
        }

        51% {
            opacity:0
        }
    }

    @-webkit-keyframes qli-yellow-fade-in-out {
        0% {
            opacity:0
        }

        40% {
            opacity:0
        }

        50% {
            opacity:0.99
        }

        75% {
            opacity:0.99
        }

        76% {
            opacity:0
        }
    }

    @keyframes qli-yellow-fade-in-out {
        0% {
            opacity:0
        }

        40% {
            opacity:0
        }

        50% {
            opacity:0.99
        }

        75% {
            opacity:0.99
        }

        76% {
            opacity:0
        }
    }

    @-webkit-keyframes qli-green-fade-in-out {
        0% {
            opacity:0
        }

        65% {
            opacity:0
        }

        75% {
            opacity:0.99
        }

        90% {
            opacity:0.99
        }

        100% {
            opacity:0
        }
    }

    @keyframes qli-green-fade-in-out {
        0% {
            opacity:0
        }

        65% {
            opacity:0
        }

        75% {
            opacity:0.99
        }

        90% {
            opacity:0.99
        }

        100% {
            opacity:0
        }
    }

    .beDQP {
        display: inline-block;
        height: 100%;
        overflow: hidden;
        position: relative;
        width:50%
    }

    .FcXfi {
        box-sizing: border-box;
        height: 100%;
        left: 45%;
        overflow: hidden;
        position: absolute;
        top: 0;
        width:10%
    }

    .SPKFmc {
        border-radius: 50%;
        border: 3px solid transparent;
        box-sizing:border-box
    }

    .x3SdXd {
        width:200%
    }

    .J7uuUe {
        -webkit-transform: rotate(129deg);
        transform:rotate(129deg)
    }

    .sDPIC {
        left: -100%;
        -webkit-transform: rotate(-129deg);
        transform:rotate(-129deg)
    }

    .tS3P5 {
        left: -450%;
        width:1000%
    }

    .VQdeab .SPKFmc {
        border-color:#4285f4
    }

    .IEqiAf .SPKFmc {
        border-color:#ea4335
    }

    .smocse .SPKFmc {
        border-color:#fbbc04
    }

    .FlKbCe .SPKFmc {
        border-color:#34a853
    }

    .RoKmhb .J7uuUe {
        border-bottom-color: transparent;
        border-right-color:transparent
    }

    .RoKmhb .sDPIC {
        border-bottom-color: transparent;
        border-left-color:transparent
    }

    .RoKmhb .tS3P5 {
        border-bottom-color:transparent
    }

    .GgTJWe .nNMuOd .J7uuUe {
        -webkit-animation: qli-left-spin 1333ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        animation:qli-left-spin 1333ms cubic-bezier(0.4, 0, 0.2, 1) infinite both
    }

    .GgTJWe .nNMuOd .sDPIC {
        -webkit-animation: qli-right-spin 1333ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        animation:qli-right-spin 1333ms cubic-bezier(0.4, 0, 0.2, 1) infinite both
    }

    .BSnLb .nNMuOd .J7uuUe {
        -webkit-animation: qli-left-spin 1333ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        animation: qli-left-spin 1333ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        border-left-color: #fff;
        border-top-color:#fff
    }

    .BSnLb .nNMuOd .sDPIC {
        -webkit-animation: qli-right-spin 1333ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        animation: qli-right-spin 1333ms cubic-bezier(0.4, 0, 0.2, 1) infinite both;
        border-right-color: #fff;
        border-top-color:#fff
    }

    .BSnLb .nNMuOd .tS3P5 {
        border-color: #fff;
        border-bottom-color:transparent
    }

    @-webkit-keyframes qli-left-spin {
        0% {
            -webkit-transform: rotate(130deg);
            transform:rotate(130deg)
        }

        50% {
            -webkit-transform: rotate(-5deg);
            transform:rotate(-5deg)
        }

        100% {
            -webkit-transform: rotate(130deg);
            transform:rotate(130deg)
        }
    }

    @keyframes qli-left-spin {
        0% {
            -webkit-transform: rotate(130deg);
            transform:rotate(130deg)
        }

        50% {
            -webkit-transform: rotate(-5deg);
            transform:rotate(-5deg)
        }

        100% {
            -webkit-transform: rotate(130deg);
            transform:rotate(130deg)
        }
    }

    @-webkit-keyframes qli-right-spin {
        0% {
            -webkit-transform: rotate(-130deg);
            transform:rotate(-130deg)
        }

        50% {
            -webkit-transform: rotate(5deg);
            transform:rotate(5deg)
        }

        100% {
            -webkit-transform: rotate(-130deg);
            transform:rotate(-130deg)
        }
    }

    @keyframes qli-right-spin {
        0% {
            -webkit-transform: rotate(-130deg);
            transform:rotate(-130deg)
        }

        50% {
            -webkit-transform: rotate(5deg);
            transform:rotate(5deg)
        }

        100% {
            -webkit-transform: rotate(-130deg);
            transform:rotate(-130deg)
        }
    }

    .gTewb {
        padding-left: 8px;
        padding-right:8px
    }

    .ouy7Mc {
        padding-left: 16px;
        padding-right:16px
    }

    sentinel {
    }

    .z1asCe {
        display: inline-block;
        fill: currentColor;
        height: 24px;
        line-height: 24px;
        position: relative;
        width:24px
    }

    .z1asCe svg {
        display: block;
        height: 100%;
        width: 100%
    }
    </style>
</head>
<body jsmodel="hspDDf">
    <style>
    .L3eUgb {
        display: flex;
        flex-direction: column;
        height:100%
    }

    .o3j99 {
        flex-shrink: 0;
        box-sizing:border-box
    }

    .n1xJcf {
        height:60px
    }

    .LLD4me {
        min-height: 150px;
        max-height: 290px;
        height:calc(100% - 560px)
    }

    .yr19Zb {
        min-height:92px
    }

    .ikrT4e {
        max-height:160px
    }

    .mwht9d {
        position: absolute;
        left:-1000px
    }

    .ADHj4e {
        padding-top: 0px;
        padding-bottom:85px
    }

    .oWyZre {
        width: 100%;
        height: 500px;
        border-width:0
    }

    .qarstb {
        flex-grow: 1
    }
    </style>
    <div class="L3eUgb" data-hveid="1">
        <div class="o3j99 n1xJcf Ne6nSd">
            <style>
            .Ne6nSd {
                display: flex;
                align-items: center;
                padding:6px
            }

            .LX3sZb {
                display: inline-block;
                flex-grow: 1
            }
            </style>
            <div class="LX3sZb">
                <div class="gb_Ha gb_f gb_8a" id="gb">
                    <div class="gb_sd gb_6a gb_hd" data-ogsr-up="">
                        <div>
                            <div class="gb_yd gb_A gb_Tf gb_Kf" data-ogbl="">
                                <div class="gb_z gb_A">
                                    <a class="gb_y" aria-label="Gmail (opens a new tab)" data-pid="23" href="https://mail.google.com/mail/?authuser=0&amp;ogbl" target="_top">Gmail</a>
                                </div>
                                <div class="gb_z gb_A">
                                    <a class="gb_y" aria-label="Search for Images (opens a new tab)" data-pid="2" href="https://www.google.com/imghp?hl=en&amp;authuser=0&amp;ogbl" target="_top">Images</a>
                                </div>
                            </div>
                        </div>
                        <div class="gb_Md">
                            <div class="gb_Xc">
                                <div class="gb_h gb_Hd gb_A" data-ogsr-fb="true" data-ogsr-alt="" id="gbwa">
                                    <div class="gb_g">
                                        <a class="gb_d" aria-label="Google apps" href="https://www.google.by/intl/en/about/products" aria-expanded="false" role="button" tabindex="0">
                                            <svg class="gb_j" focusable="false" viewbox="0 0 24 24">
                                                <path d="M6,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM6,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM6,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM16,6c0,1.1 0.9,2 2,2s2,-0.9 2,-2 -0.9,-2 -2,-2 -2,0.9 -2,2zM12,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM18,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM18,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2z"></path>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="gb_b gb_Hd gb_Tf gb_A">
                                <div class="gb_g gb_5a gb_Tf gb_A">
                                    <a class="gb_d gb_xa gb_A" aria-label="Google Account: Kirillinski  &#10;(kirillinski2006@gmail.com)" href="https://accounts.google.com/SignOutOptions?hl=en&amp;continue=https://www.google.com/%3Fclient%3Dsafari%26channel%3Diphone_bm&amp;ec=GBRAmgQ" role="button" tabindex="0">
                                        <img class="gb_n gbii" src="https://lh3.googleusercontent.com/ogw/AGvuzYaqkPSr2Du2wye4ecTD65GaY2QXBU6kT0GDd0Dz=s32-c-mo" srcset="https://lh3.googleusercontent.com/ogw/AGvuzYaqkPSr2Du2wye4ecTD65GaY2QXBU6kT0GDd0Dz=s32-c-mo 1x, https://lh3.googleusercontent.com/ogw/AGvuzYaqkPSr2Du2wye4ecTD65GaY2QXBU6kT0GDd0Dz=s64-c-mo 2x " alt="" aria-hidden="true" data-noaft="">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="o3j99 LLD4me yr19Zb LS8OJ">
            <style>
            .LS8OJ {
                display: flex;
                flex-direction: column;
                align-items:center
            }

            .k1zIA {
                height: 100%;
                margin-top: auto
            }
            </style>
            <div class="k1zIA rSk4se">
                <style>
                .rSk4se {
                    max-height: 92px;
                    position:relative
                }

                .lnXdpd {
                    max-height: 100%;
                    max-width: 100%;
                    object-fit: contain;
                    object-position: center bottom;
                    width: auto
                }
                </style>
                <img class="lnXdpd" alt="Google" height="92" src="/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png" srcset="/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png 1x, /images/branding/googlelogo/2x/googlelogo_color_272x92dp.png 2x" width="272">
            </div>
        </div>
        <div class="o3j99 ikrT4e om7nvf">
            <style>
            .om7nvf {
                padding: 20px
            }
            </style>
            <form action="/search" autocomplete="off" method="GET" role="search">
                <div jsmodel="ZrDSAb P9Kqfe" jsdata="MuIEvd;_;AB0+VE">
                    <div jscontroller="cnjECf" jsmodel="VYkzu kjkykd a4L2gc QwwFZb BFDhle gx0hCb TnHSdd icv1ie " class="A8SBwf" data-adhe="false" data-alt="false" data-hp="true" data-mof="false" jsdata="LVplcb;_;" jsaction="lX6RWd:w3Wsmc;ocDSvd:duwfG;DR74Fd:KyvVPe;DkpM0b:d3sQLd;IQOavd:dFyQEf;XzZZPe:jI3wzf;Aghsf:AVsnlb;iHd9U:Q7Cnrc;f5hEHe:G0jgYd;vmxUb:j3bJnb;nTzfpf:YPRawb;R2c5O:LuRugf;qiCkJd:ANdidc;htNNz:SNIJTd;NOg9L:HLgh3;uGoIkd:epUokb;zLdLw:eaGBS;H9muVd:J4e6lb;djyPCf:nMeUJf;hBEIVb:nUZ9le;rcuQ6b:npT2md">
                        <style>
                        .A8SBwf, .IormK {
                            width: 640px;
                        }

                        .A8SBwf {
                            margin: 0 auto;
                            padding-top: 6px;
                            width: auto;
                            max-width: 584px;
                            position: relative;
                        }

                        .RNNXgb {
                            display: flex;
                            z-index: 3;
                            min-height: 44px;
                            background: #fff;
                            border: 1px solid #dfe1e5;
                            box-shadow: none;
                            border-radius: 24px;
                            margin: 0 auto;
                            width: 638px;
                            width: auto;
                            max-width: 584px;
                        }

                        .minidiv .RNNXgb {
                            min-height: 32px;
                            border-radius: 16px;
                            background: #fff;
                            margin: 10px 0 0;
                        }

                        .emcav .RNNXgb {
                            border-bottom-left-radius: 0;
                            border-bottom-right-radius: 0;
                            box-shadow: 0 1px 6px rgba(32, 33, 36, .28);
                            border-color:rgba(223, 225, 229, 0)
                        }

                        .minidiv .emcav .RNNXgb {
                            border-bottom-left-radius: 0;
                            border-bottom-right-radius: 0;
                        }

                        .emcav.emcat .RNNXgb {
                            border-bottom-left-radius: 24px;
                            border-bottom-right-radius:24px
                        }

                        .minidiv .emcav.emcat .RNNXgb {
                            border-bottom-left-radius: 16px;
                            border-bottom-right-radius:16px
                        }

                        .RNNXgb:hover, .sbfc .RNNXgb {
                            background-color: #fff;
                            box-shadow: 0 1px 6px rgba(32, 33, 36, .28);
                            border-color:rgba(223, 225, 229, 0)
                        }

                        .SDkEP {
                            flex: 1;
                            display: flex;
                            padding: 5px 8px 0 14px;
                        }

                        .minidiv .SDkEP {
                            padding-top:0
                        }

                        .FPdoLc {
                            padding-top:18px
                        }

                        .iblpc {
                            display: flex;
                            align-items: center;
                            padding-right: 13px;
                            margin-top: -5px;
                            height:46px
                        }

                        .minidiv .iblpc {
                            margin-top: 0;
                            height:32px
                        }

                        .M8H8pb {
                            position: absolute;
                            top: 0;
                            left: 0;
                            right: 0;
                            padding: inherit;
                            width: inherit
                        }
                        </style>
                        <style>
                        .CKb9sd {
                            background: none;
                            display: flex;
                            flex: 0 0 auto
                        }
                        </style>
                        <div class="RNNXgb" jsname="RNNXgb">
                            <div class="SDkEP">
                                <div class="iblpc" jsname="uFMOof">
                                    <style>
                                    .CcAdNb {
                                        margin:auto
                                    }

                                    .QCzoEc {
                                        margin-top: 3px;
                                        color: #9aa0a6
                                    }
                                    </style>
                                    <div class="CcAdNb">
                                        <span class="QCzoEc z1asCe MZy1Rb" style="height:20px;line-height:20px;width:20px">
                                            <svg focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path d="M15.5 14h-.79l-.28-.27A6.471 6.471 0 0 0 16 9.5 6.5 6.5 0 1 0 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                                <div jscontroller="vZr2rb" class="a4bIc" data-hpmde="false" data-mnr="10" jsname="gLFyf" jsaction="h5M12e;input:d3sQLd;blur:jI3wzf;keydown:uYT2Vb">
                                    <style>
                                    .gLFyf, .YacQv {
                                        line-height: 34px;
                                        font-size: 16px;
                                        flex: 100%;
                                    }

                                    textarea.gLFyf, .YacQv {
                                        font-family: arial, sans-serif;
                                        line-height: 22px;
                                        margin-bottom: 8px;
                                        overflow-x:hidden
                                    }

                                    textarea.gLFyf {
                                    }

                                    .sbfc textarea.gLFyf {
                                        white-space: pre-line;
                                        overflow-y:auto
                                    }

                                    .gLFyf {
                                        resize: none;
                                        background-color: transparent;
                                        border: none;
                                        margin: 0;
                                        padding: 0;
                                        color: rgba(0, 0, 0, .87);
                                        word-wrap: break-word;
                                        outline: none;
                                        display: flex;
                                        -webkit-tap-highlight-color:transparent
                                    }

                                    .a4bIc {
                                        display: flex;
                                        flex-wrap: wrap;
                                        flex: 1;
                                        margin-top:6px
                                    }

                                    .YacQv {
                                        color: transparent;
                                        white-space: pre;
                                        position: absolute;
                                        pointer-events:none
                                    }

                                    .YacQv span {
                                        -webkit-text-decoration: #d93025 dotted underline;
                                    }
                                    </style>
                                    <div jsname="vdLsw" class="YacQv"></div>
                                    <textarea jsname="yZiJbe" class="gLFyf" jsaction="paste:puy29d;" id="APjFqb" maxlength="2048" name="q" rows="1" aria-activedescendant="" aria-autocomplete="both" aria-controls="Alh6id" aria-expanded="false" aria-haspopup="both" aria-owns="Alh6id" autocapitalize="off" autocomplete="off" autocorrect="off" autofocus="" role="combobox" spellcheck="false" title="Search" type="search" value="" aria-label="Search" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ39UDCAQ"></textarea>
                                </div>
                                <div class="dRYYxd">
                                    <style>
                                    .dRYYxd {
                                        display: flex;
                                        flex: 0 0 auto;
                                        margin-top: -5px;
                                        align-items: stretch;
                                        flex-direction: row;
                                        height:44px
                                    }

                                    .minidiv .dRYYxd {
                                        margin-top: 0;
                                        height: 32px
                                    }
                                    </style>
                                    <style>
                                    .BKRPef {
                                        background: transparent;
                                        align-items: center;
                                        flex: 1 0 auto;
                                        flex-direction: row;
                                        display: flex;
                                        cursor:pointer
                                    }

                                    .vOY7J {
                                        background: transparent;
                                        border: 0;
                                        align-items: center;
                                        flex: 1 0 auto;
                                        cursor: pointer;
                                        display: none;
                                        height: 100%;
                                        line-height: 44px;
                                        outline: none;
                                        padding:0 12px
                                    }

                                    .M2vV3 {
                                        display:flex
                                    }

                                    .ExCKkf {
                                        height: 100%;
                                        color: #70757a;
                                        vertical-align: middle;
                                        outline:none
                                    }

                                    .minidiv .vOY7J {
                                        line-height:32px
                                    }

                                    .minidiv .ExCKkf {
                                        width: 20px
                                    }
                                    </style>
                                    <style>
                                    .BKRPef {
                                        padding-right:4px
                                    }

                                    .ACRAdd {
                                        border-left: 1px solid #dadce0;
                                        height:65%
                                    }

                                    .ACRAdd {
                                        display:none
                                    }

                                    .ACRAdd.M2vV3 {
                                        display: block
                                    }
                                    </style>
                                    <div jscontroller="PymCCe" jsname="RP0xob" class="BKRPef">
                                        <div class="vOY7J" tabindex="0" jsname="pkjasb" aria-label="Clear" role="button" jsaction="AVsnlb;rcuQ6b:npT2md" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ05YFCAU">
                                            <span class="ExCKkf z1asCe rzyADb" jsname="itVqKe">
                                                <svg focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                    <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                        <span jsname="s1VaRe" class="ACRAdd"></span>
                                    </div>
                                    <style>
                                    .nDcEnd {
                                        flex: 1 0 auto;
                                        display: flex;
                                        cursor: pointer;
                                        align-items: center;
                                        border: 0;
                                        background: transparent;
                                        outline: none;
                                        padding: 0 8px;
                                        width: 24px;
                                        line-height:44px
                                    }

                                    .Gdd5U {
                                        height: 24px;
                                        width: 24px;
                                        vertical-align:middle
                                    }

                                    .minidiv .nDcEnd {
                                        line-height:32px
                                    }

                                    .minidiv .Gdd5U {
                                        width: 20px;
                                        height: 20px
                                    }
                                    </style>
                                    <div jscontroller="lpsUAf" jsname="R5mgy" class="nDcEnd" data-base-lens-url="https://lens.google.com" data-checkerboard-transparent-images-background-enabled="false" data-convert-transparent-images="true" data-downscaling-enabled="true" data-downscaling-max-longest-edge-pixels="1000" data-encoding-compression-ratio="0.4" data-image-processor-enabled="true" data-is-images-mode="false" data-is-send-dimensions-in-body-enabled="false" data-preferred-mime-type="image/jpeg" data-propagated-experiment-ids="72276982," data-transparent-image-background-color="#fff" data-transparent-image-checkerboard-color="#fff" data-upload-path="/v3/upload?ssb=1&amp;cpe=1&amp;ifg204=1&amp;" aria-label="Search by image" role="button" tabindex="0" jsaction="rcuQ6b:npT2md;h5M12e" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQhqEICAY">
                                        <svg class="Gdd5U" focusable="false" viewbox="0 0 192 192" xmlns="http://www.w3.org/2000/svg">
                                            <rect fill="none" height="192" width="192"></rect>
                                            <g>
                                                <circle fill="#34a853" cx="144.07" cy="144" r="16"></circle>
                                                <circle fill="#4285f4" cx="96.07" cy="104" r="24"></circle>
                                                <path fill="#ea4335" d="M24,135.2c0,18.11,14.69,32.8,32.8,32.8H96v-16l-40.1-0.1c-8.8,0-15.9-8.19-15.9-17.9v-18H24V135.2z"></path>
                                                <path fill="#fbbc05" d="M168,72.8c0-18.11-14.69-32.8-32.8-32.8H116l20,16c8.8,0,16,8.29,16,18v30h16V72.8z"></path>
                                                <path fill="#4285f4" d="M112,24l-32,0L68,40H56.8C38.69,40,24,54.69,24,72.8V92h16V74c0-9.71,7.2-18,16-18h80L112,24z"></path>
                                            </g>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div jscontroller="Dvn7fe" class="UUbT9" style="display:none" jsname="UUbT9" jsaction="mouseout:ItzDCd;mouseleave:MWfikb;hBEIVb:nUZ9le;YMFC3:VKssTb;vklu5c:k02QY;ldyIye:CmVOgc">
                            <style>
                            .UUbT9 {
                                position: absolute;
                                text-align: left;
                                z-index: 3;
                                cursor: default;
                                -webkit-user-select: none;
                                width: 100%;
                                margin-top: -1px;
                            }

                            .aajZCb {
                                display: flex;
                                flex-direction: column;
                                list-style-type: none;
                                margin: 0;
                                padding: 0;
                                overflow: hidden;
                                background: #fff;
                                border-radius: 0 0 24px 24px;
                                box-shadow: 0 4px 6px rgba(32, 33, 36, .28);
                                border: 0;
                                padding-bottom: 4px;
                            }

                            .minidiv .aajZCb {
                                border-bottom-left-radius: 16px;
                                border-bottom-right-radius:16px
                            }

                            .mkHrUc {
                                display: flex;
                            }

                            .h3L8Ub .rLrQHf {
                                padding-bottom:16px
                            }

                            .h3L8Ub .rLrQHf {
                                min-width: 47%;
                                width: 47%;
                                margin:8px 16px 0
                            }

                            .erkvQe {
                                padding-bottom: 8px;
                                flex: auto;
                                overflow-x:hidden
                            }

                            .RjPuVb {
                                height: 1px;
                                margin: 0 26px 0 0;
                            }

                            .S3nFnd {
                                display:flex
                            }

                            .S3nFnd .RjPuVb, .S3nFnd .aajZCb {
                                flex:0 0 auto
                            }

                            .lh87ke:link, .lh87ke:visited {
                                color: #1a0dab;
                                cursor: pointer;
                                font: 11px arial, sans-serif;
                                padding: 0 5px;
                                margin-top: -10px;
                                text-decoration: none;
                                flex: auto;
                                align-self: flex-end;
                                margin:0 16px 5px 0
                            }

                            .lh87ke:hover {
                                text-decoration:underline
                            }

                            .xtSCL {
                                border-top: 1px solid #e8eaed;
                                margin: 0 20px 0 14px;
                                padding-bottom:4px
                            }

                            .sb27 {
                                background: url(/images/searchbox/desktop_searchbox_sprites318_hr.png) no-repeat 0 -21px;
                                background-size: 20px;
                                min-height: 20px;
                                min-width: 20px;
                                height: 20px;
                                width:20px
                            }

                            .sb43 {
                                background: url(/images/searchbox/desktop_searchbox_sprites318_hr.png) no-repeat 0 0;
                                background-size: 20px;
                                min-height: 20px;
                                min-width: 20px;
                                height: 20px;
                                width:20px
                            }

                            .sb53.sb53 {
                                padding: 0 4px;
                                margin:0
                            }

                            .sb33 {
                                background: url(/images/searchbox/desktop_searchbox_sprites318_hr.png) no-repeat 0 -42px;
                                background-size: 20px;
                                height: 20px;
                                width: 20px;
                            }
                            </style>
                            <div class="RjPuVb" jsname="RjPuVb"></div>
                            <div class="aajZCb" jsname="aajZCb">
                                <div class="xtSCL"></div>
                                <div class="mkHrUc" id="Alh6id" role="presentation">
                                    <div class="erkvQe" jsname="erkvQe"></div>
                                    <div class="rLrQHf" jsname="tovEib" role="presentation"></div>
                                </div>
                                <style>
                                #shJ2Vb {
                                    display:none
                                }

                                .OBMEnb {
                                    padding: 0;
                                    margin:0
                                }

                                .G43f7e {
                                    display: flex;
                                    flex-direction: column;
                                    min-width: 0;
                                    padding: 0;
                                    margin:0
                                }

                                .Ye4jfc {
                                    flex-direction: row;
                                    flex-wrap: wrap
                                }
                                </style>
                                <div jsname="E80e9e" class="OBMEnb" id="shJ2Vb" role="presentation">
                                    <ul jsname="bw4e9b" class="G43f7e" role="listbox"></ul>
                                </div>
                                <div jsname="XiTF2e" class="OBMEnb" role="presentation">
                                    <div jsname="Q7Erhd" class="G43f7e" role="presentation"></div>
                                </div>
                                <style>
                                #ynRric {
                                    display:none
                                }

                                .ynRric {
                                    list-style-type: none;
                                    flex-direction: column;
                                    color: #70757a;
                                    font-family: Google Sans, arial, sans-serif-medium, sans-serif;
                                    font-size: 14px;
                                    margin: 0 20px 0 16px;
                                    padding: 8px 0 8px 0;
                                    line-height: 16px;
                                    width: 100%
                                }
                                </style>
                                <div class="ynRric" id="ynRric" role="presentation"></div>
                                <style>
                                .sbct {
                                    display: flex;
                                    flex-direction: column;
                                    min-width: 0;
                                    padding: 0;
                                }

                                .eIPGRd {
                                    flex: auto;
                                    display: flex;
                                    align-items: center;
                                    margin:0 20px 0 14px
                                }

                                .pcTkSc {
                                    display: flex;
                                    flex: auto;
                                    flex-direction: column;
                                    min-width: 0;
                                    padding:6px 0
                                }

                                .sbic {
                                    display: flex;
                                    align-items: center;
                                    margin: 0 13px 0 1px;
                                }

                                .sbic.vYOkbe {
                                    background: center/contain no-repeat;
                                    border-radius: 4px;
                                    min-height: 32px;
                                    min-width: 32px;
                                    margin: 4px 7px 4px -5px;
                                }

                                .sbre .wM6W7d {
                                    line-height:18px
                                }

                                .ClJ9Yb {
                                    line-height: 12px;
                                    font-size: 13px;
                                    color: #70757a;
                                    margin-top: 2px;
                                    padding-right:8px
                                }

                                .wM6W7d {
                                    display: flex;
                                    font-size: 16px;
                                    color: #212121;
                                    flex: auto;
                                    align-items: center;
                                    word-break: break-word;
                                    padding-right:8px
                                }

                                .minidiv .wM6W7d {
                                    font-size:14px
                                }

                                .WggQGd {
                                    color:#52188c
                                }

                                .wM6W7d span {
                                    flex:auto
                                }

                                .AQZ9Vd {
                                    display: flex;
                                    align-self: stretch;
                                }

                                .sbhl {
                                    border-radius: 4px;
                                    background: #f8f9fa;
                                }

                                @media (forced-colors: active) {
                                    .sbhl {
                                        background-color:highlight
                                    }
                                }

                                .mus_pc {
                                    display: block;
                                    margin:6px 0
                                }

                                .mus_il {
                                    font-family: Arial, Helvetica Neue Light, Helvetica Neue, Helvetica;
                                    padding-top: 7px;
                                    position:relative
                                }

                                .mus_il:first-child {
                                    padding-top:0
                                }

                                .mus_il_at {
                                    margin-left:10px
                                }

                                .mus_il_st {
                                    right: 52px;
                                    position:absolute
                                }

                                .mus_il_i {
                                    align: left;
                                    margin-right:10px
                                }

                                .mus_it3 {
                                    margin-bottom: 3px;
                                    max-height: 24px;
                                    vertical-align:bottom
                                }

                                .mus_it5 {
                                    height: 24px;
                                    width: 24px;
                                    vertical-align: bottom;
                                    margin-left: 10px;
                                    margin-right: 10px;
                                    transform:rotate(90deg)
                                }

                                .mus_tt3 {
                                    color: #767676;
                                    font-size: 12px;
                                    vertical-align:top
                                }

                                .mus_tt5 {
                                    color: #d93025;
                                    font-size:14px
                                }

                                .mus_tt6 {
                                    color: #188038;
                                    font-size:14px
                                }

                                .mus_tt8 {
                                    font-size: 16px;
                                    font-family:Arial, sans-serif
                                }

                                .mus_tt17 {
                                    color: #212121;
                                    font-size:20px
                                }

                                .mus_tt18 {
                                    color: #212121;
                                    font-size:28px
                                }

                                .mus_tt19 {
                                    color: #767676;
                                    font-size:12px
                                }

                                .mus_tt20 {
                                    color: #767676;
                                    font-size:14px
                                }

                                .mus_tt23 {
                                    color: #767676;
                                    font-size:18px
                                }

                                .TfeWfb {
                                    display:none
                                }

                                .xAmryf {
                                    display:none
                                }

                                .DJbVFb .TfeWfb {
                                    display: flex;
                                    flex-wrap: wrap;
                                    overflow-x: hidden;
                                    width: 100%;
                                    height:52px
                                }

                                .DJbVFb .AQZ9Vd {
                                    display:none
                                }

                                .DJbVFb .xAmryf {
                                    border-radius: 100px;
                                    background-color:#fff
                                }

                                .DJbVFb .TfeWfb {
                                    display:inherit
                                }

                                .DJbVFb .xAmryf .eL7oAc {
                                    display:none
                                }

                                .DJbVFb {
                                    background: #f8f9fa;
                                    border-radius:20px
                                }

                                .DJbVFb:hover {
                                    background:#e8eaed
                                }

                                .DJbVFb .vYOkbe {
                                    height: -1px;
                                    width: -1px;
                                    flex-shrink: 0;
                                    margin: 20px 0 20px 8px;
                                    float: right;
                                    border-radius: 16px;
                                    background-color:#fff
                                }

                                .DJbVFb.sbhl {
                                    background:#e8eaed
                                }

                                .DJbVFb .ClJ9Yb {
                                    display:none
                                }

                                .DJbVFb .wM6W7d {
                                    flex:initial
                                }

                                .DJbVFb .wM6W7d span {
                                    text-overflow: ellipsis;
                                    -webkit-box-orient: vertical;
                                    display: -webkit-box;
                                    -webkit-line-clamp: 2;
                                    overflow:hidden
                                }

                                .DJbVFb .eIPGRd {
                                    display: flex;
                                    flex-direction: row-reverse;
                                    align-items: stretch;
                                    margin:0 20px 0 14px
                                }

                                .DJbVFb .a5RLac {
                                    line-height: 24px;
                                    font-size: 20px;
                                    font-family: arial, sans-serif;
                                    padding-top: 16px;
                                    color: #4d5156;
                                    margin-bottom:auto
                                }

                                .DJbVFb.ytLedb .vYOkbe {
                                    background-color:#f8f9fa
                                }

                                .DJbVFb .kzCE2 {
                                    font-size:16px
                                }

                                .DJbVFb .wM6W7d span {
                                    color: #202124;
                                    line-height: 36px;
                                    font-weight: 400;
                                    font-size: 28px;
                                    font-family:Google Sans, arial, sans-serif
                                }

                                .DJbVFb .pcTkSc {
                                    margin: 20px 6px;
                                    padding:0
                                }

                                .DJbVFb .vYOkbe {
                                    margin: 20px 0 20px 18px;
                                    background-color: #fff;
                                    border-radius:20px
                                }

                                .DJbVFb .EOLKOc {
                                    width:calc(50% - 1px)
                                }

                                .iQxPRb {
                                    display: flex;
                                    gap:2px
                                }

                                .DJbVFb .EOLKOc:first-child {
                                    border-bottom-left-radius:20px
                                }

                                .DJbVFb .EOLKOc:last-child {
                                    border-bottom-right-radius:20px
                                }

                                .DJbVFb .AZNDm {
                                    border-top-right-radius: 20px;
                                    border-top-left-radius:20px
                                }

                                .DJbVFb .a5RLac.kzCE2 span {
                                    -webkit-line-clamp:3
                                }

                                .DJbVFb .lnnVSe {
                                    margin-bottom:auto
                                }

                                .DJbVFb .a5RLac span {
                                    text-overflow: ellipsis;
                                    -webkit-box-orient: vertical;
                                    display: -webkit-box;
                                    -webkit-line-clamp: 2;
                                    overflow: hidden;
                                    margin-right:10px
                                }

                                #bgeLZd {
                                    display:none
                                }

                                .xAmryf {
                                    box-sizing: border-box;
                                    align-items: center;
                                    height: 40px;
                                    border-radius: 8px;
                                    display: flex;
                                    color: #4d5156;
                                    border: 1px solid #dadce0;
                                    background-color: #fff;
                                    line-height:22px
                                }

                                .xAmryf .eL7oAc {
                                    fill: #4d5156;
                                    padding-top:1px
                                }

                                .xAmryf.LvqzR {
                                    background-color: #e8f0fe;
                                    cursor: pointer;
                                    color:#1a73e8
                                }

                                .xAmryf.LvqzR .eL7oAc {
                                    fill:#1a73e8
                                }

                                .jtAOgd {
                                    white-space: nowrap;
                                    font-family: Google Sans, arial, sans-serif;
                                    font-size: 14px;
                                    margin:0 14px
                                }

                                .TfeWfb {
                                    gap: 12px 6px;
                                    overflow-x: auto;
                                    -ms-overflow-style: none;
                                    scrollbar-width:none
                                }

                                .Hulzgf {
                                }

                                .TfeWfb::-webkit-scrollbar {
                                    display:none
                                }

                                .uhebGb {
                                    font-style:italic
                                }

                                #YMXe {
                                    display: none
                                }
                                </style>
                                <li data-view-type="1" class="sbct" id="YMXe" role="presentation">
                                    <div class="eIPGRd">
                                        <div class="sbic">
                                            <div class="j0GJWd" style="display:none">
                                                <div>
                                                    <img class="uHGFVd AZNDm" alt="" style="display:none">
                                                </div>
                                                <div class="iQxPRb">
                                                    <img class="uHGFVd EOLKOc" alt="" style="display:none">
                                                    <img class="uHGFVd EOLKOc" alt="" style="display:none">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pcTkSc">
                                            <div class="lnnVSe" aria-atomic="true" role="option">
                                                <div class="wM6W7d">
                                                    <span></span>
                                                </div>
                                                <div class="ClJ9Yb">
                                                    <span></span>
                                                </div>
                                                <div class="a5RLac">
                                                    <span></span>
                                                </div>
                                            </div>
                                            <style>
                                            .MagqMc .ZFiwCf {
                                                background-color: #fff;
                                                border: 1px solid #dadce0;
                                                width:100%
                                            }

                                            .MagqMc.U48fD {
                                                padding: 0;
                                                margin-top:16px
                                            }

                                            .MagqMc .Bi9oQd {
                                                display:none
                                            }

                                            .MagqMc {
                                                padding:0
                                            }

                                            .MagqMc:hover .LGwnxb {
                                                color:#202124
                                            }

                                            .sOmPcf .ZFiwCf {
                                                background-color: #fafafa
                                            }
                                            </style>
                                            <div class="Sz7Lee MagqMc U48fD" style="display:none" aria-label="See more" role="button" tabindex="0">
                                                <style>
                                                .U48fD {
                                                    -webkit-tap-highlight-color: transparent;
                                                    cursor: pointer;
                                                    display: block;
                                                    line-height: 18px;
                                                    text-overflow: ellipsis;
                                                    white-space: nowrap;
                                                    padding: 16px;
                                                    padding-top: 0;
                                                    margin-top: 24px;
                                                    position:relative
                                                }

                                                .U48fD.df13ud {
                                                    margin-top:16px
                                                }

                                                .U48fD.TOQyFc {
                                                    margin-top:0
                                                }

                                                .U48fD.p8FEIf {
                                                    padding-bottom:0
                                                }

                                                .jRKCUd::before {
                                                    bottom: 12px;
                                                    content: '';
                                                    left: 16px;
                                                    position: absolute;
                                                    right: 16px;
                                                    top:-4px
                                                }

                                                a.jRKCUd:hover {
                                                    text-decoration: none
                                                }
                                                </style>
                                                <style>
                                                .ZFiwCf {
                                                    display: flex;
                                                    align-items: center;
                                                    justify-content: center;
                                                    position: relative;
                                                    margin: 0 auto;
                                                    font-size: 14px;
                                                    font-family: arial, sans-serif;
                                                    font-weight: 400;
                                                    width: 300px;
                                                    height: 36px;
                                                    border-radius: 18px;
                                                    background-color:#f1f3f4
                                                }

                                                .TQc1id .ZFiwCf {
                                                    width:unset
                                                }

                                                .ZFiwCf:hover {
                                                    background-color:#fafafa
                                                }

                                                .nCFUpc .ZFiwCf {
                                                    width:100%
                                                }

                                                .Bi9oQd {
                                                    background-color: #dadce0;
                                                    margin-top: 18px;
                                                    position: absolute;
                                                    border: 0;
                                                    height: 1px;
                                                    left: 0;
                                                    width:100%
                                                }

                                                .TQc1id .Bi9oQd {
                                                    display:none
                                                }

                                                .kC8B4e .Bi9oQd {
                                                    display:none
                                                }

                                                .w2fKdd svg {
                                                    width:auto
                                                }

                                                .w2fKdd {
                                                    color:#70757a
                                                }

                                                .LGwnxb {
                                                    overflow: hidden;
                                                    text-overflow: ellipsis;
                                                    white-space: nowrap;
                                                    width: auto;
                                                    padding-left: 0;
                                                    padding-right: 8px;
                                                    max-width: 200px;
                                                    color:#202124
                                                }

                                                .LGwnxb:empty {
                                                    padding-right:0
                                                }

                                                .LGwnxb span, .LGwnxb div {
                                                    overflow: hidden;
                                                    text-overflow: ellipsis;
                                                    white-space: nowrap;
                                                    width: auto
                                                }
                                                </style>
                                                <hr class="Bi9oQd" aria-hidden="true">
                                                <div class="ZFiwCf">
                                                    <span class="LGwnxb">See more</span>
                                                    <span class="w2fKdd z1asCe lYxQe" style="height:20px;line-height:20px;width:20px">
                                                        <svg focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                            <path d="M12 4l-1.41 1.41L16.17 11H4v2h12.17l-5.58 5.59L12 20l8-8z"></path>
                                                        </svg>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="AQZ9Vd" aria-atomic="true" role="button">
                                            <style>
                                            .JCHpcb:hover, .LvqzR .JCHpcb {
                                                color: #1558d6;
                                                text-decoration:underline
                                            }

                                            .JCHpcb {
                                                color: #70757a;
                                                font: 13px arial, sans-serif;
                                                cursor: pointer;
                                                align-self:center
                                            }

                                            @media (hover: hover) {
                                                .sbai {
                                                    visibility:hidden
                                                }

                                                .sbhl .sbai {
                                                    visibility: inherit
                                                }
                                            }
                                            </style>
                                            <div class="sbai" role="presentation">Delete</div>
                                        </div>
                                    </div>
                                </li>
                                <style>
                                #mitGyb {
                                    display:none
                                }

                                .s2Wjec {
                                    display:block
                                }

                                .Q82Okf {
                                    font-size: 16px;
                                    font-family: Arial, sans-serif
                                }
                                </style>
                                <li data-view-type="8" class="sbct" id="mitGyb" role="presentation">
                                    <div class="eIPGRd">
                                        <div class="sbic"></div>
                                        <div class="pcTkSc">
                                            <div aria-atomic="true" class="lnnVSe" role="option">
                                                <div class="wM6W7d s2Wjec">
                                                    <span></span>
                                                </div>
                                                <div class="ClJ9Yb">
                                                    <span></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="AQZ9Vd" aria-atomic="true" role="button">
                                            <div class="sbai" role="presentation">Delete</div>
                                        </div>
                                    </div>
                                </li>
                                <div jsname="VlcLAe" class="lJ9FBc">
                                    <style>
                                    .lJ9FBc {
                                        height: 70px
                                    }

                                    .lJ9FBc input[type="submit"], .gbqfba {
                                        background-color: #f8f9fa;
                                        border: 1px solid #f8f9fa;
                                        border-radius: 4px;
                                        color: #3c4043;
                                        font-family: arial, sans-serif;
                                        font-size: 14px;
                                        margin: 11px 4px;
                                        padding: 0 16px;
                                        line-height: 27px;
                                        height: 36px;
                                        min-width: 54px;
                                        text-align: center;
                                        cursor: pointer;
                                        user-select: none
                                    }

                                    .lJ9FBc input[type="submit"]:hover {
                                        box-shadow: 0 1px 1px rgba(0, 0, 0, .1);
                                        background-color: #f8f9fa;
                                        border: 1px solid #dadce0;
                                        color: #202124
                                    }

                                    .lJ9FBc input[type="submit"]:focus {
                                        border: 1px solid #4285f4;
                                        outline: none
                                    }
                                    </style>
                                    <center>
                                        <input class="gNO89b" value="Google Search" aria-label="Google Search" name="btnK" role="button" tabindex="0" type="submit" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ4dUDCAg">
                                        <input class="RNmpXc" value="I'm Feeling Lucky" aria-label="I'm Feeling Lucky" name="btnI" type="submit" jsaction="trigger.kWlxhc" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ19QECAk">
                                    </center>
                                </div>
                            </div>
                            <style>
                            .MG7lrf {
                                font-size: 8pt;
                                margin-top: -16px;
                                position: absolute;
                                right: 16px;
                            }
                            </style>
                            <div jsname="JUypV" jscontroller="OqGDve" class="MG7lrf" data-async-context="async_id:duf3-46;authority:0;card_id:;entry_point:0;feature_id:;ftoe:0;header:0;is_jobs_spam_form:0;open:0;preselect_answer_index:-1;suggestions:;suggestions_subtypes:;suggestions_types:;surface:0;title:;type:46">
                                <style>
                                a.oBa0Fe {
                                    color: #70757a;
                                    float: right;
                                    font-style: italic;
                                    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
                                    tap-highlight-color:rgba(0, 0, 0, 0)
                                }

                                a.aciXEb {
                                    padding: 0 5px;
                                }

                                .RTZ84b {
                                    color: #70757a;
                                    cursor: pointer;
                                    padding-right:8px
                                }

                                .c2xzTb .RTZ84b {
                                    padding-top: 1px;
                                    padding-right:4px
                                }

                                .XEKxtf {
                                    color: #70757a;
                                    float: right;
                                    font-size: 12px;
                                    line-height: 16px;
                                    padding-bottom: 4px
                                }
                                </style>
                                <div jscontroller="EkevXb" style="display:none" jsaction="rcuQ6b:npT2md"></div>
                                <div id="duf3-46" data-jiis="up" data-async-type="duffy3" data-async-context-required="type,open,feature_id,async_id,entry_point,authority,card_id,ftoe,title,header,suggestions,surface,suggestions_types,suggestions_subtypes,preselect_answer_index,is_jobs_spam_form" class="yp" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ-0EICg"></div>
                                <a class="oBa0Fe aciXEb" href="#" id="sbfblt" data-async-trigger="duf3-46" aria-label="Give feedback on this result" role="button" jsaction="trigger.szjOR" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQtw8ICw">Report inappropriate predictions</a>
                            </div>
                            <style>
                            #TWnylf {
                                display:none
                            }

                            .KxWPre {
                                display: flex;
                                justify-content: flex-start;
                                padding-right: 12px;
                                margin:8px 0 4px
                            }

                            .E2ShOd {
                                font-family: Google Sans, arial, sans-serif-medium, sans-serif;
                                line-height: 16px;
                                color: #70757a;
                                font-weight: 500;
                                font-size: 14px;
                                text-align:center
                            }

                            .VUsake {
                                flex: 1
                            }
                            </style>
                            <style>
                            .KxWPre {
                                padding-right: 18px;
                                padding-left: 14px;
                                align-items:center
                            }

                            .E2ShOd {
                                margin: 0 20px 0 0
                            }
                            </style>
                            <div class="KxWPre" id="TWnylf">
                                <div class="E2ShOd"></div>
                                <span class="VUsake"></span>
                                <style>
                                .V7WNjc {
                                }

                                .wSGdUc {
                                    width: 24px;
                                    height: 24px;
                                    color: #757575;
                                }

                                .Shjy3b {
                                    background:white
                                }

                                .GuoVP {
                                    color: #4d5156;
                                    font-family: Google Sans, arial, sans-serif-medium, sans-serif;
                                    font-size: 16px
                                }
                                </style>
                                <style>
                                .Shjy3b {
                                    border-radius:4px
                                }

                                .GuoVP {
                                    padding: 2px 20px
                                }
                                </style>
                                <g-dropdown-menu class="V7WNjc" jscontroller="pFsdhd" jsdata="xJGXK;_;AB0+VI" jsshadow="" jsaction="rcuQ6b:npT2md;mMf61e:GKlhgf;YraOve:cCpuJc;kNOP9c:bzkPEc;hmb6Ye:oyYkKb;KyPa0e:G8Ofmd;wjOG7e:rWoVB;ZvRO4b:L76sMb;LyWNEf:L76sMb">
                                    <g-popup jsname="zpo2ue" jscontroller="DPreE" jsaction="A05xBd:IYtByb;EOZ57e:WFrRFb;" jsdata="mVjAjf;_;AB0+VM">
                                        <style>
                                        .UjBGL {
                                            display:block
                                        }

                                        .CcNe6e {
                                            cursor: pointer;
                                            display:inline-block
                                        }

                                        .iRQHZe {
                                            position:absolute
                                        }

                                        .Qaqu5 {
                                            position:relative
                                        }

                                        .shnMoc.CcNe6e {
                                            display:block
                                        }

                                        .v4Zpbe.CcNe6e {
                                            display: flex;
                                            height: 100%;
                                            width: 100%
                                        }
                                        </style>
                                        <div jsname="oYxtQd" class="CcNe6e" aria-expanded="false" aria-haspopup="true" jsslot="" role="button" tabindex="0" aria-label="See more" jsaction="WFrRFb;keydown:uYT2Vb">
                                            <div class="wSGdUc">
                                                <span class="IjabWd z1asCe SaPW2b">
                                                    <svg focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                        <path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>
                                        <div jsname="V68bde" class="UjBGL pkWBse iRQHZe" style="display:none;z-index:1000">
                                            <g-menu jsname="iXXGtd" class="WNN1b Shjy3b yTik0 wplJBd PBn44e iQXTJe" jscontroller="WlNQGd" role="menu" tabindex="-1" jsaction="PSl28c;focus:h06R8;keydown:uYT2Vb;mouseenter:WOQqYb;mouseleave:Tx5Rb;mouseover:IgJl9c">
                                                <g-menu-item jsname="NNJLud" class="GuoVP EpPYLd GZnQqe" jscontroller="CnSW2d" role="menuitem" tabindex="-1" data-short-label="" jsdata="zPXzie;_;AB0+VQ">
                                                    <style>
                                                    .EpPYLd {
                                                        display: block;
                                                        position:relative
                                                    }

                                                    .YpcDnf {
                                                        padding: 0 16px;
                                                        vertical-align:middle
                                                    }

                                                    .YpcDnf.HG1dvd {
                                                        padding:0
                                                    }

                                                    .HG1dvd > * {
                                                        padding:0 16px
                                                    }

                                                    .WtV5nd .YpcDnf {
                                                        padding-left:28px
                                                    }

                                                    .Zt0a5e .YpcDnf {
                                                        line-height:48px
                                                    }

                                                    .GZnQqe .YpcDnf {
                                                        line-height:23px
                                                    }

                                                    .EpPYLd:hover {
                                                        cursor:pointer
                                                    }

                                                    .EpPYLd, .CB8nDe:hover {
                                                        cursor:default
                                                    }

                                                    .LGiluc, .EpPYLd[disabled] {
                                                        pointer-events: none;
                                                        cursor:default
                                                    }

                                                    .LGiluc {
                                                        border-top: 1px solid;
                                                        height: 0;
                                                        margin:5px 0
                                                    }

                                                    .Zt0a5e.CB8nDe {
                                                        background: no-repeat left 8px center;
                                                        background-image:url(//ssl.gstatic.com/images/icons/material/system/1x/done_black_16dp.png)
                                                    }

                                                    .GZnQqe.CB8nDe {
                                                        background: no-repeat left center;
                                                        background-image:url(//ssl.gstatic.com/ui/v1/menu/checkmark2.png)
                                                    }

                                                    .GZnQqe.LGiluc, .GZnQqe.EpPYLd[disabled] {
                                                        color:#dadce0 !important
                                                    }

                                                    .GZnQqe.LGiluc {
                                                        border-top-color: #dadce0;
                                                    }
                                                    </style>
                                                    <div jsname="ibnC6b" class="YpcDnf OSrXXb">Dismiss</div>
                                                </g-menu-item>
                                            </g-menu>
                                        </div>
                                    </g-popup>
                                </g-dropdown-menu>
                            </div>
                            <style>
                            #dh215c {
                                display:none
                            }

                            .zs1JGd {
                                padding: 4px 0;
                                display: flex;
                                align-items: center;
                                min-width:0
                            }

                            .JqPLlb {
                                font-size: 16px;
                                color: #70757a;
                                flex: 1;
                                align-items: center;
                                word-break: break-word
                            }
                            </style>
                            <style>
                            .zs1JGd {
                                cursor: pointer;
                                margin-left:14px
                            }

                            .JqPLlb {
                                padding: 6px 0;
                                color: #70757a
                            }
                            </style>
                            <div class="zs1JGd" data-view-type="7" jsname="RqJ7oe" id="dh215c" role="presentation">
                                <div class="JqPLlb" role="option" tabindex="0"></div>
                            </div>
                        </div>
                        <div jsname="mvaK7d" class="M8H8pb" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ4d8ICA8"></div>
                        <div class="FPdoLc lJ9FBc">
                            <center>
                                <input class="gNO89b" value="Google Search" aria-label="Google Search" name="btnK" role="button" tabindex="0" type="submit" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ4dUDCBA">
                                <input class="RNmpXc" value="I'm Feeling Lucky" aria-label="I'm Feeling Lucky" name="btnI" type="submit" jsaction="trigger.kWlxhc" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ19QECBE">
                            </center>
                        </div>
                    </div>
                    <div style="background:url(/images/searchbox/desktop_searchbox_sprites318_hr.png)"></div>
                </div>
                <div id="tophf">
                    <input name="client" value="safari" type="hidden">
                    <input name="sca_esv" value="558372213" type="hidden">
                    <input name="channel" value="iphone_bm" type="hidden">
                    <input name="sxsrf" value="AB5stBhiaUJdwMrYDUowY0mtOXeqjnrFew:1692442838325" type="hidden">
                    <input name="source" type="hidden" value="hp">
                    <input value="1qDgZPPLEOCL9u8P1L2KmAs" name="ei" type="hidden">
                    <input value="AD69kcEAAAAAZOCu5ouZ1AC_eYrz1v3PzanuKoHgJnYK" name="iflsig" type="hidden">
                </div>
            </form>
        </div>
        <div class="o3j99 qarstb">
            <style>
            .vcVZ7d {
                text-align: center
            }
            </style>
            <div class="vcVZ7d" id="gws-output-pages-elements-homepage_additional_languages__als">
                <style>
                #gws-output-pages-elements-homepage_additional_languages__als {
                    font-size: small;
                    margin-bottom:24px
                }

                #SIvCob {
                    color: #4d5156;
                    display: inline-block;
                    line-height: 28px;
                }

                #SIvCob a {
                    padding: 0 3px;
                }

                .H6sW5 {
                    display: inline-block;
                    margin: 0 2px;
                    white-space:nowrap
                }

                .z4hgWe {
                    display: inline-block;
                    margin: 0 2px
                }
                </style>
                <div id="SIvCob">
                    Google offered in:  
                    <a href="https://www.google.com/setprefs?sig=0_xX5IPD7nRlOY9eiLpg_aP4RN7bg%3D&amp;hl=be&amp;source=homepage&amp;sa=X&amp;ved=0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ2ZgBCBM">Беларуская</a>
                    <a href="https://www.google.com/setprefs?sig=0_xX5IPD7nRlOY9eiLpg_aP4RN7bg%3D&amp;hl=ru&amp;source=homepage&amp;sa=X&amp;ved=0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ2ZgBCBQ">русский</a>
                </div>
            </div>
        </div>
        <div class="o3j99 c93Gbe">
            <style>
            .c93Gbe {
                background:#f2f2f2
            }

            .uU7dJb {
                padding: 15px 30px;
                border-bottom: 1px solid #dadce0;
                font-size: 15px;
                color: #70757a;
                display: flex;
                flex-wrap: wrap;
                justify-content:space-between
            }

            .Wymece {
                justify-content:flex-end
            }

            .SSwjIe {
                padding:0 20px
            }

            .KxwPGc {
                display: flex;
                flex-wrap: wrap;
                justify-content:space-between
            }

            @media only screen and (max-width: 1200px) {
                .KxwPGc {
                    justify-content:space-evenly
                }
            }

            .pHiOh {
                display: block;
                padding: 15px;
                white-space:nowrap
            }

            .pHiOh, a.pHiOh {
                color: #70757a
            }
            </style>
            <div class="uU7dJb">Belarus</div>
            <div jscontroller="NzU6V" class="KxwPGc SSwjIe" data-sfe="false" data-sfsw="1200" jsaction="rcuQ6b:npT2md">
                <div class="KxwPGc AghGtd">
                    <a class="pHiOh" href="https://about.google/?utm_source=google-BY&amp;utm_medium=referral&amp;utm_campaign=hp-footer&amp;fg=1" data-jsarwt="1" data-usg="AOvVaw0G8x2qI5WeO9J6QvcJo75O" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQkNQCCBU">About</a>
                    <a class="pHiOh" href="https://www.google.com/intl/en_by/ads/?subid=ww-ww-et-g-awa-a-g_hpafoot1_1!o2&amp;utm_source=google.com&amp;utm_medium=referral&amp;utm_campaign=google_hpafooter&amp;fg=1" data-jsarwt="1" data-usg="AOvVaw2SH_GmNoyFyYUxWeRpYjOE" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQkdQCCBY">Advertising</a>
                    <a class="pHiOh" href="https://www.google.com/services/?subid=ww-ww-et-g-awa-a-g_hpbfoot1_1!o2&amp;utm_source=google.com&amp;utm_medium=referral&amp;utm_campaign=google_hpbfooter&amp;fg=1" data-jsarwt="1" data-usg="AOvVaw2SJ4zwRVXKyZr53qG9dm4K" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQktQCCBc">Business</a>
                    <a class="pHiOh" href="https://google.com/search/howsearchworks/?fg=1"> How Search works </a>
                </div>
                <div class="KxwPGc iTjxkf">
                    <a class="pHiOh" href="https://policies.google.com/privacy?hl=en-BY&amp;fg=1" data-jsarwt="1" data-usg="AOvVaw0kPeoL1zR5FPC_XaD7b7ty" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ8awCCBg">Privacy</a>
                    <a class="pHiOh" href="https://policies.google.com/terms?hl=en-BY&amp;fg=1" data-jsarwt="1" data-usg="AOvVaw2LQ3yOh6a6esxgbsGio_j5" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQ8qwCCBk">Terms</a>
                    <span>
                        <style>
                        .ayzqOc:hover {
                            text-decoration: underline
                        }
                        </style>
                        <span jscontroller="nabPbb" data-ffp="false" jsaction="KyPa0e:Y0y4c;BVfjhf:VFzweb;wjOG7e:gDkf4c;">
                            <style>
                            .cF4V5c {
                                background-color:#fff
                            }

                            .cF4V5c g-menu-item {
                                display: block;
                                font-size: 14px;
                                line-height: 23px;
                                white-space:nowrap
                            }

                            .cF4V5c g-menu-item a, .cF4V5c .y0fQ9c {
                                display: block;
                                padding-top: 4px;
                                padding-bottom: 4px;
                                cursor:pointer
                            }

                            .cF4V5c g-menu-item a, .cF4V5c g-menu-item a:visited, .cF4V5c g-menu-item a:hover {
                                text-decoration: inherit;
                                color: inherit
                            }
                            </style>
                            <g-popup jsname="V68bde" jscontroller="DPreE" jsaction="A05xBd:IYtByb;EOZ57e:WFrRFb;" jsdata="mVjAjf;_;AB0+VU">
                                <div jsname="oYxtQd" class="CcNe6e" aria-expanded="false" aria-haspopup="true" role="button" tabindex="0" jsaction="WFrRFb;keydown:uYT2Vb">
                                    <div jsname="LgbsSe" class="ayzqOc pHiOh" aria-controls="_1qDgZPPLEOCL9u8P1L2KmAs_1" aria-haspopup="true">Settings</div>
                                </div>
                                <div jsname="V68bde" class="UjBGL pkWBse iRQHZe" style="display:none;z-index:200">
                                    <g-menu jsname="xl07Ob" class="cF4V5c yTik0 wplJBd PBn44e iQXTJe" jscontroller="WlNQGd" role="menu" tabindex="-1" jsaction="PSl28c;focus:h06R8;keydown:uYT2Vb;mouseenter:WOQqYb;mouseleave:Tx5Rb;mouseover:IgJl9c">
                                        <g-menu-item jsname="NNJLud" jscontroller="CnSW2d" class="EpPYLd GZnQqe" role="none" data-short-label="" jsdata="zPXzie;_;AB0+VY">
                                            <div jsname="ibnC6b" class="YpcDnf OSrXXb HG1dvd" role="none">
                                                <a href="https://www.google.com/preferences?hl=en-BY&amp;client=safari&amp;fg=1" role="menuitem" tabindex="-1">Search settings</a>
                                            </div>
                                        </g-menu-item>
                                        <g-menu-item jsname="NNJLud" jscontroller="CnSW2d" class="EpPYLd GZnQqe" role="none" data-short-label="" jsdata="zPXzie;_;AB0+VY">
                                            <div jsname="ibnC6b" class="YpcDnf OSrXXb HG1dvd" role="none">
                                                <a href="/advanced_search?hl=en-BY&amp;fg=1" role="menuitem" tabindex="-1">Advanced search</a>
                                            </div>
                                        </g-menu-item>
                                        <g-menu-item jsname="NNJLud" jscontroller="CnSW2d" class="EpPYLd GZnQqe" role="none" data-short-label="" jsdata="zPXzie;_;AB0+VY">
                                            <div jsname="ibnC6b" class="YpcDnf OSrXXb HG1dvd" role="none">
                                                <a href="https://myactivity.google.com/privacyadvisor/search?utm_source=googlemenu&amp;fg=1" role="menuitem" tabindex="-1">Your data in Search</a>
                                            </div>
                                        </g-menu-item>
                                        <g-menu-item jsname="NNJLud" jscontroller="CnSW2d" class="EpPYLd GZnQqe" role="none" data-short-label="" jsdata="zPXzie;_;AB0+VY">
                                            <div jsname="ibnC6b" class="YpcDnf OSrXXb HG1dvd" role="none">
                                                <a href="https://myactivity.google.com/product/search?utm_source=google&amp;hl=en-BY&amp;fg=1" role="menuitem" tabindex="-1">Search history</a>
                                            </div>
                                        </g-menu-item>
                                        <g-menu-item jsname="NNJLud" jscontroller="CnSW2d" class="EpPYLd GZnQqe" role="none" data-short-label="" jsdata="zPXzie;_;AB0+VY">
                                            <div jsname="ibnC6b" class="YpcDnf OSrXXb HG1dvd" role="none">
                                                <a href="https://support.google.com/websearch/?p=ws_results_help&amp;hl=en-BY&amp;fg=1" role="menuitem" tabindex="-1">Search help</a>
                                            </div>
                                        </g-menu-item>
                                        <g-menu-item jsname="NNJLud" jscontroller="CnSW2d" class="EpPYLd GZnQqe" role="none" data-short-label="" jsdata="zPXzie;_;AB0+VY">
                                            <div jsname="ibnC6b" class="YpcDnf OSrXXb HG1dvd" role="none">
                                                <span data-bucket="websearch" role="menuitem" tabindex="-1" jsaction="trigger.YcfJ">Send feedback</span>
                                            </div>
                                        </g-menu-item>
                                        <g-menu-item jsname="NNJLud" jscontroller="CnSW2d" class="EpPYLd GZnQqe LGiluc" aria-hidden="true" role="separator" data-short-label="" jsdata="zPXzie;_;AB0+Vc"></g-menu-item>
                                        <g-menu-item jsname="NNJLud" jscontroller="CnSW2d" class="EpPYLd GZnQqe" role="none" data-short-label="" jsdata="zPXzie;_;AB0+VY">
                                            <div jsname="ibnC6b" class="YpcDnf OSrXXb HG1dvd" role="none">
                                                <div class="y0fQ9c" data-spl="/setprefs?hl=en&amp;prev=https://www.google.com/?client%3Dsafari%26channel%3Diphone_bm%26pccc%3D1&amp;sig=0_xX5IPD7nRlOY9eiLpg_aP4RN7bg%3D&amp;cs=2" id="YUIDDb" role="menuitem" tabindex="-1">
                                                    <style>
                                                    .tFYjZe {
                                                        align-items: center;
                                                        display: flex;
                                                        justify-content: space-between;
                                                        padding-bottom: 4px;
                                                        padding-top:4px
                                                    }

                                                    .tFYjZe:hover .iOHNLb, .tFYjZe:focus .iOHNLb {
                                                        opacity:1
                                                    }

                                                    .iOHNLb {
                                                        color: #70757a;
                                                        height: 20px;
                                                        margin-top: -2px;
                                                        opacity: 0;
                                                        width: 20px
                                                    }
                                                    </style>
                                                    <div jscontroller="fXO0xe" class="tFYjZe" data-bsdm="0" data-btf="0" data-hbc="#1a73e8" data-htc="#fff" data-spt="1" data-tsdm="0" role="link" tabindex="0" jsaction="ok5gFc;x6BCfb:ggFCce;w3Ukrf:aelxJb" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQqsEHCBw">
                                                        <div>Dark theme: Off</div>
                                                        <div class="iOHNLb">
                                                            <span style="height:20px;line-height:20px;width:20px" class="z1asCe aqvxcd">
                                                                <svg focusable="false" xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24" viewBox="0 0 24 24" width="24">
                                                                    <rect fill="none" height="24" width="24"></rect>
                                                                    <path d="M12,7c-2.76,0-5,2.24-5,5s2.24,5,5,5s5-2.24,5-5S14.76,7,12,7L12,7z M2,13l2,0c0.55,0,1-0.45,1-1s-0.45-1-1-1l-2,0 c-0.55,0-1,0.45-1,1S1.45,13,2,13z M20,13l2,0c0.55,0,1-0.45,1-1s-0.45-1-1-1l-2,0c-0.55,0-1,0.45-1,1S19.45,13,20,13z M11,2v2 c0,0.55,0.45,1,1,1s1-0.45,1-1V2c0-0.55-0.45-1-1-1S11,1.45,11,2z M11,20v2c0,0.55,0.45,1,1,1s1-0.45,1-1v-2c0-0.55-0.45-1-1-1 C11.45,19,11,19.45,11,20z M5.99,4.58c-0.39-0.39-1.03-0.39-1.41,0c-0.39,0.39-0.39,1.03,0,1.41l1.06,1.06 c0.39,0.39,1.03,0.39,1.41,0s0.39-1.03,0-1.41L5.99,4.58z M18.36,16.95c-0.39-0.39-1.03-0.39-1.41,0c-0.39,0.39-0.39,1.03,0,1.41 l1.06,1.06c0.39,0.39,1.03,0.39,1.41,0c0.39-0.39,0.39-1.03,0-1.41L18.36,16.95z M19.42,5.99c0.39-0.39,0.39-1.03,0-1.41 c-0.39-0.39-1.03-0.39-1.41,0l-1.06,1.06c-0.39,0.39-0.39,1.03,0,1.41s1.03,0.39,1.41,0L19.42,5.99z M7.05,18.36 c0.39-0.39,0.39-1.03,0-1.41c-0.39-0.39-1.03-0.39-1.41,0l-1.06,1.06c-0.39,0.39-0.39,1.03,0,1.41s1.03,0.39,1.41,0L7.05,18.36z"></path>
                                                                </svg>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </g-menu-item>
                                    </g-menu>
                                </div>
                            </g-popup>
                        </span>
                    </span>
                </div>
            </div>
            <div jscontroller="GU4Gab" style="display:none" data-pcs="1" jsaction="rcuQ6b:npT2md"></div>
        </div>
    </div>
    <div class="Fgvgjc">
        <style>
        .Fgvgjc {
            height: 0;
            overflow: hidden
        }
        </style>
        <div class="gTMtLb fp-nh" id="lb">
            <style>
            .gTMtLb {
                z-index: 1001;
                position: absolute;
                top: -1000px
            }
            </style>
        </div>
        <div jscontroller="ms4mZb" data-jiis="up" data-async-type="hpba" id="a3JU5b" class="yp" jsaction="rcuQ6b:npT2md" data-ved="0ahUKEwjzjrbxyOiAAxXghf0HHdSeArMQj-0KCB0"></div>
        <span style="display:none">
            <span jscontroller="DhPYme" style="display:none" data-mmcnt="100" jsaction="rcuQ6b:npT2md"></span>
        </span>
        <script nonce="p_Tq9wZ0x9trjT50lPtgNA">
        this.gbar_ = this.gbar_ || {};
        (function(_) {
            var window = this;
            try {
                _.nd = function(a, b, c) {
                    if (!a.j)
                        if (c instanceof Array)
                            for (var d of c)
                                _.nd(a, b, d);
                        else {
                            d = (0, _.y)(a.A, a, b);
                            const e = a.s + c;
                            a.s++;
                            b.dataset.eqid = e;
                            a.B[e] = d;
                            b && b.addEventListener ? b.addEventListener(c, d, !1) : b && b.attachEvent ? b.attachEvent("on" + c, d) : a.o.log(Error("v`" + b))
                        }
                };
            } catch (e) {
                _._DumpException(e)
            }
            try {
                _.od = function() {
                    if (!_.p.addEventListener || !Object.defineProperty)
                        return !1;
                    var a = !1,
                        b = Object.defineProperty({}, "passive", {
                            get: function() {
                                a = !0
                            }
                        });
                    try {
                        const c = () => {};
                        _.p.addEventListener("test", c, b);
                        _.p.removeEventListener("test", c, b)
                    } catch (c) {}
                    return a
                }();
            } catch (e) {
                _._DumpException(e)
            }
            try {
                var pd = document.querySelector(".gb_h .gb_d"),
                    qd = document.querySelector("#gb.gb_Oc");
                pd && !qd && _.nd(_.Zc, pd, "click");
            } catch (e) {
                _._DumpException(e)
            }
            try {
                _.hh = function(a) {
                    const b = [];
                    let c = 0;
                    for (const d in a)
                        b[c++] = a[d];
                    return b
                };
                _.ih = function(a) {
                    if (a.o)
                        return a.o;
                    for (const b in a.i)
                        if (a.i[b].qa() && a.i[b].B())
                            return a.i[b];
                    return null
                };
                _.jh = function(a, b) {
                    a.i[b.J()] = b
                };
                var kh = new class  extends _.hc{
                    constructor()
                    {
                        var a = _.jc;
                        super();
                        this.B = a;
                        this.o = null;
                        this.j = {};
                        this.A = {};
                        this.i = {};
                        this.s = null
                    }
                    v(a)
                    {
                        this.i[a] && (_.ih(this) && _.ih(this).J() == a || this.i[a].O(!0))
                    }
                    Wa(a)
                    {
                        this.s = a;
                        for (const b in this.i)
                            this.i[b].qa() && this.i[b].Wa(a)
                    }
                    wc(a)
                    {
                        return a in this.i ? this.i[a] : null
                    }
                }
                ;
                _.bd("dd", kh);
            } catch (e) {
                _._DumpException(e)
            }
            try {
                var Si = document.querySelector(".gb_b .gb_d"),
                    Ti = document.querySelector("#gb.gb_Oc");
                Si && !Ti && _.nd(_.Zc, Si, "click");
            } catch (e) {
                _._DumpException(e)
            }
        })(this.gbar_);
        // Google Inc.
        this.gbar_ = this.gbar_ || {};
        (function(_) {
            var window = this;
            try {
                var sd,
                    vd;
                _.rd = function(a) {
                    const b = a.length;
                    if (0 < b) {
                        const c = Array(b);
                        for (let d = 0; d < b; d++)
                            c[d] = a[d];
                        return c
                    }
                    return []
                };
                sd = function(a) {
                    return a
                };
                _.td = function(a) {
                    var b = null,
                        c = _.p.trustedTypes;
                    if (!c || !c.createPolicy)
                        return b;
                    try {
                        b = c.createPolicy(a, {
                            createHTML: sd,
                            createScript: sd,
                            createScriptURL: sd
                        })
                    } catch (d) {
                        _.p.console && _.p.console.error(d.message)
                    }
                    return b
                };
                _.ud = function(a, b) {
                    return 0 == a.lastIndexOf(b, 0)
                };
                _.wd = function() {
                    void 0 === vd && (vd = _.td("ogb-qtm#html"));
                    return vd
                };
                try {
                    (new self.OffscreenCanvas(0, 0)).getContext("2d")
                } catch (a) {}
                ;
                _.xd = {};
                _.yd = class {
                    constructor(a)
                    {
                        this.i = a;
                        this.Bb = !0
                    }
                    ob()
                    {
                        return this.i
                    }
                    toString()
                    {
                        return this.i.toString()
                    }
                }
                ;
                _.zd = new _.yd("", _.xd);
                _.Ad = RegExp("^[-+,.\"'%_!#/ a-zA-Z0-9\\[\\]]+$");
                _.Bd = RegExp("\\b(url\\([ \t\n]*)('[ -&(-\\[\\]-~]*'|\"[ !#-\\[\\]-~]*\"|[!#-&*-\\[\\]-~]*)([ \t\n]*\\))", "g");
                _.Cd = RegExp("\\b(calc|cubic-bezier|fit-content|hsl|hsla|linear-gradient|matrix|minmax|radial-gradient|repeat|rgb|rgba|(rotate|scale|translate)(X|Y|Z|3d)?|steps|var)\\([-+*/0-9a-zA-Z.%#\\[\\], ]+\\)", "g");
                var Dd;
                Dd = {};
                _.Fd = function(a) {
                    return a instanceof _.Ed && a.constructor === _.Ed ? a.i : "type_error:SafeHtml"
                };
                _.Gd = function(a) {
                    const b = _.wd();
                    a = b ? b.createHTML(a) : a;
                    return new _.Ed(a, Dd)
                };
                _.Ed = class {
                    constructor(a)
                    {
                        this.i = a;
                        this.Bb = !0
                    }
                    ob()
                    {
                        return this.i.toString()
                    }
                    toString()
                    {
                        return this.i.toString()
                    }
                }
                ;
                _.Hd = new _.Ed(_.p.trustedTypes && _.p.trustedTypes.emptyHTML || "", Dd);
                _.Id = _.Gd("<br>");
                var Kd;
                _.Jd = function(a) {
                    let b = !1,
                        c;
                    return function() {
                        b || (c = a(), b = !0);
                        return c
                    }
                }(function() {
                    var a = document.createElement("div"),
                        b = document.createElement("div");
                    b.appendChild(document.createElement("div"));
                    a.appendChild(b);
                    b = a.firstChild.firstChild;
                    a.innerHTML = _.Fd(_.Hd);
                    return !b.parentElement
                });
                Kd = /^[\w+/_-]+[=]{0,2}$/;
                _.Ld = function(a) {
                    a = (a || _.p).document;
                    return a.querySelector ? (a = a.querySelector('style[nonce],link[rel="stylesheet"][nonce]')) && (a = a.nonce || a.getAttribute("nonce")) && Kd.test(a) ? a : "" : ""
                };
                _.Md = function(a, b) {
                    this.width = a;
                    this.height = b
                };
                _.l = _.Md.prototype;
                _.l.aspectRatio = function() {
                    return this.width / this.height
                };
                _.l.Hb = function() {
                    return !(this.width * this.height)
                };
                _.l.ceil = function() {
                    this.width = Math.ceil(this.width);
                    this.height = Math.ceil(this.height);
                    return this
                };
                _.l.floor = function() {
                    this.width = Math.floor(this.width);
                    this.height = Math.floor(this.height);
                    return this
                };
                _.l.round = function() {
                    this.width = Math.round(this.width);
                    this.height = Math.round(this.height);
                    return this
                };
                _.Q = function(a, b) {
                    var c = b || document;
                    if (c.getElementsByClassName)
                        a = c.getElementsByClassName(a)[0];
                    else {
                        c = document;
                        var d = b || c;
                        a = d.querySelectorAll && d.querySelector && a ? d.querySelector(a ? "." + a : "") : _.Nd(c, a, b)[0] || null
                    }
                    return a || null
                };
                _.Nd = function(a, b, c) {
                    var d;
                    a = c || a;
                    if (a.querySelectorAll && a.querySelector && b)
                        return a.querySelectorAll(b ? "." + b : "");
                    if (b && a.getElementsByClassName) {
                        var e = a.getElementsByClassName(b);
                        return e
                    }
                    e = a.getElementsByTagName("*");
                    if (b) {
                        var f = {};
                        for (c = d = 0; a = e[c]; c++) {
                            var g = a.className;
                            "function" == typeof g.split && _.ua(g.split(/\s+/), b) && (f[d++] = a)
                        }
                        f.length = d;
                        return f
                    }
                    return e
                };
                _.Pd = function(a) {
                    return _.Od(document, a)
                };
                _.Od = function(a, b) {
                    b = String(b);
                    "application/xhtml+xml" === a.contentType && (b = b.toLowerCase());
                    return a.createElement(b)
                };
                _.Qd = function(a) {
                    for (var b; b = a.firstChild;)
                        a.removeChild(b)
                };
                _.Rd = function(a) {
                    return 9 == a.nodeType ? a : a.ownerDocument || a.document
                };
            } catch (e) {
                _._DumpException(e)
            }
            try {
                var le,
                    ne;
                _.ge = function(a) {
                    if (null == a)
                        return a;
                    if ("string" === typeof a) {
                        if (!a)
                            return;
                        a = +a
                    }
                    if ("number" === typeof a)
                        return a
                };
                _.he = function(a, b) {
                    var c = Array.prototype.slice.call(arguments, 1);
                    return function() {
                        var d = c.slice();
                        d.push.apply(d, arguments);
                        return a.apply(this, d)
                    }
                };
                _.ie = function(a, b) {
                    return _.ge(_.D(a, b))
                };
                _.je = function(a, b) {
                    if (void 0 !== a.ua || void 0 !== a.i)
                        throw Error("y");
                    a.i = b;
                    _.Qc(a)
                };
                _.ke = class  extends _.O{
                    constructor(a)
                    {
                        super(a)
                    }
                }
                ;
                le = class  extends _.dd{}
                ;
                _.me = function(a, b) {
                    if (b in a.i)
                        return a.i[b];
                    throw new le;
                };
                ne = 0;
                _.oe = function(a) {
                    return Object.prototype.hasOwnProperty.call(a, _.ib) && a[_.ib] || (a[_.ib] = ++ne)
                };
                _.pe = function(a) {
                    if (a instanceof _.pc)
                        return a;
                    a = "object" == typeof a && a.Bb ? a.ob() : String(a);
                    a:
                    {
                        var b = a;
                        if (_.wc) {
                            try {
                                var c = new URL(b)
                            } catch (d) {
                                b = "https:";
                                break a
                            }
                            b = c.protocol
                        } else
                            b:
                            {
                                c = document.createElement("a");
                                try {
                                    c.href = b
                                } catch (d) {
                                    b = void 0;
                                    break b
                                }
                                b = c.protocol;
                                b = ":" === b || "" === b ? "https:" : b
                            }
                    }"javascript:" === b && (a = "about:invalid#zClosurez");
                    return _.tc(a)
                };
                _.qe = function(a) {
                    return _.me(_.$c.i(), a)
                };
            } catch (e) {
                _._DumpException(e)
            }
            try {
                var Xi;
                Xi = {};
                _.Yi = class {
                    constructor(a)
                    {
                        this.i = a
                    }
                    toString()
                    {
                        return this.i + ""
                    }
                }
                ;
                _.Yi.prototype.Bb = !0;
                _.Yi.prototype.ob = function() {
                    return this.i.toString()
                };
                _.$i = function(a) {
                    return _.Zi(a).toString()
                };
                _.Zi = function(a) {
                    return a instanceof _.Yi && a.constructor === _.Yi ? a.i : "type_error:TrustedResourceUrl"
                };
                _.aj = function(a) {
                    const b = _.wd();
                    a = b ? b.createScriptURL(a) : a;
                    return new _.Yi(a, Xi)
                }; /*

                 SPDX-License-Identifier: Apache-2.0
                */



                var bj;
                try {
                    new URL("s://g"),
                    bj = !0
                } catch (a) {
                    bj = !1
                }
                _.cj = bj;
            } catch (e) {
                _._DumpException(e)
            }
            try {
                _.dj = class  extends _.O{
                    constructor(a)
                    {
                        super(a)
                    }
                }
                ;
            } catch (e) {
                _._DumpException(e)
            }
            try {
                _.ej = function(a, b, c) {
                    a.rel = c;
                    -1 != c.toLowerCase().indexOf("stylesheet") ? (a.href = _.$i(b), (b = _.Ld(a.ownerDocument && a.ownerDocument.defaultView)) && a.setAttribute("nonce", b)) : a.href = b instanceof _.Yi ? _.$i(b) : b instanceof _.pc ? _.qc(b) : _.qc(_.pe(b))
                };
            } catch (e) {
                _._DumpException(e)
            }
            try {
                _.fj = function(a) {
                    var b;
                    let c;
                    const d = null == (c = (b = (a.ownerDocument && a.ownerDocument.defaultView || window).document).querySelector) ? void 0 : c.call(b, "script[nonce]");
                    (b = d ? d.nonce || d.getAttribute("nonce") || "" : "") && a.setAttribute("nonce", b)
                };
                _.gj = function(a, b) {
                    return (b || document).getElementsByTagName(String(a))
                };
            } catch (e) {
                _._DumpException(e)
            }
            try {
                var ij = function(a, b, c) {
                        a < b ? hj(a + 1, b) : _.jc.log(Error("Y`" + a + "`" + b), {
                            url: c
                        })
                    },
                    hj = function(a, b) {
                        if (jj) {
                            const c = _.Pd("SCRIPT");
                            c.async = !0;
                            c.type = "text/javascript";
                            c.charset = "UTF-8";
                            c.src = _.Zi(jj);
                            _.fj(c);
                            c.onerror = _.he(ij, a, b, c.src);
                            _.gj("HEAD")[0].appendChild(c)
                        }
                    },
                    kj = class  extends _.O{
                        constructor(a)
                        {
                            super(a)
                        }
                    }
                    ;
                var lj = _.G(_.Uc, kj, 17) || new kj,
                    mj,
                    jj = (mj = _.G(lj, _.dj, 1)) ? _.aj(_.J(mj, 4) || "") : null,
                    nj,
                    oj = (nj = _.G(lj, _.dj, 2)) ? _.aj(_.J(nj, 4) || "") : null,
                    pj = function() {
                        hj(1, 2);
                        if (oj) {
                            const a = _.Pd("LINK");
                            a.setAttribute("type", "text/css");
                            _.ej(a, oj, "stylesheet");
                            let b = _.Ld();
                            b && a.setAttribute("nonce", b);
                            _.gj("HEAD")[0].appendChild(a)
                        }
                    };
                (function() {
                    const a = _.Vc();
                    if (_.F(a, 18))
                        pj();
                    else {
                        const b = _.ie(a, 19) || 0;
                        window.addEventListener("load", () => {
                            window.setTimeout(pj, b)
                        })
                    }
                })();
            } catch (e) {
                _._DumpException(e)
            }
        })(this.gbar_);
        // Google Inc.
        </script>
        <div>
            <div>
                <div class="gb_bd">Google apps</div>
                <div class="gb_q">
                    <div class="gb_wc">
                        <div>Google Account</div>
                        <div class="gb_wb">Kirillinski</div>
                        <div>kirillinski2006@gmail.com</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <textarea class="csi" name="csi" style="display:none"></textarea>
    <script nonce="p_Tq9wZ0x9trjT50lPtgNA">
    (function() {
        var d = google.c.sxs;
        (function() {
            var e = Date.now(),
                a = d ? "load2" : "load";
            if (google.timers && google.timers[a].t) {
                for (var b = document.getElementsByTagName("img"), f = 0, c = void 0; c = b[f++];)
                    google.c.setup(c, !1, -1);
                google.c.bofr = !1;
                google.c.e(a, "imn", String(b.length));
                google.c.ubr(!0, e);
                google.c.glu && google.c.glu();
                google.rll(window, !1, function() {
                    google.tick(a, "ol");
                    google.c.u("pr", a)
                })
            }
        })();
    }).call(this);
    (function() {
        google.jl = {
            blt: 'none',
            chnk: 0,
            dw: false,
            dwu: true,
            emtn: 0,
            end: 0,
            ico: false,
            ikb: 0,
            ine: false,
            injs: 'none',
            injt: 0,
            injth: 0,
            injv2: false,
            lls: 'default',
            pdt: 0,
            rep: 0,
            snet: true,
            strt: 0,
            ubm: false,
            uwp: true
        };
    })();
    (function() {
        var pmc = '{\x22aa\x22:{},\x22abd\x22:{\x22abd\x22:false,\x22deb\x22:false,\x22det\x22:false},\x22async\x22:{},\x22cdos\x22:{\x22bih\x22:797,\x22biw\x22:1440,\x22cdobsel\x22:false,\x22dpr\x22:\x222\x22},\x22cr\x22:{\x22qir\x22:false,\x22rctj\x22:true,\x22ref\x22:false,\x22uff\x22:false},\x22csi\x22:{},\x22d\x22:{},\x22gf\x22:{\x22pid\x22:196,\x22si\x22:true},\x22hsm\x22:{},\x22jsa\x22:{\x22csi\x22:true,\x22csir\x22:100},\x22mb4ZUb\x22:{},\x22mu\x22:{\x22murl\x22:\x22https://adservice.google.com/adsid/google/ui\x22},\x22pHXghd\x22:{},\x22sb_wiz\x22:{\x22rfs\x22:[],\x22scq\x22:\x22\x22,\x22stok\x22:\x22EZXsjwzJ9pRvvzKcpQGzSQkzaY4\x22,\x22ueh\x22:\x222e847a31_a91260ac_6abdea40_9682f26a_d0e28d2b\x22},\x22sf\x22:{}}';
        google.pmc = JSON.parse(pmc);
    })();
    (function() {
        var r = ['sb_wiz', 'aa', 'abd', 'async', 'mu', 'pHXghd', 'sf'];
        google.plm(r);
    })();
    (function() {
        var m = ['AB0+VE', '[\x22gws-wiz\x22,\x22\x22,\x22\x22,\x22\x22,null,1,0,0,12,\x22en\x22,\x22EZXsjwzJ9pRvvzKcpQGzSQkzaY4\x22,\x222e847a31a91260ac6abdea409682f26ad0e28d2b\x22,\x221qDgZPPLEOCL9u8P1L2KmAs\x22,0,\x22en-BY\x22,null,null,null,3,5,8,null,null,0,1,0,0,1,0,8,-1,null,null,null,1.15,1,null,0,0,0,0,0,0,null,0,null,0,1,0,0,1,null,\x22\x22,0,1,0,-1,null,null,0,0,null,0,0,0,\x22futura_sug_zp_si_0000000_e\x22,null,null,\x22\x22,0,null,1,-1,-1,null,1,1,0,1000,null,null,0,[\x22gws-wiz\x22,\x22\x22,\x22\x22],0,[\x22gws-wiz-local\x22,\x22\x22,\x22\x22],0,[\x22img\x22,\x22gws-wiz-img\x22,\x22i\x22],0,[\x22products-cc\x22,\x22\x22,\x22sh\x22],0,[\x22gws-wiz-modeless\x22,\x22gws-wiz-perspectives\x22,\x22\x22],0,[\x22hotel-searchbox\x22,\x22mobile-gws-wiz-hotel\x22,\x22\x22],0,[\x22gws-wiz-serp\x22,\x22\x22,\x22\x22],0,null,0,0,0,null,0,[\x22gws-wiz-serp\x22,\x22\x22,\x22\x22],0,[\x22gws-wiz-serp\x22,\x22\x22,\x22\x22],0,[\x22gws-wiz-serp\x22,\x22\x22,\x22\x22]]', 'AB0+VI', '[3,0,0,0,0,0,10,0,0]', 'AB0+VM', '[6,3,null,null,1,1,0,1,0,0,0,0]', 'AB0+VQ', '[\x22spyw\x22,1,0]', 'AB0+VU', '[3,6,null,null,1,1,0,0,0,0,0,0]', 'AB0+VY', '[\x22\x22,6,0]', 'AB0+Vc', '[\x22\x22,4,0]'];
        var a = m;
        window.W_jd = window.W_jd || {};
        for (var b = 0; b < a.length; b += 2)
            window.W_jd[a[b]] = JSON.parse(a[b + 1]);
    })();
    (function() {
        window.WIZ_global_data = {
            "S06Grb": "106967290588987437921",
            "eptZe": "/wizrpcui/_/WizRpcUi/",
            "GWsdKe": "en-BY",
            "LVIXXb": "1",
            "zChJod": "%.@.]",
            "S6lZl": "89978449",
            "w2btAe": "%.@.\"106967290588987437921\",\"106967290588987437921\",\"0\",null,null,null,1]",
            "NCGTLe": "%.@.\"ACYPWhgYx2aPeOKJ/rOwBB2uX2j73C5NHcgtLY6YZHGrGllvK8ig8v+U5JW6u0TOh5EBtBvd741WLkJMaJUzgzNEf0dV0soVbA\\u003d\\u003d\"]",
            "Yllh3e": "%.@.1692442838271859,134055392,3003293396]",
            "SNlM0e": "AD7QlO6g50lkyJEV-x_wSlVpdxzC:1692442838356",
            "QrtxK": "0",
            "oxN3nb": {
                "1": false
            },
            "Im6cmf": "/wizrpcui/_/WizRpcUi"
        };
        window.IJ_values = {
            "eG8Zqf": 1.0,
            "IvNqzc": false,
            "ZAVjNb": false,
            "oI8LH": false,
            "IXFWPb": false,
            "vSjUZd": 24,
            "HKzGBb": false,
            "B4LUOc": false,
            "q9jm5e": false,
            "zIfn3e": false,
            "bs2drc": false,
            "hnypGb": false,
            "yys2yc": false,
            "Rbaz9c": false,
            "SoPmHd": false,
            "NdHRde": false,
            "MlUHWc": false,
            "CzxWj": false,
            "kyqNwe": false,
            "ucii4d": false,
            "hK1XQe": "#fff",
            "O3122d": 14,
            "CUOpOb": 18,
            "KrguY": "#ecedef",
            "DONkrd": "#f1f3f4",
            "AILAfd": "#0060f0",
            "WdWVbc": false,
            "Tv95nc": false,
            "urls1d": false,
            "mhcbZb": false,
            "ogmk0d": false,
            "RK9az": false,
            "T62UHb": false,
            "jCekpb": false,
            "cTU58": false,
            "kRerQb": false,
            "oS0end": false,
            "AoIPu": true,
            "CieUQe": true,
            "HCMJkf": true,
            "zNiNDd": false,
            "EsWLY": false,
            "XP4Noc": false,
            "jqcxU": "#4285f4",
            "toVELc": "#f8f9fa",
            "V1TJEb": "#1a73e8",
            "eavN9c": 36,
            "XuC5Td": 24,
            "ivyWed": 28,
            "psmQyf": 6,
            "osNyZ": 1.0,
            "L6WyEf": false,
            "tswRXd": "none",
            "vq4Rhf": true,
            "mtmrtb": "0 1px 6px rgba(32,33,36,0.28)",
            "hOdcKb": false,
            "vkQXZ": "#fff",
            "U2GTk": "#fff",
            "WgRLme": "#dadce0",
            "QcZxSd": "#3c4043",
            "g4ToDf": "0 1px 2px rgba(60,64,67,.3), 0 2px 6px 2px rgba(60,64,67,.15)",
            "AsC4Mb": "#9aa0a6",
            "mub7Fd": "#f1f3f4",
            "z2SQwf": "#bdc1c6",
            "ob4Y0c": "#e8eaed",
            "M1fk3b": "#dadce0",
            "gWINCf": "#9aa0a6",
            "I6R5lf": "#f8f9fa",
            "KCMXVb": "#202124",
            "vzRvgb": "#e8f0fe",
            "HNLwz": "#d2e3fc",
            "uD3Lwc": "#d2e3fc",
            "MLAA8d": "0 1px 2px rgba(66,133,244,.3), 0 1px 3px 1px rgba(66,133,244,.15)",
            "TqDTGf": "#aecbfa",
            "m7EnTc": "#8ab4f8",
            "jyEUXe": "#d2e3fc",
            "QyzZ8e": "#174ea6",
            "CFgsb": "#1967d2",
            "lYyelb": "rgba(0,0,0,.54)",
            "gdL5yf": "rgba(0,0,0,.26)",
            "uWxHhb": "#fff",
            "tCxmde": "rgba(255,255,255,.30)",
            "m0RlKb": false,
            "wFGKdc": false,
            "klgere": "invert(1) hue-rotate(180deg)",
            "gHo7b": "#b8bbbe",
            "VBSc8c": false,
            "oX2r2c": false,
            "WitVqe": false,
            "JuXRyb": false,
            "zsYZK": "#dadce0",
            "Pi4f8d": false,
            "VD4u1d": false,
            "xxthqf": true,
            "XIHhCb": true,
            "UsVc8e": false,
            "HIMA4e": false,
            "YjL9Ce": false,
            "wsRfI": false,
            "UZoA2e": false,
            "q49bvd": false,
            "m2hzy": false,
            "jBwTk": "#3c4043",
            "eOLVib": 10,
            "fTZUNc": false,
            "YrTYaf": true,
            "WvdhF": false,
            "Rojixc": "#aecbfa",
            "QOuvIc": "#1a73e8",
            "hhsybf": false,
            "Zxl9ce": false,
            "OL2x3c": false,
            "Zun3Ef": false,
            "SOm4o": false,
            "lL47Xc": false,
            "l4Npee": false,
            "tyCgpc": "#fff",
            "H7aRye": "0px 5px 26px 0px rgba(0, 0, 0, 0.22), 0px 20px 28px 0px rgba(0, 0, 0, 0.30)",
            "U6xP0": "#4285f4",
            "A5tF3b": false,
            "j0DpSe": false,
            "GUwCvc": false,
            "ilb27b": "#4285f4",
            "jfyszc": "#1558d6",
            "MpqkGd": "#202124",
            "NXDvtf": true,
            "Lxmjn": false,
            "FydCC": false,
            "ywhzh": false,
            "EgTnfe": true,
            "kAUP3b": false,
            "hgWJ8c": false,
            "TxsTcf": "#000",
            "v4iQCe": "#4285f4",
            "OfqeOe": "#4285f4",
            "zRpUk": "#4285f4",
            "QbZklb": "#e8f0fe",
            "Fcb4A": "#1a73e8",
            "VRtZRe": "#1558d6",
            "OmYlge": "#34a853",
            "y8HGgf": "#1e8e3e",
            "QDXUyc": "#188038",
            "JQWqub": "#ea4335",
            "nRwuZd": "#d93025",
            "rzzybc": "#d93025",
            "rZLJJb": "#fff",
            "hcLEtc": "#81c995",
            "GJQmmf": "#34a853",
            "hETIfb": "#dadce0",
            "NtNjtd": "#dadce0",
            "vCsrw": "#dadce0",
            "p9416c": "#f8f9fa",
            "toQ7tf": "#f8f9fa",
            "xgY1nc": "#f8f9fa",
            "p1ocJb": "#f8f9fa",
            "FCLfBe": "#f8f9fa",
            "MnC2zf": "#70757a",
            "IfdAAd": "#70757a",
            "fP2Yo": "#70757a",
            "mknyu": "#70757a",
            "PUenT": "#3c4043",
            "Z0DEKf": "#202124",
            "oHHKwf": "#202124",
            "xNPzic": "#fff",
            "KkPbyc": "#fbbc04",
            "uezre": "#fbbc04",
            "SkGiZd": "#f29900",
            "OxPRr": "#f1f3f4",
            "uiKEV": "#202124",
            "bhxjsd": false,
            "eCORE": false,
            "Co7tHc": true,
            "qcvoqe": false,
            "BPltf": "#f1f3f4",
            "kcrUme": 14,
            "bKebqb": "#202124",
            "m8l8td": "CARET",
            "qeEJkc": 40,
            "zHsZtb": "#3c4043",
            "urZDtf": "#202124",
            "zeWvtf": false,
            "qdoinb": "#70757a",
            "a4qLne": "#ea4335",
            "RifN2d": "#000",
            "Fpi7Rc": "arial,sans-serif-medium,sans-serif",
            "a2ykac": "arial,sans-serif",
            "ME4NMc": "#000",
            "BpPAcd": "#dadce0",
            "N0wyZ": "#000",
            "jxZxne": "#70757a",
            "CQvMbe": "#1a73e8",
            "fRkoq": true,
            "c4qycc": false,
            "MWZX1c": 20,
            "IBWrx": 18,
            "N98mef": false,
            "WkjuOe": false,
            "mIjP6d": false,
            "uJ8Xid": false,
            "cWwp7b": false,
            "h6eQZc": false,
            "b0Jode": false,
            "mo8CW": true,
            "CAM7Vc": false,
            "QuXhMb": false,
            "fd9gQc": false,
            "MomrM": false,
            "Vb9YJ": true,
            "OQZvxe": "0 2px 10px 0 rgba(0,0,0,0.2)",
            "fI0P7e": false,
            "Asoj0e": false,
            "AP8pqf": "#dadce0",
            "sBpVac": "rgba(0,0,0,.26)",
            "JcUGee": "#70757a",
            "PngPbb": "#202124",
            "ENmP1c": "rgba(204,204,204,.15)",
            "I69zkb": "rgba(204,204,204,.25)",
            "ib0wve": "rgba(112,117,122,.20)",
            "a8Umdd": "rgba(112,117,122,.40)",
            "LVoecd": "rgba(0,0,0,.16)",
            "yHlFbb": "rgba(0,0,0,.40)",
            "seVajd": "rgba(0,0,0,.12)",
            "esUgv": "#fff",
            "KVmtZc": "rgba(255,255,255,.30)",
            "MoAfyf": "#fff",
            "oyB9kf": "#202124",
            "bXvyY": "#fff",
            "ALMSwe": "Roboto,RobotoDraft,Helvetica,Arial,sans-serif",
            "Sgnmlc": "14px",
            "qkXvHd": "500",
            "SezQgf": "500",
            "EJG4vf": "pointer",
            "WyvaRd": "0 1px 1px rgba(0,0,0,.16)",
            "ROAn0e": "0 2px 2px 0 rgba(0,0,0,.14),0 3px 1px -2px rgba(0,0,0,.2),0 1px 5px 0 rgba(0,0,0,.12)",
            "rgHLF": true,
            "KzjxBb": false,
            "NQ4wzb": false,
            "TLsp9d": false,
            "RxFwtc": "0 4px 16px rgba(0,0,0,0.2)",
            "aM8S7c": "#666",
            "Tae7A": true,
            "c5h25": true,
            "MCowFd": false,
            "LACYrf": false,
            "uZLNF": true,
            "wku5sd": false,
            "JdPOaf": false,
            "bDOvJc": false,
            "HCImye": false,
            "ZMIIMe": true,
            "B0husb": true,
            "o28sBd": false,
            "n4eEIc": true,
            "tqmosb": "#fff",
            "HjM8R": "#fff",
            "ruFjfe": false,
            "FqP1Fc": "#000",
            "SATNMc": "1px solid #dadce0",
            "V0Bluc": "none",
            "X1bUEc": "arial,sans-serif-medium,sans-serif",
            "QZheGe": "Google Sans,arial,sans-serif-medium,sans-serif",
            "LIYDac": "arial,sans-serif",
            "mNmrAb": "#ebebeb",
            "x0VCkc": "1px solid #dadce0",
            "Rvxsx": "1px solid #dadce0",
            "qmcJmd": 6,
            "JuqxTb": "#202124",
            "E6Gkjd": "0 2px 10px 0 rgba(0,0,0,0.2)",
            "MClBOe": "rgba(0,0,0,0.1)",
            "V6eh7c": 16,
            "ZxI7Af": "#fafafa",
            "sKPNrc": "#e6e6e6",
            "AgJzQ": "#dadce0",
            "FagChc": "#fff",
            "tCGJz": "#fafafa",
            "oqx7yb": "#70757a",
            "khoEPb": "#1a0dab",
            "SfSmD": "#dadce0",
            "auaxA": "#202124",
            "qtDmFc": "#dadce0",
            "v44rSc": "#70757a",
            "YkyDVb": false,
            "s6k9tc": true,
            "tdC6kd": true,
            "fhD9ff": false,
            "avBLic": false,
            "UjGOq": false,
            "sib8M": false,
            "PGBLg": false,
            "pWkoAb": false,
            "IUj4Ye": false,
            "KYi16e": false,
            "wUvFOb": false,
            "a1lsHe": false,
            "z8cfje": false,
            "kBxgab": false,
            "aMqn0b": true,
            "PUtLDb": false,
            "lHLMtb": false,
            "Erzlz": false,
            "KQw3Q": false,
            "OQFPef": false,
            "m19P4e": false,
            "P6Ur2b": "#1a73e8",
            "uhXPIc": "#8ab4f8",
            "e127Sb": "#1c3aa9",
            "ezFdNd": "#0f9d58",
            "Wja4f": "#87ceac",
            "jjajId": "#9e9e9e",
            "d1ULv": "rgba(0,0,0,.26)",
            "lQ1kYd": "#bdbdbd",
            "fAus6": "#000",
            "NNBneb": "#5f6368",
            "MDi8Rd": "#dadce0",
            "BoJtxf": false,
            "ZTuJNc": false,
            "So4wae": false,
            "XgWQKd": true,
            "fjc61": false,
            "y1HZEd": false,
            "zAKfhf": false,
            "D8A8he": false,
            "bmQ7Rb": false,
            "nMRhJe": false,
            "xT28q": false,
            "KTkDB": false,
            "JyBo2c": false,
            "xDKXr": false,
            "FYBlgf": true,
            "FELoce": true,
            "HpkQdc": true,
            "wwQMXe": false,
            "FuMeW": false,
            "bcz7kc": false,
            "hVG5ce": false,
            "KCmv6e": false,
            "IAtx5d": true,
            "VXIo7d": "8px",
            "EiEfXb": "#dadce0",
            "IFkMhd": false,
            "lsK6rd": true,
            "zhkRO": "%.@.0,0,0,0,1,0,0,0,null,1,null,0,0,null,0,1,0,\"/setprefs?sig\\u003d0_xX5IPD7nRlOY9eiLpg_aP4RN7bg%3D\\u0026szl\\u003d0\"]",
            "w2btAe": "%.@.\"106967290588987437921\",\"106967290588987437921\",\"0\",null,null,null,1]",
            "pxO4Zd": "0",
            "mXOY5d": "%.@.null,1,2,null,[null,797,1440]]",
            "SsQ4x": "p_Tq9wZ0x9trjT50lPtgNA",
            "IYFWl": "%.@.\"#b8bbbe\"]",
            "Ht1O2b": "%.@.0]",
            "d6J1ld": "%.@.0]",
            "Oo3dKf": "%.@.\"0px 5px 26px 0px rgba(0,0,0,0.22),0px 20px 28px 0px rgba(0,0,0,0.3)\",\"#fff\"]",
            "uUBnEb": "",
            "nfxEDe": "%.@.[],0,null,0,0]",
            "auIt8": "%.@.0,0]",
            "YPqjbf": "%.@.\"rgba(0,0,0,0.9)\",\"#fff\",\"0 0 2px 0 rgba(0,0,0,0.12),0 2px 2px 0 rgba(0,0,0,0.12)\",\"1px solid #dadce0\",\"#70757a\"]",
            "MuJWjd": false,
            "GWsdKe": "en-BY",
            "frJqAd": "%.@.\"13px\",\"16px\",\"11px\",13,16,11,\"8px\",8,20]",
            "N1ycab": "en_BY",
            "AB5Xwb": "%.@.\"10px\",10,\"16px\",16,\"18px\"]",
            "Z8HLFf": "%.@.\"14px\",14]",
            "ymaOI": "%.@.40,32,14]",
            "fNpQmb": "",
            "aMI2mb": "%.@.\"0 2px 10px 0 rgba(0,0,0,0.2)\"]",
            "BZUDzc": "%.@.0,\"14px\",\"500\",\"500\",\"0 1px 1px rgba(0,0,0,.16)\",\"pointer\",\"#000\",\"rgba(0,0,0,.26)\",\"#70757a\",\"#202124\",\"rgba(204,204,204,.15)\",\"rgba(204,204,204,.25)\",\"rgba(112,117,122,.20)\",\"rgba(112,117,122,.40)\",\"#34a853\",\"#4285f4\",\"#1558d6\",\"#ea4335\",\"#fbbc04\",\"#f8f9fa\",\"#f8f9fa\",\"#202124\",\"#34a853\",\"rgba(0,0,0,.12)\",null,\"#fff\",\"rgba(255,255,255,.30)\",\"#fff\",\"#202124\",\"#fff\",null,0]",
            "v7Qvdc": "%.@.\"20px\",\"500\",\"400\",\"13px\",\"15px\",\"15px\",\"Roboto,RobotoDraft,Helvetica,Arial,sans-serif\",\"24px\",\"400\",\"32px\",\"24px\"]",
            "MgUcDb": "BY",
            "SIsrTd": false,
            "fyLpDc": "",
            "ZxtPCd": "%.@.null,null,null,null,20,20,18,\"40px\",\"36px\",\"36px\",null,null,null,null,null,null,null,null,null,null,\"#fff\",null,null,null,null,null,null,null,null,\"16px\",\"12px\",\"8px\",\"4px\",null,\"#e8f0fe\",\"#1967d2\",\"transparent\",\"#1a0dab\",\"#dadce0\",\"9999px\",\"8px\",\"#1967d2\",\"transparent\",\"#4d5156\",\"#dadce0\",\"#1967d2\",null,null,null,\"9999px\",\"Google Sans,arial,sans-serif-medium,sans-serif\",\"20px\",\"14px\",\"500\",\"#f1f3f4\",\"#202124\",\"#fff\",\"#dadce0\",\"#3c4043\",\"4px\",\"#1967d2\",\"#1967d2\",null,null,null,null,null,null,null,null,null,null,\"#4285f4\",\"2px\",null,null,\"rgba(138,180,248,0.24)\",null,null,null,null,\"34px\",null,\"7px\",\"1px\",null,null,null,null,null,null,\"rgba(26,115,232,0.08)\",\"rgba(26,115,232,0.08)\",null,\"#1967d2\",null,\"#a3c5ff\",\"#001d35\"]",
            "NyzCwe": "%.@.\"#70757a\",\"#70757a\",\"#70757a\",\"#70757a\",\"#4d5156\",\"#202124\",\"8px\",\"100%\",\"12px\",\"0px\",\"8px\",\"8px\",\"4px\",\"100%\",\"6px\",\"8px\",\"0px\",\"16px\",null,\"#747878\",\"#1f1f1f\",null,\"#5e5e5e\"]",
            "spz2q": "%.@.\"#fff\",\"0px\",null,\"0px\",null,\"0px\"]",
            "xFmcof": "%.@.\"100%\",\"4px\",\"0px\",\"20px\"]",
            "lDqiof": "%.@.\"#202124\",\"#4d5156\",\"#1a73e8\",null,\"#70757a\",\"#1a0dab\",\"#681da8\",null,null,\"#fff\",\"#4285f4\",\"#fff\",\"#e8f0fe\",\"#1967d2\",\"#f1f3f4\",\"#202124\",\"#fff\",\"#3c4043\",\"#202124\",\"#fff\",\"#fff\",\"#fff\",\"#188038\",\"#d93025\",\"#e37400\",\"#dadce0\",\"#fff\",\"rgba(0,0,0,0.6)\",\"#202124\",\"#dadce0\",\"#d2e3fc\",null,\"#1a73e8\",\"#70757a\",null,\"transparent\",\"#ecedef\",\"rgba(0,0,0,0.03)\",null,null,null,null,null,null,null,null,null,\"#ea4335\",\"#34a853\",\"#4285f4\",\"#fbbc04\",\"#fbbc04\",\"#dadce0\",\"#f8f9fa\",null,null,null,null,\"#e8f0fe\",\"#f7f8f9\",\"#ecedee\",\"rgba(32,33,36,0.5)\"]",
            "Gpnz4c": "%.@.\"#e0e9ff\",\"#e6e6e6\",\"#d2d2d2\",\"#0b57d0\",\"#747878\",\"#001d35\",\"#edf1f9\",\"#ebf1ff\",\"#001d35\",\"#d3e3fd\",\"#fff\",\"#5e5e5e\",\"#474747\",\"#1f1f1f\",\"#0b57d0\",\"#d2d2d2\",\"#0b57d0\",\"#0b57d0\",\"#a3c9ff\",\"#001d35\",\"#ecedee\",\"#f7f8f9\",\"#fff\",\"#fff\",\"#f7f8f9\",\"#e0e9ff\",\"#f5f8ff\",\"#d3e3ff\",\"#a3c9ff\",\"#fff\",\"#f5f8ff\",\"#0b57d0\",\"#545d7e\",\"#001d35\",\"#edf1f9\",\"#ebf1ff\",\"#001d35\",\"#c7dbff\",\"#fff\",\"#fff\",\"#545d7e\",\"#001d35\",\"#001d35\",\"#0b57d0\",\"#a3c9ff\",\"#0b57d0\",\"#0b57d0\",\"rgba(0,0,0,0.6)\",\"#a3c5ff\",\"#001d35\",\"#fff\",\"#f5f8ff\",\"#e5edff\"]",
            "sCU50d": "%.@.null,\"none\",null,\"0px 1px 3px rgba(60,64,67,0.08)\",null,\"0px 2px 6px rgba(60,64,67,0.16)\",null,\"0px 4px 12px rgba(60,64,67,0.24)\",null,null,\"1px solid #dadce0\",\"none\",\"none\",\"none\",\"none\",\"0px 1px 3px rgba(60,64,67,0.24)\"]",
            "w9Zicc": "%.@.\"#f1f3f4\",\"26px\",\"#e2eeff\",\"#0060f0\",\"#e2eeff\",\"1px\",\"#ecedef\",\"1px\",\"#fff\",\"#ecedef\",\"#0060f0\",\"12px\",\"12px\",\"10px\",\"16px\",\"16px\",\"20px\",\"12px\",\"10px\",\"8px\"]",
            "IkSsrf": "%.@.\"Google Sans,arial,sans-serif\",\"Google Sans,arial,sans-serif-medium,sans-serif\",\"arial,sans-serif\",\"arial,sans-serif-medium,sans-serif\",\"arial,sans-serif-light,sans-serif\"]",
            "OItNqf": "%.@.\"1px\",\"20\",\"20px\",\"14px\",\"#1f1f1f\",\"#747878\",\"#474747\",\"#1f1f1f\"]",
            "JMyuH": "%.@.null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,\"36px\",\"20px\"]",
            "j2FoS": "%.@.\"#747878\",\"#f7f8f9\",\"#1f1f1f\",\"#1f1f1f\",\"#5e5e5e\",\"#1f1f1f\",\"500\",\"Google Sans,arial,sans-serif-medium,sans-serif\",\"20px\",\"16px\",\"83px\",\"92px\",\"52px\",\"52px\",\"#5e5e5e\"]",
            "e2zoW": "%.@.\"16px\",\"12px\",\"0px\",\"8px\",\"4px\",\"2px\",\"20px\",\"24px\",\"48px\",\"20px 20px\",null,null,\"0px\",\"20px\",\"36px\",\"20px\"]",
            "W1Bte": "%.@.\"cubic-bezier(0.1,1,0.2,1)\",\"cubic-bezier(0.8,0,1,0.8)\",\"cubic-bezier(0.2,0.6,0.2,1)\",\"cubic-bezier(0.4,0,1,0.8)\",\"300\",\"100ms\",\"200ms\",\"250ms\",\"cubic-bezier(0.4,0,0.2,1)\",\"cubic-bezier(0.4,0,0.6,1)\",\"cubic-bezier(0.6,0,0,1)\",\"cubic-bezier(0,0,1,1)\",\"cubic-bezier(0.2,0,0,1)\",\"800ms\",\"1000ms\",\"400ms\",\"500ms\",\"600ms\",\"50ms\",\"400ms\",\"300ms\",\"250ms\",\"150ms\",\"250ms\",\"200ms\",\"150ms\",\"150ms\",\"300ms\",\"250ms\",\"200ms\",\"150ms\",\"450ms\",\"400ms\",\"300ms\",\"150ms\",\"300ms\",\"250ms\",\"200ms\",\"100ms\",\"250ms\",\"200ms\",\"150ms\",\"100ms\",\"250ms\",\"200ms\",\"150ms\",\"100ms\",\"300ms\",\"250ms\",\"200ms\",\"100ms\",\"null\",\"cubic-bezier(0.3,0,0.8,0.15)\",\"cubic-bezier(0.05,0.7,0.1,1)\",\"cubic-bezier(0,0,1,1)\",\"cubic-bezier(0.2,0,0,1)\",\"cubic-bezier(0.3,0,1,1)\",\"cubic-bezier(0,0,0,1)\"]",
            "u9mep": "%.@.\"#1a0dab\",\"#1a0dab\",\"#1f1f1f\",\"#1a0dab\"]",
            "mrqaQb": "%.@.14,6,68,\"#474747\"]",
            "k7Tqye": "%.@.null,null,null,null,null,null,null,\"16px\",\"12px\",\"8px\",\"20px\",\"4px\",\"9999px\",\"0px\",\"2px\"]",
            "y50LC": "%.@.null,null,\"#4d5156\",null,\"#5f6368\"]",
            "jfSEkd": "%.@.\"#4285f4\",\"#e8f0fe\",\"#1967d2\",\"#185abc\",\"#d2e3fc\",\"#d2e3fc\",\"rgba(26,115,232,0.24)\",\"rgba(60,64,67,0.38)\",\"#dadce0\",\"rgba(218,220,224,0.38)\",\"#f8f9fa\",\"#4285f4\",\"#fff\",\"rgba(32,33,36,0.16)\",\"rgba(32,33,36,0.16)\",\"rgba(32,33,36,0.32)\",\"#f1f3f4\",\"#202124\",\"rgba(32,33,36,0.08)\",\"rgba(32,33,36,0.08)\",\"rgba(32,33,36,0.24)\",\"#fff\",\"#1a73e8\",\"#1967d2\",\"rgba(26,115,232,0.08)\",\"rgba(26,115,232,0.08)\",\"rgba(26,115,232,0.24)\",\"#fff\",\"#4d5156\",\"#4d5156\",\"rgba(60,64,67,0.08)\",\"rgba(60,64,67,0.08)\",\"rgba(60,64,67,0.24)\",\"2px\",\"2px\",null,null,\"#d3e3fd\",\"1px\"]",
            "GVtPm": "%.@.\"#fff\",null,null,null,\"8px\",\"0 0 0 1px #dadce0\",\"1px solid #dadce0\",\"#fff\",\"#f7f8f9\",\"#ecedee\",\"#5e5e5e\",\"#474747\",\"26vw\",\"40vw\",\"55vw\"]",
            "MexNte": "%.@.\"700\",\"400\",\"underline\",\"none\",\"capitalize\",\"none\",\"uppercase\",\"none\",\"500\",\"lowercase\",\"italic\",null,null,\"-1px\",\"0.3px\",\"20px\",\"12px\"]",
            "Aahcnf": "%.@.\"28px\",\"36px\",\"500\",\"Google Sans,arial,sans-serif\",null,\"arial,sans-serif\",\"14px\",\"400\",\"22px\",null,\"18px\",\"24px\",\"400\",\"Google Sans,arial,sans-serif\",null,\"Google Sans,arial,sans-serif\",\"56px\",\"48px\",\"0\",null,\"400\",\"Google Sans,arial,sans-serif\",\"36px\",\"400\",\"40px\",null,\"Google Sans,arial,sans-serif\",\"36px\",\"28px\",null,\"400\",null,\"arial,sans-serif\",\"24px\",\"16px\",null,\"400\",\"arial,sans-serif\",\"16px\",\"12px\",null,\"400\",\"arial,sans-serif\",\"22px\",\"16px\",null,\"400\",\"arial,sans-serif\",\"24px\",\"20px\",null,\"400\",\"arial,sans-serif\",\"24px\",\"16px\",null,\"400\",\"arial,sans-serif\",\"18px\",\"14px\",null,\"400\",null,null,null,null,null,\"14px\",\"Google Sans,arial,sans-serif-medium,sans-serif\",\"20px\",\"400\",\"Google Sans,arial,sans-serif\",\"26px\",\"22px\",\"400\",\"Google Sans,arial,sans-serif\",\"24px\",\"16px\",\"400\",\"arial,sans-serif-medium,sans-serif\",\"12px\",\"12px\",\"Google Sans,arial,sans-serif\",\"28px\",\"22px\",\"400\"]",
            "PFhmed": "%.@.\"rgba(255,255,255,0)\"]",
            "RsSoV": "%.@.\"rgba(1,1,1,0.25)\",\"rgba(0,0,0,0)\",\"0.87\",\"3px\",14,\"10px\",\"16px\",\"2px\",\"8px\",\"2px\",\"16px\",\"12px\",\"#d93025\",\"8px\",\"12px\",\"rgba(255,255,255,0.5)\",\"4px\",\"7px\",\"700\",\"rgba(255,255,255,0.85)\"]",
            "mf1yif": "%.@.4]",
            "aKXqGc": "%.@.\"14px\",14,\"16px\",16,\"0\",0,\"none\",652,\"1px solid #dadce0\",\"normal\",\"normal\",\"#70757a\",\"12px\",\"1.34\",\"1px solid #dadce0\",\"none\",\"0\",\"none\",\"none\",\"none\",\"none\",\"6px\",\"652px\"]",
            "ZP0oif": "%.@.\"0\",\"#ebedef\"]",
            "o0P8Hf": "%.@.\"rgba(0,0,0,0.0)\",null,null,null,\"#202124\",\"#dadce0\",null,null,null,\"#f8f9fa\",\"#000\",\"#1a73e8\",\"#dadce0\",\"#fff\",\"#fff\",null,\"#70757a\",\"rgba(0,0,0,0.26)\",\"rgba(0,0,0,0.2)\",\"rgba(0,0,0,0.5)\",\"rgba(0,0,0,0.2)\",\"#fff\",\"rgba(0,0,0,0.1)\",\"#fff\",\"#70757a\",null,\"#000\",\"#fff\",\"#000\",\"rgba(0,0,0,0.0)\",\"rgba(255,255,255,0.5)\",\"rgba(0,0,0,.03)\",\"rgba(0,0,0,0.3)\",\"rgba(0,0,0,0.2)\",\"rgba(0,0,0,0.5)\",\"rgba(0,0,0,.07)\",\"rgba(0,0,0,.04)\",\"rgba(0,0,0,.26)\",\"rgba(255,255,255,.54)\",\"#70757a\",\"#70757a\",\"rgba(0,0,0,.22)\",\"rgba(0,0,0,.30)\",\"rgba(0,0,0,.06)\",\"rgba(0,0,0,.25)\",\"#d2e3fc\",\"rgba(32,33,36,.5)\",\"rgba(32,33,36,.7)\",\"rgba(255,255,255,.04)\",null,null,\"rgba(255,255,255,.8)\",\"rgba(60,64,67,.15)\",\"rgba(0,0,0,.07)\",\"rgba(0,0,0,.16)\",\"rgba(0,0,0,.08)\",\"rgba(0,0,0,.14)\",\"rgba(0,0,0,.12)\",\"rgba(0,0,0,.28)\",\"rgba(0,0,0,.18)\",\"rgba(0,0,0,.24)\",\"rgba(0,0,0,.05)\",\"rgba(0,0,0,.13)\",\"rgba(60,64,67,.3)\",\"rgba(0,0,0,.36)\",\"rgba(0,0,0,.15)\",\"rgba(32,33,36,.28)\",\"rgba(218,220,224,.7)\",\"#dadce0\",\"#fff\",\"#fff\",\"#1a73e8\",\"#000\",\"rgba(0,0,0,.0)\",\"#202124\",\"rgba(0,0,0,.8)\",\"rgba(26,115,232,0)\",\"rgba(26,115,232,.7)\",\"rgba(66,133,244,.22)\",\"rgba(32,33,36,.7)\",\"rgba(0,0,0,.8)\",\"rgba(255,255,255,.54)\",\"rgba(255,255,255,.87)\",\"rgba(60,64,67,.38)\",\"rgba(0,0,0,.8)\",\"rgba(255,255,255,.54)\",\"rgba(255,255,255,.87)\",\"rgba(60,64,67,.38)\",\"rgba(255,255,255,.3)\",\"rgba(0,0,0,0.54)\",\"rgba(0,0,0,0.8)\",\"rgba(248,249,250,0.85)\",\"#dadce0\",\"#ea4335\",\"#34a853\",\"#3c4043\",\"#f8f9fa\",\"#3c4043\",\"#202124\",{\"100\":\"#f8f9fa\",\"101\":\"#dadce0\",\"102\":\"#3c4043\",\"103\":\"#202124\",\"104\":\"#f8f9fa\",\"105\":\"#dadce0\",\"106\":\"#70757a\",\"107\":\"#3c4043\",\"108\":\"#f8f9fa\",\"109\":\"#3c4043\",\"110\":\"#202124\",\"111\":\"#f8f9fa\",\"112\":\"#dadce0\",\"113\":\"#e8f0fe\",\"114\":\"#4285f4\",\"115\":\"#e8f0fe\",\"116\":\"#d2e3fc\",\"117\":\"#4285f4\",\"118\":\"#1a73e8\",\"119\":\"#e8f0fe\",\"120\":\"#d2e3fc\",\"121\":\"#4285f4\",\"122\":\"#1a73e8\",\"123\":\"#d2e3fc\",\"124\":\"#4285f4\",\"125\":\"#1a73e8\",\"126\":\"#e8f0fe\",\"127\":\"#d2e3fc\",\"128\":\"#4285f4\",\"129\":\"#1a73e8\",\"130\":\"#fce8e6\",\"131\":\"#fad2cf\",\"132\":\"#f28b82\",\"133\":\"#ee675c\",\"134\":\"#d93025\",\"135\":\"#c5221f\",\"136\":\"#a50e0e\",\"137\":\"#ea4335\",\"138\":\"#d93025\",\"139\":\"#ea4335\",\"140\":\"#d93025\",\"141\":\"#c5221f\",\"142\":\"#b31412\",\"143\":\"#a50e0e\",\"144\":\"#d93025\",\"145\":\"#f28b82\",\"146\":\"#ee675c\",\"147\":\"#ea4335\",\"148\":\"#c5221f\",\"149\":\"#a50e0e\",\"150\":\"#fef7e0\",\"151\":\"#feefc3\",\"152\":\"#fde293\",\"153\":\"#fdd663\",\"154\":\"#fcc934\",\"155\":\"#fbbc04\",\"156\":\"#f9ab00\",\"157\":\"#f29900\",\"158\":\"#ea8600\",\"159\":\"#e37400\",\"160\":\"#fbbc04\",\"161\":\"#fbbc04\",\"162\":\"#f29900\",\"163\":\"#fdd663\",\"164\":\"#fbbc04\",\"165\":\"#fcc934\",\"166\":\"#fbbc04\",\"167\":\"#f9ab00\",\"168\":\"#f29900\",\"169\":\"#ea8600\",\"170\":\"#e37400\",\"171\":\"#e6f4ea\",\"172\":\"#ceead6\",\"173\":\"#a8dab5\",\"174\":\"#81c995\",\"175\":\"#5bb974\",\"176\":\"#1e8e3e\",\"177\":\"#188038\",\"178\":\"#34a853\",\"179\":\"#1e8e3e\",\"180\":\"#188038\",\"181\":\"#34a853\",\"182\":\"#1e8e3e\",\"183\":\"#ceead6\",\"184\":\"#a8dab5\",\"185\":\"#34a853\",\"186\":\"#81c995\",\"187\":\"#34a853\",\"188\":\"#1e8e3e\",\"189\":\"#188038\",\"190\":\"#137333\",\"191\":\"#0d652d\",\"192\":\"rgba(0,0,0,.1)\",\"193\":\"rgba(0,0,0,.2)\",\"194\":\"rgba(60,64,67,.1)\",\"195\":\"rgba(60,64,67,.06)\",\"196\":\"rgba(255,255,255,0)\",\"197\":\"rgba(0,0,0,.12)\",\"198\":\"rgba(32,33,36,0)\",\"199\":\"rgba(32,33,36,.1)\",\"200\":\"rgba(0,0,0,.12)\",\"201\":\"rgba(0,0,0,.5)\",\"202\":\"rgba(0,0,0,.54)\",\"203\":\"#000\",\"204\":\"rgba(255,255,255,.5)\",\"205\":\"#1558d6\",\"206\":\"rgba(0,0,0,.24)\",\"207\":\"rgba(0,0,0,.24)\",\"208\":\"#f8f9fa\",\"209\":\"rgba(255,255,255,.6)\",\"210\":\"#1e8e3e\",\"211\":\"rgba(0,0,0,.02)\",\"212\":\"#000\",\"213\":\"rgba(0,0,0,.16)\",\"214\":\"rgba(0,0,0,.7)\",\"215\":\"#1a73e8\",\"216\":\"#d93025\",\"217\":\"#4285f4\",\"218\":\"rgba(0,0,0,.15)\",\"219\":\"rgba(0,0,0,.05)\",\"220\":\"#70757a\",\"221\":\"#dadce0\",\"222\":\"#188038\",\"223\":\"rgba(0,0,0,.6)\",\"224\":\"#34a853\",\"225\":\"rgba(255,255,255,.3)\",\"226\":\"rgba(0,0,0,.05)\",\"227\":\"rgba(0,0,0,.05)\",\"228\":\"rgba(32,33,36,.9)\",\"229\":\"rgba(255,255,255,.6)\",\"230\":\"rgba(0,0,0,.08)\",\"231\":\"rgba(255,255,255,.8)\",\"232\":\"rgba(0,0,0,.05)\",\"233\":\"#4285f4\",\"234\":\"rgba(0,0,0,.16)\",\"235\":\"#fff\",\"236\":\"rgba(0,0,0,.87)\",\"238\":\"#fdd663\",\"239\":\"#fdd663\",\"240\":\"#fff\",\"241\":\"rgba(255,255,255,.5)\",\"242\":\"#f8f9fa\",\"243\":\"#fdd663\",\"244\":\"rgba(255,255,255,.54)\",\"245\":\"rgba(0,0,0,.5)\",\"246\":\"rgba(0,0,0,.26)\",\"247\":\"rgba(0,0,0,.26)\",\"248\":\"rgba(0,0,0,.38)\",\"249\":\"rgba(0,0,0,.03)\",\"250\":\"#4285f4\",\"251\":\"rgba(60,64,67,.12)\",\"252\":\"rgba(255,255,255,0)\",\"253\":\"rgba(0,0,0,0)\",\"254\":\"#3c4043\",\"255\":\"#d2e3fc\",\"256\":\"#3c4043\",\"257\":\"#d2e3fc\",\"258\":\"#d2e3fc\",\"259\":\"#4285f4\",\"260\":\"#202124\",\"261\":\"rgba(0,0,0,.16)\",\"262\":\"rgba(255,255,255,.3)\",\"263\":\"rgba(0,0,0,0)\",\"264\":\"#c5221f\",\"265\":\"#dadce0\",\"266\":\"#ea4335\",\"267\":\"#34a853\",\"268\":\"rgba(60,64,67,.15)\",\"269\":\"rgba(19,115,51,.15)\",\"270\":\"rgba(0,0,0,.15)\",\"271\":\"rgba(0,0,0,.18)\",\"272\":\"rgba(0,0,0,.28)\",\"273\":\"rgba(60,64,67,.3)\",\"274\":\"#1558d6\"}]",
            "WiLzZe": "%.@.\"#202124\",\"#70757a\",\"#4d5156\",\"#5f6368\",\"#fff\",\"rgba(255,255,255,.70)\",28,24,26,20,16,-2,0,-4,2,0,0,24,20,20,14,12]",
            "AYkLRe": "%.@.\"20px\",20,\"14px\",14,\"\\\"rgba(0, 0, 0, .87)\\\"\"]",
            "rNyuJc": "kirillinski2006@gmail.com",
            "LU5fGb": true,
            "gXkHoe": "106967290588987437921",
            "hevonc": "%.@.1]",
            "xcljyb": "%.@.\"8px\",8,\"Roboto-Medium,HelveticaNeue-Medium,Helvetica Neue,sans-serif-medium,Arial,sans-serif\"]"
        };
    })();
    (function() {
        google.ldi = {};
        google.pim = {};
        (function() {
            var a = google.ldi || {},
                b;
            for (b in a)
                if (a.hasOwnProperty(b)) {
                    var c = document.getElementById(b) || document.documentElement.querySelector('img[data-iid="' + b + '"]');
                    c && Number(c.getAttribute("data-atf")) & 1 && (c.setAttribute("data-deferred", "2"), c.src = a[b])
                }
            ;
        }).call(this);
    })();
    (function() {
        var b = function(a) {
                var c = 0;
                return function() {
                    return c < a.length ? {
                        done: !1,
                        value: a[c++]
                    } : {
                        done: !0
                    }
                }
            },
            e = this || self;
        var g,
            h;
        a:
        {
            for (var k = ["CLOSURE_FLAGS"], l = e, n = 0; n < k.length; n++)
                if (l = l[k[n]], null == l) {
                    h = null;
                    break a
                }
            h = l
        }var p = h && h[610401301];
        g = null != p ? p : !1;
        var q,
            r = e.navigator;
        q = r ? r.userAgentData || null : null;
        function t(a) {
            return g ? q ? q.brands.some(function(c) {
                return (c = c.brand) && -1 != c.indexOf(a)
            }) : !1 : !1
        }
        function u(a) {
            var c;
            a:
            {
                if (c = e.navigator)
                    if (c = c.userAgent)
                        break a;
                c = ""
            }return -1 != c.indexOf(a)
        }
        ;
        function v() {
            return g ? !!q && 0 < q.brands.length : !1
        }
        function w() {
            return u("Safari") && !(x() || (v() ? 0 : u("Coast")) || (v() ? 0 : u("Opera")) || (v() ? 0 : u("Edge")) || (v() ? t("Microsoft Edge") : u("Edg/")) || (v() ? t("Opera") : u("OPR")) || u("Firefox") || u("FxiOS") || u("Silk") || u("Android"))
        }
        function x() {
            return v() ? t("Chromium") : (u("Chrome") || u("CriOS")) && !(v() ? 0 : u("Edge")) || u("Silk")
        }
        function y() {
            return u("Android") && !(x() || u("Firefox") || u("FxiOS") || (v() ? 0 : u("Opera")) || u("Silk"))
        }
        ;
        var z = v() ? !1 : u("Trident") || u("MSIE");
        y();
        x();
        w();
        var A = !z && !w(),
            D = function(a) {
                if (/-[a-z]/.test("ved"))
                    return null;
                if (A && a.dataset) {
                    if (y() && !("ved" in a.dataset))
                        return null;
                    a = a.dataset.ved;
                    return void 0 === a ? null : a
                }
                return a.getAttribute("data-" + "ved".replace(/([A-Z])/g, "-$1").toLowerCase())
            };
        var E = [],
            F = null;
        function G(a) {
            a = a.target;
            var c = performance.now(),
                f = [],
                H = f.concat,
                d = E;
            if (!(d instanceof Array)) {
                var m = "undefined" != typeof Symbol && Symbol.iterator && d[Symbol.iterator];
                if (m)
                    d = m.call(d);
                else if ("number" == typeof d.length)
                    d = {
                        next: b(d)
                    };
                else
                    throw Error("a`" + String(d));
                for (var B = []; !(m = d.next()).done;)
                    B.push(m.value);
                d = B
            }
            E = H.call(f, d, [c]);
            if (a && a instanceof HTMLElement)
                if (a === F) {
                    if (c = 4 <= E.length)
                        c = 5 > (E[E.length - 1] - E[E.length - 4]) / 1E3;
                    if (c) {
                        c = google.getEI(a);
                        a.hasAttribute("data-ved") ? f = a ? D(a) || "" : "" : f = (f =
                        a.closest("[data-ved]")) ? D(f) || "" : "";
                        f = f || "";
                        if (a.hasAttribute("jsname"))
                            a = a.getAttribute("jsname");
                        else {
                            var C;
                            a = null == (C = a.closest("[jsname]")) ? void 0 : C.getAttribute("jsname")
                        }
                        google.log("rcm", "&ei=" + c + "&ved=" + f + "&jsname=" + (a || ""))
                    }
                } else
                    F = a,
                    E = [c]
        }
        window.document.addEventListener("DOMContentLoaded", function() {
            document.body.addEventListener("click", G)
        });
    }).call(this);
    var w = function(a) {
        var b = 0;
        return function() {
            return b < a.length ? {
                done: !1,
                value: a[b++]
            } : {
                done: !0
            }
        }
    };
    window.jsl = window.jsl || {};
    window.jsl.dh = function(a, b, m) {
        try {
            var h = document.getElementById(a),
                e;
            if (!h && (null == (e = google.stvsc) ? 0 : e.dds)) {
                e = [];
                var f = e.concat,
                    c = google.stvsc.dds;
                if (c instanceof Array)
                    var n = c;
                else {
                    var p = "undefined" != typeof Symbol && Symbol.iterator && c[Symbol.iterator];
                    if (p)
                        var g = p.call(c);
                    else if ("number" == typeof c.length)
                        g = {
                            next: w(c)
                        };
                    else
                        throw Error(String(c) + " is not an iterable or ArrayLike");
                    c = g;
                    var q;
                    for (g = []; !(q = c.next()).done;)
                        g.push(q.value);
                    n = g
                }
                var r = f.call(e, n);
                for (f = 0; f < r.length && !(h = r[f].getElementById(a)); f++)
                    ;
            }
            if (h)
                h.innerHTML = b,
                m && m();
            else {
                var d = {
                    id: a,
                    script: String(!!m),
                    milestone: String(google.jslm || 0)
                };
                google.jsla && (d.async = google.jsla);
                var t = a.indexOf("_"),
                    k = 0 < t ? a.substring(0, t) : "",
                    u = document.createElement("div");
                u.innerHTML = b;
                var l = u.children[0];
                if (l && (d.tag = l.tagName, d["class"] = String(l.className || null), d.name = String(l.getAttribute("jsname")), k)) {
                    a = [];
                    var v = document.querySelectorAll('[id^="' + k + '_"]');
                    for (b = 0; b < v.length; ++b)
                        a.push(v[b].id);
                    d.ids = a.join(",")
                }
                google.ml(Error(k ? "Missing ID with prefix " +
                k : "Missing ID"), !1, d)
            }
        } catch (x) {
            google.ml(x, !0, {
                "jsl.dh": !0
            })
        }
    };
    (function() {
        var x = true;
        google.jslm = x ? 2 : 1;
    })();
    google.x(null, function() {
        (function() {
            (function() {
                google.csct = {};
                google.csct.ps = 'AOvVaw1QkqYRsmFTMDPPbdwubavu\x26ust\x3d1692529238347165';
            })();
        })();
        (function() {
            (function() {
                google.csct.rw = true;
            })();
        })();
        (function() {
            (function() {
                google.csct.rl = true;
            })();
        })();
        (function() {
            google.drty && google.drty(undefined, true);
        })();
    });
    if (!google.stvsc) {
        google.drty && google.drty(undefined, true);
    }
    </script>
</body>
</html>