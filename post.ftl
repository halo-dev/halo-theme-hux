<#include "module/default.ftl">
<@default title="${post.title!} - ${blog_title!}">
<!-- Image to hack wechat -->
<!-- <img src="/img/icon_wechat.png" width="0" height="0"> -->
<!-- <img src="{{ site.baseurl }}/{% if page.header-img %}{{ page.header-img }}{% else %}{{ site.header-img }}{% endif %}" width="0" height="0"> -->

<!-- Post Header -->
<#if post.thumbnail?length gt 0>
    <style type="text/css">
        header.intro-header {
            position: relative;
            background-image: url("${post.thumbnail?default('${settings.index_cover!}')}");
            background-blend-mode: multiply;
        }
    </style>
    <header class="intro-header">
<#else>
    <style type="text/css">
        header.intro-header {
            position: relative;
            /*background: ;*/
        }
        header.intro-header .header-mask{
            width: 100%;
            height: 100%;
            position: absolute;
            background: rgba(0,0,0, 0.4);
        }
    </style>
    <header class="intro-header style-text">
</#if>

    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-heading">
                    <div class="tags">
                        <#if tags?? && tags?size gt 0>
                            <#list tags as tag>
                                <a class="tag" href="${tags_url!}?tag=${tag.slug!}" title="${tag.name}">${tag.name}</a>
                            </#list>
                        </#if>
                    </div>
                    <h1>${post.title!}</h1>
                    <span class="meta">Posted by ${user.nickname!} on ${post.createTime?string("MM-dd，yyyy")}</span>
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

                ${post.formatContent!}

                <hr>

                <!-- 多说 Share start -->


                <ul class="pager">
                    <#if prevPost??>
                        <li class="previous">
                            <a href="${prevPost.fullPath!}" data-toggle="tooltip" data-placement="top"
                               title="${prevPost.title}">&larr; Previous Post</a>
                        </li>
                    </#if>
                    <#if nextPost??>
                    <li class="next">
                        <a href="${nextPost.fullPath!}" data-toggle="tooltip" data-placement="top"
                           title="${nextPost.title}">Next Post &rarr;</a>
                    </li>
                    </#if>
                </ul>

                <div class="comment">
                    <#include "module/comment.ftl">
                    <@comment post=post type="post" />
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
                <#if settings.sidebar_tags!true>
                      <section>
                          <hr class="hidden-sm hidden-xs">
                          <h5><a href="${tags_url!}">FEATURED TAGS</a></h5>
                          <div class="tags">
                              <@tagTag method="list">
                                  <#if tags?? && tags?size gt 0>
                                      <#list tags as tag>
                                        <a href="${tags_url!}?tag=${tag.slug!}" title="${tag.name}" rel="">
                                            ${tag.name}
                                        </a>
                                      </#list>
                                  </#if>
                              </@tagTag>
                          </div>
                      </section>
                </#if>

                <!-- Friends Blog -->
                <#if settings.sidebar_links!true>
                    <hr>
                    <h5>FRIENDS</h5>
                    <ul class="list-inline">
                        <@linkTag method="list">
                            <#if links?? && links?size gt 0>
                                <#list links as link>
                                    <li><a href="${link.url}"  target="_blank" title="${link.description}">${link.name}</a></li>
                                </#list>
                            </#if>
                        </@linkTag>
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
