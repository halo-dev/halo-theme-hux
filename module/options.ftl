<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/plugins/toast/css/jquery.toast.min.css">
    <link rel="stylesheet" href="/static/css/AdminLTE.min.css">
    <style>
        .themeSetting, .themeImg {
            padding-top: 15px;
            padding-bottom: 15px;
        }

        .form-horizontal .control-label {
            text-align: left;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 themeImg">
            <img src="/${themeDir}/screenshot.png" style="width: 100%;">
        </div>
        <div class="col-md-6 themeSetting">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#general" data-toggle="tab">基础设置</a>
                    </li>
                    <li>
                        <a href="#sns" data-toggle="tab">社交资料</a>
                    </li>
                    <li>
                        <a href="#style" data-toggle="tab">样式设置</a>
                    </li>
                    <li>
                        <a href="#about" data-toggle="tab">关于</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <!-- 基础设置 -->
                    <div class="tab-pane active" id="general">
                        <form method="post" class="form-horizontal" id="huxGeneralOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="huxGeneralFavicon" class="col-sm-4 control-label">Favicon：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="huxGeneralFavicon"
                                                   name="hux_general_favicon"
                                                   value="${options.hux_general_favicon?if_exists}">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button"
                                                        onclick="openAttach('huxGeneralFavicon')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxGeneralIndexSlogn" class="col-sm-4 control-label">首页描述：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="huxGeneralIndexSlogn"
                                               name="hux_general_index_slogn"
                                               value="${options.hux_general_index_slogn?if_exists}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxGeneralTagsSlogn" class="col-sm-4 control-label">标签页描述：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="huxGeneralTagsSlogn"
                                               name="hux_general_tags_slogn"
                                               value="${options.hux_general_tags_slogn?if_exists}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxGeneralIndexCover" class="col-sm-4 control-label">首页顶部图：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="huxGeneralIndexCover"
                                                   name="hux_general_index_cover"
                                                   value="${options.hux_general_index_cover?default("/hux/source/img/home-bg.jpg")}">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button"
                                                        onclick="openAttach('huxGeneralIndexCover')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxGeneralTagsCover" class="col-sm-4 control-label">标签页顶部图：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="huxGeneralTagsCover"
                                                   name="hux_general_tags_cover"
                                                   value="${options.hux_general_tags_cover?default("/hux/source/img/tag-bg.jpg")}">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button"
                                                        onclick="openAttach('huxGeneralTagsCover')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right"
                                        onclick="saveThemeOptions('huxGeneralOptions')">保存设置
                                </button>
                            </div>
                        </form>
                    </div>
                    <!--社交资料-->
                    <div class="tab-pane" id="sns">
                        <form method="post" class="form-horizontal" id="huxSnsOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="huxSnsRss" class="col-sm-4 control-label">RSS：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="hux_sns_rss" id="huxSnsRss"
                                                   value="true" ${((options.hux_sns_rss?default('true'))=='true')?string('checked','')}>
                                            显示
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="hux_sns_rss" id="huxSnsRss"
                                                   value="false" ${((options.hux_sns_rss?if_exists)=='false')?string('checked','')}>
                                            隐藏
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxSnsWeibo" class="col-sm-4 control-label">微博：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="huxSnsWeibo" name="hux_sns_weibo"
                                               value="${options.hux_sns_weibo?if_exists}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxSnsZhihu" class="col-sm-4 control-label">知乎：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="huxSnsZhihu" name="hux_sns_zhihu"
                                               value="${options.hux_sns_zhihu?if_exists}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxSnsGithub" class="col-sm-4 control-label">Github：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="huxSnsGithub" name="hux_sns_github"
                                               value="${options.hux_sns_github?if_exists}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxSnsTwitter" class="col-sm-4 control-label">Twitter：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="huxSnsTwitter"
                                               name="hux_sns_twitter" value="${options.hux_sns_twitter?if_exists}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxSnsFacebook" class="col-sm-4 control-label">Facebook：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="huxSnsFacebook"
                                               name="hux_sns_facebook" value="${options.hux_sns_facebook?if_exists}">
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right"
                                        onclick="saveThemeOptions('huxSnsOptions')">保存设置
                                </button>
                            </div>
                        </form>
                    </div>
                    <!-- 样式设置 -->
                    <div class="tab-pane" id="style">
                        <form method="post" class="form-horizontal" id="huxStyleOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="huxStyleSidebar" class="col-sm-4 control-label">侧边栏：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="hux_style_sidebar" id="huxStyleSidebar"
                                                   value="true" ${((options.hux_style_sidebar?default('true'))=='true')?string('checked','')}>
                                            显示
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="hux_style_sidebar" id="huxStyleSidebar"
                                                   value="false" ${((options.hux_style_sidebar?if_exists)=='false')?string('checked','')}>
                                            隐藏
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxStyleSidebarTags" class="col-sm-4 control-label">侧边栏标签：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="hux_style_sidebar_tags" id="huxStyleSidebarTags"
                                                   value="true" ${((options.hux_style_sidebar_tags?default('true'))=='true')?string('checked','')}>
                                            显示
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="hux_style_sidebar_tags" id="huxStyleSidebarTags"
                                                   value="false" ${((options.hux_style_sidebar_tags?if_exists)=='false')?string('checked','')}>
                                            隐藏
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="huxStyleSidebarLinks" class="col-sm-4 control-label">侧边栏友链：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="hux_style_sidebar_links" id="huxStyleSidebarLinks"
                                                   value="true" ${((options.hux_style_sidebar?default('true'))=='true')?string('checked','')}>
                                            显示
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="hux_style_sidebar_links" id="huxStyleSidebarLinks"
                                                   value="false" ${((options.hux_style_sidebar?if_exists)=='false')?string('checked','')}>
                                            隐藏
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right"
                                        onclick="saveThemeOptions('huxStyleOptions')">保存设置
                                </button>
                            </div>
                        </form>
                    </div>
                    <!-- 关于该主题 -->
                    <div class="tab-pane" id="about">
                        <div class="box box-widget widget-user-2">
                            <div class="widget-user-header bg-blue">
                                <div class="widget-user-image">
                                    <img class="img-circle" src="/anatole/source/images/logo@2x.png" alt="User Avatar">
                                </div>
                                <h3 class="widget-user-username">CAICAI</h3>
                                <h5 class="widget-user-desc">A other farbox theme</h5>
                            </div>
                            <div class="box-footer no-padding">
                                <ul class="nav nav-stacked">
                                    <li><a target="_blank" href="https://www.caicai.me/">作者主页</a></li>
                                    <li><a target="_blank" href="https://github.com/hi-caicai/farbox-theme-Anatole">原主题地址</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="/static/plugins/jquery/jquery.min.js"></script>
<script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/static/plugins/toast/js/jquery.toast.min.js"></script>
<script src="/static/plugins/layer/layer.js"></script>
<script src="/static/js/app.js"></script>
<script>
    function saveThemeOptions(option) {
        var param = $('#' + option).serialize();
        $.ajax({
            type: 'post',
            url: '/admin/option/save',
            data: param,
            success: function (data) {
                showMsg("保存成功！", "success", 1000);
            }
        });
    }

    function openAttach(id) {
        layer.open({
            type: 2,
            title: '所有附件',
            shadeClose: true,
            shade: 0.5,
            area: ['90%', '90%'],
            content: '/admin/attachments/select?id=' + id,
            scrollbar: false
        });
    }
</script>
</html>