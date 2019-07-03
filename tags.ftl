<#include "module/default.ftl">
<@default title="标签 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
<!-- Page Header -->
<header class="intro-header" style="background-image: url('${settings.tags_cover!("${static!}/source/img/tag-bg.jpg")}"')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading" id="tag-heading">
                    <h1>Tags</h1>
                    <span class="subheading">${settings.tags_slogn!}</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <!-- 标签云 -->
            <div id='tag_cloud' class="tags tags-sup js-tags">
                <@tagTag method="list">
                    <#if tags?? && tags?size gt 0>
                        <a class="tag-button--all" data-encode="">
                            Show All
                            <@postTag method="count">
                                <sup>${count}</sup>
                            </@postTag>
                        </a>
                        <#list tags?sort_by('postCount')?reverse as tag>
                            <a class="tag-button" 
                                data-encode="${tag.slugName}" 
                                href="#${tag.slugName}" 
                                title="${tag.name}" 
                                rel="${tag.postCount}">${tag.name}
                                <sup>${tag.postCount}</sup>
                            </a>
                        </#list>
                    </#if>
                </@tagTag>
            </div>
            <div class="mini-post-list js-result">
            <@postTag method="archiveYear">
                <#list archives as archive>
                    <section>
                        <span class="fa listing-seperator">
					    <span class="tag-text">${archive.year}</span>
                        <#list archive.posts as post>
                            <#assign postTags>
                                <@tagTag method="listByPostId" postId="${post.id}">
                                    <#if tags?? && tags?size gt 0>
                                        <#list tags as tag>
                                            ${tag.slugName}<#sep>,<#t>
                                        </#list>
                                    </#if>
                                </@tagTag>
                            </#assign>
                            <div class="post-preview item" data-tags="${postTags!''}">
                                <a href="${context!}/archives/${post.url}">
                                    <h2 class="post-title">
                                        ${post.title}
                                    </h2>
                                </a>
                                <hr>
                            </div>
                        </#list>
                    </section>
                </#list>    
            </@postTag>
            </div>
        </div>
    </div>
</div>
</@default>
