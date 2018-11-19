<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <ul class="list-inline text-center">
                    <#if options.hux_sns_rss?default("true")=="true">
                    <li>
                        <a href="/feed.xml">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-rss fa-stack-1x fa-inverse"></i>
                            </span>
                        </a>
                    </li>
                    </#if>
                    <#if options.hux_sns_twitter??>
                    <li>
                        <a href="https://twitter.com/${options.hux_sns_twitter}">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                            </span>
                        </a>
                    </li>
                    </#if>
                    <!-- add Weibo, Zhihu by Hux, add target = "_blank" to <a> by Hux -->
                    <#if options.hux_sns_zhihu??>
                    <li>
                        <a target="_blank" href="https://www.zhihu.com/people/${options.hux_sns_zhihu}">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa  fa-stack-1x fa-inverse">知</i>
                            </span>
                        </a>
                    </li>
                    </#if>
                    <#if options.hux_sns_weibo??>
                    <li>
                        <a target="_blank" href="http://weibo.com/${options.hux_sns_weibo}">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-weibo fa-stack-1x fa-inverse"></i>
                            </span>
                        </a>
                    </li>
                    </#if>
                    <#if options.hux_sns_facebook??>
                    <li>
                        <a target="_blank" href="https://www.facebook.com/${options.hux_sns_facebook}">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                            </span>
                        </a>
                    </li>
                    </#if>
                    <#if options.hux_sns_github??>
                    <li>
                        <a target="_blank" href="https://github.com/${options.hux_sns_github}">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                            </span>
                        </a>
                    </li>
                    </#if>
                </ul>
                <p class="copyright text-muted">
                    Copyright &copy; ${options.blog_title} ${options.blog_start?substring(0,4)}
                    <br>
                    Theme by <a href="http://huangxuan.me">Hux</a> |
                    Published with <a href="https://github.com/ruibaby/halo" target="_blank">Halo</a><br>
                    <@footer_info></@footer_info>
                </p>
            </div>
        </div>
    </div>
</footer>
<!-- jQuery -->
<script src="/${themeName}/source/js/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="/${themeName}/source/js/bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="/${themeName}/source/js/hux-blog.min.js"></script>
<!-- Service Worker -->
<script src="/${themeName}/source/js/snackbar.js"></script>
<script src="/${themeName}/source/js/sw-registration.js"></script>
<!-- async load function -->
<script>
    function async(u, c) {
        var d = document, t = 'script',
                o = d.createElement(t),
                s = d.getElementsByTagName(t)[0];
        o.src = u;
        if (c) {
            o.addEventListener('load', function (e) {
                c(null, e);
            }, false);
        }
        s.parentNode.insertBefore(o, s);
    }
</script>
<!--
     Because of the native support for backtick-style fenced code blocks
     right within the Markdown is landed in Github Pages,
     From V1.6, There is no need for Highlight.js,
     so Huxblog drops it officially.

     - https://github.com/blog/2100-github-pages-now-faster-and-simpler-with-jekyll-3-0
     - https://help.github.com/articles/creating-and-highlighting-code-blocks/
-->
<script>
    async("//cdnjs.loli.net/ajax/libs/highlight.js/8.6/highlight.min.js", function(){
        hljs.initHighlightingOnLoad();
    })
</script>
<link href="//cdnjs.loli.net/ajax/libs/highlight.js/8.6/styles/github.min.css" rel="stylesheet">
<!-- jquery.tagcloud.js -->
<script>
    // only load tagcloud.js in tag.html
    if ($('#tag_cloud').length !== 0) {
        async("/${themeName}/source/js/jquery.tagcloud.js", function () {
            $.fn.tagcloud.defaults = {
                //size: {start: 1, end: 1, unit: 'em'},
                color: {start: '#bbbbee', end: '#0085a1'},
            };
            $('#tag_cloud a').tagcloud();
        })
    }
</script>
<!--fastClick.js -->
<script>
    async("//cdnjs.loli.net/ajax/libs/fastclick/1.0.6/fastclick.min.js", function () {
        var $nav = document.querySelector("nav");
        if ($nav) FastClick.attach($nav);
    })
</script>

<!-- Tongji -->
<@statistics></@statistics>

<#if post??>
    <script type="text/javascript">
        function generateCatalog(selector) {

            // interop with multilangual

            _containerSelector = 'div.post-container'

            // init
            var P = $(_containerSelector), a, n, t, l, i, c;
            a = P.find('h1,h2,h3,h4,h5,h6');

            // clean
            $(selector).html('')

            // appending
            a.each(function () {
                n = $(this).prop('tagName').toLowerCase();
                i = "#" + $(this).prop('id');
                t = $(this).text();
                c = $('<a href="' + i + '" rel="nofollow">' + t + '</a>');
                l = $('<li class="' + n + '_nav"></li>').append(c);
                $(selector).append(l);
            });
            return true;
        }

        generateCatalog(".catalog-body");

        // toggle side catalog
        $(".catalog-toggle").click((function (e) {
            e.preventDefault();
            $('.side-catalog').toggleClass("fold")
        }));

        /*
         * Doc: https://github.com/davist11/jQuery-One-Page-Nav
         * Fork by Hux to support padding
         */
        async("/${themeName}/source/js/jquery.nav.js", function () {
            $('.catalog-body').onePageNav({
                currentClass: "active",
                changeHash: !1,
                easing: "swing",
                filter: "",
                scrollSpeed: 700,
                scrollOffset: 0,
                scrollThreshold: .2,
                begin: null,
                end: null,
                scrollChange: null,
                padding: 80
            });
        });
    </script>
</#if>
