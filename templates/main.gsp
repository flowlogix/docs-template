    <nav aria-label="breadcrumb" class="d-none d-md-block d-print-none">
        <ol class="breadcrumb spb-1">
            <!--li aria-current="page" class="breadcrumb-item active">
                <a href="https://example.docsy.dev/docs/">Documentation</a>
            </li-->

        </ol>
    </nav>


    <div class="td-content">
        <p>
            <%
                def first_section = "<div class=\"sect"
                def splitBody = content.body
                if (splitBody.contains(first_section)) {
                    def split_doc = splitBody.split("(?ms)$first_section", 2)[1]
                    splitBody = "$first_section$split_doc"
                }

                if (config.latestVersion_group && config.latestVersion_artifact) {
                    // find latest version of the artifact
                    String output = ("https://central.sonatype.com/solrsearch/select?q=g:${config.latestVersion_group}+" +
                            "AND+a:${config.latestVersion_artifact}&wt=json").toURL().text
                    def slurper = new groovy.json.JsonSlurper()
                    String latestVersion = slurper.parseText(output).response.docs[0].latestVersion
                    out << splitBody.replace(/&lt;&lt;LATEST&gt;&gt;/, latestVersion)
                } else {
                    out << splitBody
                }
            %>
        </p>
        <!--div class="text-muted mt-5 pt-3 border-top">Last modified July 3, 2019: <a
                href="https://github.com/google/docsy-example/commit/d6aa89c8b24089d7e6741030864eff209465e896">Added
            links to user guide repo (d6aa89c)</a>
        </div-->
    </div>

