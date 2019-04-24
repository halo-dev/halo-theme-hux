<#include "module/page.ftl">
<@page title="${post.postTitle} - ${options.blog_title}" keywords="${options.seo_keywords!}" description="${post.postSummary!}" slogn="xxx" cover="${post.postThumbnail!}">
    ${post.postContent}
</@page>
