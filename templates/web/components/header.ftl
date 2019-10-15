<#import "/templates/system/common/cstudio-support.ftl" as studio />
<header id="header" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="header"/>>
    <a href="/" class="logo">Company Name<img border="0" alt="${contentModel.logo_text_t!""}" src="${contentModel.logo_s!""}">
        <#if profile??>
            <#assign name = profile.attributes.name!"stranger" />            
        <#else>
            <#assign name = "stranger" />
        </#if>
        Howdy, ${name}
    </a>

    
</header>
