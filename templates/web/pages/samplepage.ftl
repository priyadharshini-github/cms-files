<#import "/templates/system/common/cstudio-support.ftl" as studio />
<html lang="en">
<head>
	</head>
	<body>
	<!-- Content -->
    <section>
        <header class="main" <@studio.iceAttr iceGroup="subject"/>>
            <h1>${contentModel.subject!""}</h1>
            <h2>by ${contentModel.author!""}</h2>
        </header>
        <#if contentModel.image??>
            <#assign image = contentModel.image/>
        <#else>
            <#assign image = "/static-assets/images/placeholder.png"/>
        </#if>
        <span class="image main"><img src="${image}" alt="" /></span>
        <#list contentModel.entries.item as item>
            <div <@studio.iceAttr iceGroup="blog"/>>
                ${item.entry_html}
            </div>
            <hr class="major" />
        </#list>
    </section>
	<@studio.toolSupport/>
	</body>
</html>