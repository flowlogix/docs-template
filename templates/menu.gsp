<%
    content.newEntries = []
    if (config.site_menu) {
        config.site_menu.each {
            content.newEntries << [href: config["site_menu_${it}_url"], title: config["site_menu_${it}_label"]]
        }
    }
%>

<nav class="js-navbar-scroll navbar navbar-expand navbar-dark flex-column flex-md-row td-navbar">
    <a class="navbar-brand" href="${content.rootpath}">
        <span class="navbar-logo"></span><span
            class="font-weight-bold">${config.site_title}</span>
    </a>
    <div class="td-navbar-nav-scroll ml-md-auto" id="main_navbar">
        <ul class="navbar-nav mt-2 mt-lg-0">
    <li class="nav-item mr-4 mb-2 mb-lg-0"><!--img src="${content.rootpath}images/status.png" alt="status" width="16" height="16" onerror="this.style.display='none'"--></li>
<%
        content.newEntries.each { entry ->
%>
            <li class="nav-item mr-4 mb-2 mb-lg-0">
                <a class="nav-link" href="${entry.href}"><span>${entry.title}</span></a>
            </li>
<%
        }
%>
        </ul>
    </div>
</nav>
