<#import "/templates/system/common/cstudio-support.ftl" as studio />
<article <@studio.componentAttr path=contentModel.storeUrl />>
  
  <div class="content">
    <h3>${contentModel.title_t}</h3>
    ${contentModel.body_html}
  </div>
</article>
