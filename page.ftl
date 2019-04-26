<#include "module/page.ftl">
<@page title="${post.title} - ${options.blog_title}" keywords="${options.seo_keywords!}" description="${post.summary!}" slogn="xxx" cover="${post.thumbnail!}">
    ${post.formatContent}
</@page>
