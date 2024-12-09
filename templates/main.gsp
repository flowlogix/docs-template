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
                            "AND+a:${config.latestVersion_artifact}&wt=json&rows=50000").toURL().text
                    println output
                    def slurper = new groovy.json.JsonSlurper()
                    def versions = slurper.parseText(output).response.docs*.v
                    String latestVersion = versions.max { a, b ->
                        def aParts = a.split(/[-.]/).collect { it.isInteger() ? it as int : it }
                        def bParts = b.split(/[-.]/).collect { it.isInteger() ? it as int : it }

                        int comparisonResult = 0
                        for (int i = 0; i < Math.max(aParts.size(), bParts.size()); i++) {
                            def aPart = i < aParts.size() ? aParts[i] : null
                            def bPart = i < bParts.size() ? bParts[i] : null

                            if (aPart == bPart) continue

                            if (aPart == null) return -1
                            if (bPart == null) return 1

                            if (aPart instanceof Integer && bPart instanceof Integer) {
                                comparisonResult = aPart <=> bPart
                            } else {
                                comparisonResult = aPart.toString() <=> bPart.toString()
                            }

                            if (comparisonResult != 0) return comparisonResult
                        }

                        return 0
                    }
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

