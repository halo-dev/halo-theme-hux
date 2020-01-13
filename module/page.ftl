<#macro page title="" pagetitle="" keywords="" description="" slogn="" cover="">
    <#include "default.ftl">
    <@default title="${title}" keywords="${keywords}" description="${description}">
<!-- Page Header -->
<#if is_sheet!false>
    <#if post.thumbnail?length gt 0>
        <header class="intro-header" style="background-image: url('${cover}')">
    <#else>
        <header class="intro-header" style="background-image: url('${post.thumbnail}')">
    </#if>
<#else>
    <header class="intro-header" style="background-image: url('${cover}')">
</#if>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 ">
                <div class="site-heading">
                    <h1>${pagetitle}</h1>
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
        <#if !settings.sidebar!true>
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
                <#if settings.sidebar_tags!true>
                <section>
                    <!-- no hr -->
                    <h5><a href="${context!}/tags">FEATURED TAGS</a></h5>
                    <div class="tags">
                        <@tagTag method="list">
                            <#if tags?? && tags?size gt 0>
                                <#list tags as tag>
                                    <a href="${context!}/tags/?tag=${tag.slugName}" title="${tag.name}" rel="">
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
                                <li><a href="${link.url}">${link.name}</a></li>
                                </#list>
                            </#if>
                        </@linkTag>
                    </ul>
                </#if>
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
                <#if settings.sidebar_tags!true>
                <section>
                    <hr class="hidden-sm hidden-xs">
                    <h5><a href="${context!}/tags">FEATURED TAGS</a></h5>
                    <div class="tags">
                        <@tagTag method="list">
                            <#if tags?? && tags?size gt 0>
                                <#list tags as tag>
                                <a href="${context!}/tags/?tag=${tag.slugName}" title="${tag.name}" rel="">
                                    ${tag.name}
                                </a>
                                </#list>
                            </#if>
                        </@tagTag>
                    </div>
                </section>
                </#if>

                <!-- Short About -->
                <section class="visible-md visible-lg">
                    <hr>
                    <h5><a href="${context!}/s/about">ABOUT ME</a></h5>
                    <div class="short-about">
                        <img src="${user.avatar!}"/>
                        <p>${user.description!}</p>
                        <!-- SNS Link -->
                        <ul class="list-inline">
                            <#if settings.rss!true>
                            <li>
                                <a href="${context!}/feed.xml">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-rss fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            </#if>
                            <#if settings.twitter??>
                            <li>
                                <a href="https://twitter.com/${settings.twitter}">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            </#if>
                            <#if settings.zhihu??>
                            <li>
                                <a target="_blank" href="https://www.zhihu.com/people/${settings.zhihu}">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa  fa-stack-1x fa-inverse">知</i>
                                    </span>
                                </a>
                            </li>
                            </#if>
                            <#if settings.weibo??>
                            <li>
                                <a target="_blank" href="http://weibo.com/${settings.weibo}">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-weibo fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            </#if>
                            <#if settings.facebook??>
                            <li>
                                <a target="_blank" href="https://www.facebook.com/${settings.facebook}">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            </#if>
                            <#if settings.github??>
                            <li>
                                <a target="_blank" href="https://github.com/${settings.github}">
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
                <#if settings.sidebar_links!true>
                    <hr>
                    <h5>FRIENDS</h5>
                    <ul class="list-inline">
                        <@linkTag method="list">
                            <#if links?? && links?size gt 0>
                                <#list links as link>
                                <li><a href="${link.url}">${link.name}</a></li>
                                </#list>
                            </#if>
                        </@linkTag>
                    </ul>
                </#if>
            </div>
        </#if>
    </div>
</div>
    </@default>
</#macro>
