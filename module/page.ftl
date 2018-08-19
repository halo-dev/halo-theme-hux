<#macro page title="" keywords="" description="" slogn="" cover="">
    <#include "default.ftl">
    <@default title="${title}" keywords="${keywords}" description="${description}">
<!-- Page Header -->
<header class="intro-header" style="background-image: url('${cover}')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 ">
                <div class="site-heading">
                    <h1>${title}</h1>
                    <!--<hr class="small">-->
                    <span class="subheading">${slogn}</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <#if options.hux_style_sidebar?default("true") == "false">
            <!-- NO SIDEBAR -->
            <!-- Post Container -->
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 post-container">
                <#nested>
            </div>
            <!-- Sidebar Container -->
            <div class="
                col-lg-8 col-lg-offset-2
                col-md-10 col-md-offset-1
                sidebar-container">

                <!-- Featured Tags -->
                <#if options.hux_style_sidebar_tags?default("true") == "true">
                <section>
                    <!-- no hr -->
                    <h5><a href="/tags">FEATURED TAGS</a></h5>
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
                <div class="comment">
                    <#include "module/comment.ftl">
                </div>
            </div>
        <#else >

<!-- USE SIDEBAR -->
    <!-- Post Container -->
    		<div class="
                col-lg-8 col-lg-offset-1
                col-md-8 col-md-offset-1
                col-sm-12
                col-xs-12
                post-container
            ">
                <#nested>
            </div>
    <!-- Sidebar Container -->
            <div class="
                col-lg-3 col-lg-offset-0
                col-md-3 col-md-offset-0
                col-sm-12
                col-xs-12
                sidebar-container
            ">
                <!-- Featured Tags -->
                <#if options.hux_style_sidebar_tags?default("true") == "true">
                <section>
                    <hr class="hidden-sm hidden-xs">
                    <h5><a href="/tags">FEATURED TAGS</a></h5>
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

                <!-- Short About -->
                <section class="visible-md visible-lg">
                    <hr>
                    <h5><a href="/p/about">ABOUT ME</a></h5>
                    <div class="short-about">
                        <img src="${user.userAvatar?if_exists}"/>
                        <p>${user.userDesc?if_exists}</p>
                        <!-- SNS Link -->
                        <ul class="list-inline">
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
                    </div>
                </section>
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
        </#if>
    </div>
</div>
    </@default>
</#macro>