<#include "module/default.ftl">
<@default title="标签 - ${options.blog_title}" keywords="${options.seo_keywords?if_exists}" description="${options.seo_desc?if_exists}">
<!-- Page Header -->
<header class="intro-header" style="background-image: url('${options.hux_general_tags_cover?default("/hux/source/img/tag-bg.jpg")}"')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading" id="tag-heading">
                    <h1>Tags</h1>
                    <span class="subheading">${options.hux_general_tags_slogn?if_exists}</span>
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
                <@commonTag method="tags">
                    <#if tags?? && tags?size gt 0>
                        <#list tags as tag>
                            <a href="#${tag.tagUrl}" title="${tag.tagName}" rel="">${tag.tagName}</a>
                        </#list>
                    </#if>
                </@commonTag>
            </div>

            <!-- 标签列表 -->
            <#list tags as tag>
                <div class="one-tag-list">
                    <span class="fa fa-tag listing-seperator" id="${tag.tagUrl}">
                        <span class="tag-text">${tag.tagName}</span>
                    </span>
                    <#list tag.posts as post>
                    <!-- <li class="listing-item">
                        <time datetime="{{ post.date | date:"%Y-%m-%d" }}">{{ post.date | date:"%Y-%m-%d" }}</time>
                        <a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>
                        </li> -->
                        <div class="post-preview">
                            <a href="/archives/${post.postUrl}">
                                <h2 class="post-title">
                                    ${post.postTitle}
                                </h2>
                                <#--{% if post.subtitle %}-->
                                <#--<h3 class="post-subtitle">-->
                                    <#--{{ post.subtitle }}-->
                                <#--</h3>-->
                                <#--{% endif %}-->
                            </a>
                            <!-- <p class="post-meta">{{ post.date | date:"%Y-%m-%d" }}</p> -->
                        </div>
                        <hr>
                    </#list>
                </div>
            </#list>
        </div>
    </div>
</div>
</@default>
