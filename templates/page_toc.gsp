<!doctype html>
<html>
<%include "header.gsp"%>
<header>
    <%include "menu.gsp"%>
</header>
<body onload="prettyPrint()" class="td-section">
<div class="container-fluid td-outer">
    <div class="td-main">
        <div class="row flex-xl-nowrap">
            <div class="col-12 col-md-3 col-xl-2 td-sidebar d-print-none">
                <div class="td-sidebar__inner" id="td-sidebar-menu" >
                    <%include "toc_left.gsp"%>
                </div>
            </div>
            <main class="col-12 col-md-9 col-xl-10 pl-md-5" role="main">
                <%include "main.gsp"%>
            </main>
        </div>
    </div>
    <%include "footer.gsp"%>
</body>
</html>
