<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/web/navigation2/navigation.ftl" as nav/>

<div id="left-rail" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="left-rail"/>>
  <div class="inner">

    <!-- Search -->
    <section id="search" class="alt">
      <form method="post" action="#">
        <input type="text" name="query" id="query" placeholder="Search" />
      </form>
    </section>

    

    <!-- Widgets -->
    <#if articleCategories?? && articlePath??>
    	<#assign additionalModel = {"articleCategories": articleCategories, "articlePath": articlePath } />
    <#else>
    	<#assign additionalModel = {} />
    </#if>
    <#if contentModel.widgets_o.item?has_content>
      <#list contentModel.widgets_o.item as widget>
        <@renderComponent component = widget additionalModel = additionalModel />
      </#list>
    </#if>
    <!-- Footer -->
    <footer id="footer">
      <p class="copyright">&copy;. All rights reserved.</p>
    </footer>

  </div>
</div>
