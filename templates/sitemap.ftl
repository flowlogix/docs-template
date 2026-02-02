<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="https://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="https://www.sitemaps.org/schemas/sitemap/0.9 https://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
    <#if content.rootpath = ''>
        <#assign rootpath = '/'/>
    <#else>
        <#assign rootpath = content.rootpath/>
    </#if>

    <#list published_content as content>
        <url>
            <loc>${rootpath}${content.noExtensionUri!content.uri}</loc>
            <lastmod>${content.date?string("yyyy-MM-dd")}</lastmod>
        </url>
    </#list>
</urlset>
