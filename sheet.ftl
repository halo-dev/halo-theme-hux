<#include "module/page.ftl">
<@page title="${sheet.title} - ${options.blog_title}" keywords="${options.seo_keywords!}" description="${sheet.summary!}" slogn="xxx" cover="${sheet.thumbnail!}">
    ${sheet.formatContent}
</@page>
