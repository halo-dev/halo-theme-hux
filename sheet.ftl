<#include "module/page.ftl">
<@page title="${post.title!} - ${blog_title!}" pagetitle="${post.title!}" slogn="${settings.tags_slogn!}" cover="${post.thumbnail!}">
    ${post.formatContent!}
</@page>
