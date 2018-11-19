<#include "module/default.ftl">
<@default title="${post.postTitle} - ${options.blog_title?if_exists}" keywords="${options.seo_keywords?if_exists}" description="${post.postSummary?if_exists}">
<!-- Image to hack wechat -->
<!-- <img src="/img/icon_wechat.png" width="0" height="0"> -->
<!-- <img src="{{ site.baseurl }}/{% if page.header-img %}{{ page.header-img }}{% else %}{{ site.header-img }}{% endif %}" width="0" height="0"> -->

<!-- Post Header -->
<style type="text/css">
    header.intro-header {
        position: relative;
        background-image: url("${post.postThumbnail?default('${options.hux_general_index_cover?if_exists}')}")
    }
</style>
<header class="intro-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-heading">
                    <div class="tags">
                        <#if post.tags?? && post.tags?size gt 0>
                            <#list post.tags as tag>
                                <a class="tag" href="/tags/#${tag.tagUrl}" title="${tag.tagName}">${tag.tagName}</a>
                            </#list>
                        </#if>
                    </div>
                    <h1>${post.postTitle}</h1>
                    <span class="meta">Posted by ${user.userDisplayName} on ${post.postDate?string("MM-dd，yyyy")}</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Post Content -->
<article>
    <div class="container">
        <div class="row">

            <!-- Post Container -->
            <div class="
                col-lg-8 col-lg-offset-2
                col-md-10 col-md-offset-1
                post-container">

                ${post.postContent}

                <hr>

                <!-- 多说 Share start -->


                <ul class="pager">
                    <#if afterPost??>
                        <li class="previous">
                            <a href="/archives/${afterPost.postUrl}" data-toggle="tooltip" data-placement="top"
                               title="${afterPost.postTitle}">&larr; Previous Post</a>
                        </li>
                    </#if>
                    <#if beforePost??>
                    <li class="next">
                        <a href="/archives/${beforePost.postUrl}" data-toggle="tooltip" data-placement="top"
                           title="${beforePost.postTitle}">Next Post &rarr;</a>
                    </li>
                    </#if>
                </ul>

                <div class="comment">
                    <#include "module/comment.ftl">
                </div>
            </div>
            <div class="
                col-lg-2 col-lg-offset-0
                visible-lg-block
                sidebar-container
                catalog-container">
                <div class="side-catalog">
                    <hr class="hidden-sm hidden-xs">
                    <h5>
                        <a class="catalog-toggle" href="#">CATALOG</a>
                    </h5>
                    <ul class="catalog-body"></ul>
                </div>
            </div>
            <!-- Sidebar Container -->
            <div class="
                col-lg-8 col-lg-offset-2
                col-md-10 col-md-offset-1
                sidebar-container">

                <!-- Featured Tags -->
                <#if options.hux_style_sidebar_tags?default("true") == "true">
                      <section>
                          <hr class="hidden-sm hidden-xs">
                          <h5><a href="/tags/">FEATURED TAGS</a></h5>
                          <div class="tags">
                              <@commonTag method="tags">
                                  <#if tags?? && tags?size gt 0>
                                      <#list tags as tag>
                                        <a href="/tags/#${tag.tagUrl}" title="${tag.tagName}" rel="">
                                            ${tag.tagName}
                                        </a>
                                      </#list>
                                  </#if>
                              </@commonTag>
                          </div>
                      </section>
                </#if>

                <!-- Friends Blog -->
                <#if options.hux_style_sidebar_links?default("true") == "true">
                    <hr>
                    <h5>FRIENDS</h5>
                    <ul class="list-inline">
                        <@commonTag method="links">
                            <#if links?? && links?size gt 0>
                                <#list links as link>
                                    <li><a href="${link.linkUrl}">${link.linkName}</a></li>
                                </#list>
                            </#if>
                        </@commonTag>
                    </ul>
                </#if>
            </div>
        </div>
    </div>
</article>

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
<!-- anchor-js, Doc:http://bryanbraun.github.io/anchorjs/ -->
<script>
    async("//cdnjs.loli.net/ajax/libs/anchor-js/1.1.1/anchor.min.js", function () {
        anchors.options = {
            visible: 'always',
            placement: 'right',
            icon: '#'
        };
        anchors.add().remove('.intro-header h1').remove('.subheading').remove('.sidebar-container h5');
    })
</script>
<style>
    /* place left on bigger screen */
    @media all and (min-width: 800px) {
        .anchorjs-link {
            position: absolute;
            left: -0.75em;
            font-size: 1.1em;
            margin-top: -0.1em;
        }
    }
</style>
</@default>