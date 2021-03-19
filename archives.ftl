<#include "module/default.ftl">
<@default title="文章归档 - ${blog_title!}">
<!-- Page Header -->
<header class="intro-header" style="background-image: url('${settings.archives_cover!("${theme_base!}/source/img/tag-bg.jpg")}">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading" id="tag-heading">
                    <h1>Archives</h1>
                    <span class="subheading">${settings.archives_slogn!}</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <div class="mini-post-list js-result">
                <#list archives as archive>
                    <section>
                        <span class="fa listing-seperator">
					    <span class="tag-text">${archive.year?c}</span>
                        <#list archive.posts as post>
                            <div class="post-preview item">
                                <a href="${post.fullPath!}">
                                    <h2 class="post-title">
                                        ${post.title!}
                                    </h2>
                                </a>
                                <hr>
                            </div>
                        </#list>
                    </section>
                </#list>
            </div>
        </div>
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <#if posts.totalPages gt 1>
                <ul class="pager">
                    <@paginationTag method="archives" page="${posts.number}" total="${posts.totalPages}" display="0">
                        <#if pagination.hasPrev>
                            <li class="previous">
                                <a href="${pagination.prevPageFullPath!}">&larr; Newer Posts</a>
                            </li>
                        </#if>
                        <#if pagination.hasNext>
                            <li class="next">
                                <a href="${pagination.nextPageFullPath!}">Older Posts &rarr;</a>
                            </li>
                        </#if>
                    </@paginationTag>
                </ul>
            </#if>
        </div>
    </div>
</div>
</@default>
