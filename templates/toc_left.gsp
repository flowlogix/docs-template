<button aria-controls="td-docs-nav" aria-expanded="false"
        aria-label="Toggle section navigation"
        class="btn btn-link td-sidebar__toggle d-md-none p-0 ml-3 fas fa-bars" data-target="#td-section-nav"
        data-toggle="collapse" type="button">
</button>

<%
    def first_section = "<div class=\"sect"
    def split_doc = content.body.split("(?ms)$first_section", 2)[0]
%>

<nav class="collapse td-sidebar-nav" id="td-section-nav">
    <ul class="td-sidebar-nav__section pr-md-3">
        <ul>
            <li class="collapse show" id="docs">
                <ul class="td-sidebar-nav__section pr-md-3">
                    ${split_doc}
                </ul>
            </li>
        </ul>
    </ul>
</nav>
