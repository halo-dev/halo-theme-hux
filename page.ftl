<#include "module/page.ftl">
<@page title="${post.postTitle} - ${options.blog_title}" keywords="${options.seo_keywords?if_exists}" description="${post.postSummary?if_exists}" slogn="xxx" cover="${post.postThumbnail?if_exists}">
    ${post.postContent}
</@page>