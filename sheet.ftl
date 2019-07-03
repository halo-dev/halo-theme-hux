<#include "module/page.ftl">
<@page title="${post.title} - ${options.blog_title!}" pagetitle="${post.title}" keywords="${options.seo_keywords!}" description="${post.summary!}" slogn="${settings.tags_slogn!}" cover="${post.thumbnail!}">
    ${post.formatContent}
</@page>
