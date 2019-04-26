<#include "module/default.ftl">
<@default title="标签 - ${options.blog_title}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
<!-- Page Header -->
<header class="intro-header" style="background-image: url('${settings.tags_cover!("/${theme.folderName}/source/img/tag-bg.jpg")}"')">
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
            <div id='tag_cloud' class="tags">
                <@tagTag method="list">
                    <#if tags?? && tags?size gt 0>
                        <#list tags as tag>
                            <a href="#${tag.slugName}" title="${tag.name}" rel="">${tag.name}</a>
                        </#list>
                    </#if>
                </@tagTag>
            </div>

            <!-- 标签列表 -->
            <#list tags as tag>
                <div class="one-tag-list">
                    <span class="fa fa-tag listing-seperator" id="${tag.name}">
                        <span class="tag-text">${tag.name}</span>
                    </span>
                    <#list tag.posts as post>
                    <!-- <li class="listing-item">
                        <time datetime="{{ post.date | date:"%Y-%m-%d" }}">{{ post.date | date:"%Y-%m-%d" }}</time>
                        <a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>
                        </li> -->
                        <div class="post-preview">
                            <a href="${options.blog_url!}/archives/${post.url}">
                                <h2 class="post-title">
                                    ${post.title}
                                </h2>
                            </a>
                            <p class="post-meta">${tag.createTime?string('yyyy-MM-dd')}</p>
                        </div>
                        <hr>
                    </#list>
                </div>
            </#list>
        </div>
    </div>
</div>
</@default>
