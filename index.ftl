<#include "module/page.ftl">
<@page title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" slogn="${settings.index_slogn!}" cover="${settings.index_cover!'/${static!}/source/img/home-bg.jpg'}">
    <#list posts.content as post>
<div class="post-preview">
    <a href="${ctx!}/archives/${post.url!}">
        <h2 class="post-title">
            ${post.title!}
        </h2>
    <#--{% if post.subtitle %}-->
    <#--<h3 class="post-subtitle">-->
    <#--{{ post.subtitle }}-->
    <#--</h3>-->
    <#--{% endif %}-->
        <div class="post-content-preview">
            ${post.summary}
        </div>
    </a>
    <p class="post-meta">
        Posted by ${user.nickname!} on ${post.createTime?string("MM-dd，yyyy")}
    </p>
</div>
<hr>
    </#list>
    <#if posts.totalPages gt 1>
<ul class="pager">
    <#if posts.hasPrevious()>
    <li class="previous">
        <#if posts.number ==1>
            <a href="${ctx!}/">&larr; Newer Posts</a>
        <#else>
            <a href="${ctx!}/page/${posts.number}">&larr; Newer Posts</a>
        </#if>
    </li>
    </#if>
    <#if posts.hasNext()>
    <li class="next">
        <a href="${ctx!}/page/${posts.number+2}">Older Posts &rarr;</a>
    </li>
    </#if>
</ul>
    </#if>
</@page>
