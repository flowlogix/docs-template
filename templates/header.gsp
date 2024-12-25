<head>
  <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">

  <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
  <meta content="jbake" name="generator">
  <meta content="INDEX, FOLLOW" name="ROBOTS">
  <%if (config.site_description) { %>
    <meta name="description" content="${config.site_description}">
  <% } %>
  <%if (content.author) { %>
    <meta name="author" content="${content.author}">
  <% } %>
  <%if (content.keywords) { %>
    <meta name="keywords" content="${content.keywords}">
  <% } %>

  <title><%if (content.title) {%>${content.title}<% } else { %>${config.site_title}<% }%></title>

  <link as="style" href="${content.rootpath}css/main.min.881fe5f7b53609f55ebfb496c7097c3b30b2e8ceb20a54bc6a48350ded67224f.css"
        rel="preload">
  <link href="${content.rootpath}css/main.min.881fe5f7b53609f55ebfb496c7097c3b30b2e8ceb20a54bc6a48350ded67224f.css" integrity=""
        rel="stylesheet">
  <link href="${content.rootpath}css/asciidoctor.css" rel="stylesheet">
    <link href="${content.rootpath}css/flowlogix.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.11.1/build/styles/github.min.css">

    <!-- favicon generated with https://www.favicon-generator.org/ -->
    <link rel="shortcut icon" href="${content.rootpath}favicon.ico">
    <link rel="apple-touch-icon" sizes="57x57" href="${content.rootpath}apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="${content.rootpath}apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="${content.rootpath}apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="${content.rootpath}apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="${content.rootpath}apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="${content.rootpath}apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="${content.rootpath}apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="${content.rootpath}apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="${content.rootpath}apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="${content.rootpath}android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${content.rootpath}favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="${content.rootpath}favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${content.rootpath}favicon-16x16.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="${content.rootpath}ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

  <script src="${content.rootpath}js/jquery-3.5.1.min.js"></script>
  <style>
      div.bg-light {
          background-color: rgba(127, 180, 224, 0.3) !important;
      }
      main[role="main"] {
          padding-right: 35px;
        }
  span.blogtag {
      border-radius: 10px;
      background-color: #30638E;
      color: white;
      padding: 5px 10px;
  }
  span.blogblogtag a {
      color: white;
      padding: 0
  }
  span.blogtag span {
      margin-left: 10px;
      border-radius: 10px;
      background-color: white;
      color: #30638E;
  }
  div.td-toc {
    height: calc(100vh - 5rem) !important;
  }
  div#toctitle {
    display: none
  }
  #td-section-nav {
    max-height: calc(100vh - 4rem);
    font-size: smaller;
    line-hight: 1.1;
  }
  .td-page-meta {
      font-size: smaller;
      line-hight: 1.1;
  }
  #td-section-nav ul.td-sidebar-nav__section  {
    padding-left:0px;
  }
  .match {
      font-size: smaller;
  }
      .admonitionblock td.icon .fa:before {
          font-size: xxx-large;
      }
  </style>

   <style>
    div.openblock.primary div.content, div.openblock.secondary div.content {
        border: 1px solid #7a2518;
        padding: 5px;
    }
    div.openblock.primary div.content div.content, div.openblock.secondary div.content div.content {
        border: 0px solid #7a2518;
        padding: 0;
    }

    .hidden {
        display: none;
    }

    .switch {
        border-width: 1px 1px 0 1px;
        border-style: solid;
        border-color: #7a2518;
        display: inline-block;
    }

    .switch--item {
        padding: 2px 10px;
        background-color: #ffffff;
        color: #7a2518;
        display: inline-block;
        cursor: pointer;
    }

    .switch--item:not(:first-child) {
        border-width: 0 0 0 1px;
        border-style: solid;
        border-color: #7a2518;
    }

    .switch--item.selected {
        background-color: #7a2519;
        color: #ffffff;
    }
    </style>


</head>
