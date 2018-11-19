<#macro head title="" keywords="" description="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="google-site-verification" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${description}">
    <meta name="keyword" content="${keywords}">
    <@verification></@verification>
    <@favicon></@favicon>

    <title>${title}</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="/${themeName}/source/css/bootstrap.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/${themeName}/source/css/hux-blog.min.css">

    <!-- Pygments Github CSS -->
    <link rel="stylesheet" href="/${themeName}/source/css/syntax.css">

    <!-- Custom Fonts -->
    <!-- <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
    <!-- Hux change font-awesome CDN to qiniu -->
    <link href="//cdnjs.loli.net/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <link href='//fonts.loli.net/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.loli.net/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="//oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- ga & ba script hoook -->
    <script></script>
</head>
</#macro>
