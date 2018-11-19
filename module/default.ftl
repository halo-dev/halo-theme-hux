<#include "/common/macro/common_macro.ftl">
<#macro default title="" keywords="" description="">
<!DOCTYPE html>
<html lang="zh-CN">

    <#include "../_includes/head.ftl">
    <@head title="${title}" keywords="${keywords}" description="${description}"></@head>

<!-- hack iOS CSS :active style -->
<body ontouchstart="">

    <#include "../_includes/nav.ftl">

    <#nested>

    <#include "../_includes/footer.ftl">

<!-- Image to hack wechat -->
<img src="/${themeName}/source/img/icon_wechat.png" width="0" height="0"/>
<!-- Migrate from head to bottom, no longer block render and still work -->

</body>

</html>
</#macro>
