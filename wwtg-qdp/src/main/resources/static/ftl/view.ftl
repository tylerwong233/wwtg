<@compress>
<?xml version="1.0" encoding="UTF-8"?>
<ViewConfig>
  <Arguments/>
  <Context/>
  <Model>
   <DataType name="${meta.clazz}">
      <Property name="creationType">com.${meta.company}.${meta.packagePrefix}.entity.${meta.clazz}</Property>
      <PropertyDef name="id">
        <Property name="dataType">String</Property>
      </PropertyDef>
      <#list meta.fullList?chunk(1) as row> 
	<#list row as field>
		 <PropertyDef name="${field.name}"> 
		<#if field.dataType =="Date">
	<Property name="dataType">DateTime</Property>
	<#elseif field.dataType =="Text">
	<Property name="dataType">String</Property>
	<#else>
	<Property name="dataType">${field.dataType}</Property>
		</#if>
	   <Property name="label">${field.label}</Property>
        <#if field.required?exists && field.required =='y'>
        <Property name="required">true</Property>
        </#if>
        <#if (field.fromEnum?exists&&field.fromEnum !='')>
        <Property name="mapping">
          <Property name="mapValues">${r'$'}{dorado.getDataProvider(&quot;enumProvider#getValues&quot;).getResult(&quot;${field.lookupName}&quot;)}</Property>
        </Property>
         
        </#if>
        <#if (field.fromTable?exists&&field.fromTable !='')>
        <Property name="mapping">
          <Property name="mapValues">${r'$'}{dorado.getDataProvider(&quot;${meta.clazz?uncap_first}#get${field.dbEntityName?cap_first}KvMap&quot;).getResult()}</Property>
        </Property> 
        </#if>
      </PropertyDef>
	</#list>
</#list>
<#list meta.fullList?chunk(1) as row> 
	<#list row as field>
		<#if (field.fromEnum?exists&&field.fromEnum !='')>
        <#elseif (field.fromTable?exists&&field.fromTable !='')>
        <PropertyDef name="refTable${field.name?cap_first}">
         <Property name="dataType">String</Property>
        <Property name="label">${field.label}</Property>
        </PropertyDef> 
        <#else> 
        </#if> 
	</#list>
</#list>

<PropertyDef name="createdDate">
        <Property/>
        <Property name="label">创建日期</Property>
		<Property name="dataType">DateTime</Property>
</PropertyDef>
<PropertyDef name="creator">
        <Property/>
        <Property name="label">创建人</Property>
</PropertyDef>
<PropertyDef name="updateDate">
        <Property/>
        <Property name="label">修改日期</Property>
<Property name="dataType">DateTime</Property>
</PropertyDef>
<PropertyDef name="modifier">
        <Property/>
        <Property name="label">修改人</Property>
</PropertyDef>


<#list meta.fullList?chunk(1) as row> 
	<#list row as field>
		<#if (field.imported?exists&&field.imported !='')>
 <PropertyDef name="${field.name}Tip">
         <Property name="dataType">String</Property>
        </PropertyDef> 
		</#if>
</#list>
</#list> 

<PropertyDef name="importDetail">
        <Property/>
        <Property name="label">导入详情</Property>
</PropertyDef>

</DataType>

<DataType name="Condition"> 
      <#list meta.fullList?chunk(1) as row> 
	<#list row as field>
		 
		<#if field.dataType =="Date">
	<PropertyDef name="${field.name}_startTime">
        <Property name="dataType">DateTime</Property>
        <Property name="label">${field.label}(起)</Property>
     </PropertyDef>
      <PropertyDef name="${field.name}_endTime">
        <Property name="dataType">DateTime</Property>
        <Property name="label">${field.label}(至)</Property>
     </PropertyDef>
     </#if>
	<#if field.dataType =="Text">
	<PropertyDef name="${field.name}">
	<Property name="dataType">String</Property>
	</PropertyDef>
	 </#if> 
	
        <#if (field.fromEnum?exists&&field.fromEnum !='')>
        <PropertyDef name="${field.name}_eq">
        <Property name="mapping">
          <Property name="mapValues">${r'$'}{dorado.getDataProvider(&quot;enumProvider#getValues&quot;).getResult(&quot;${field.lookupName}&quot;)}</Property>
        </Property> 
         <#else>
          <PropertyDef name="${field.name}"> 
        </#if>
        <#if (field.fromTable?exists&&field.fromTable !='')>
        <Property name="mapping">
          <Property name="mapValues">${r'$'}{dorado.getDataProvider(&quot;${meta.clazz?uncap_first}#get${field.dbEntityName?cap_first}KvMap&quot;).getResult()}</Property>
        </Property> 
        </#if>
        <Property name="dataType">String</Property> 
	   <Property name="label">${field.label}</Property>
        </PropertyDef> 
	</#list>
</#list>
</DataType>
  
  
  </Model>
  <View><Property name="packages">font-awesome</Property>
    <Property name="title">${meta.domainLabel}信息维护</Property>
    <DataSet id="ds${meta.clazz?cap_first}">
      <Property name="dataProvider">${meta.clazz?uncap_first}Controller#query</Property>
      <Property name="pageSize">20</Property>
      <Property name="dataType">[${meta.clazz?cap_first}]</Property>
      <Property name="loadMode">lazy</Property>
    </DataSet>
    <UpdateAction id="updateAction">
      <Property name="successMessage">操作成功!</Property>
      <Property name="executingMessage">正在保存...</Property>
      <Property name="dataResolver">${meta.clazz?uncap_first}Controller#save</Property>
      <UpdateItem>
        <Property name="dataSet">ds${meta.clazz?cap_first}</Property>
      </UpdateItem>
    </UpdateAction>
    
     <AutoForm id="formCondition">
     <ClientEvent name="onKeyDown">if (arg.keyCode === 13) {&#xD;
	window.clearTimeout(self.urlQueryTimeout);&#xD;
	self.urlQueryTimeout = window.setTimeout(function() {&#xD;
		var data = view.get(&quot;#formCondition.entity&quot;);&#xD;
		with (view.get(&quot;#ds${meta.clazz?cap_first}&quot;)) {&#xD;
			set(&quot;parameter&quot;, data);&#xD;
			flushAsync();&#xD;
		}&#xD;
	}, 250);&#xD;
}</ClientEvent>
     <Property name="labelWidth">100</Property>
      <Property name="cols">*,*,*,*</Property>
       <Property name="createPrivateDataSet">true</Property>
      <Property name="dataType">Condition</Property>
      <Property name="labelAlign">center</Property>
      <Property name="showHint">false</Property>
      <#list meta.searchConditionList?chunk(1) as row> 
	<#list row as field>
	<#if field.dataType =="Date">
	<AutoFormElement> 
		 <Property name="name">${field.name}_startTime</Property>
        <Property name="label">${field.label}(起)</Property>
         
         <Editor/> 
         </AutoFormElement>
         <AutoFormElement>
		<Property name="name">${field.name}_endTime</Property>
        <Property name="label">${field.label}(至)</Property>
         
         <Editor/> 
      </AutoFormElement>
      <#elseif (field.fromEnum?exists&&field.fromEnum !='')>
      <AutoFormElement>
        <Property name="name">${field.name}_eq</Property>
        <Property name="label">${field.label}</Property> 
         <Editor/> 
          </AutoFormElement>
          <#else>
      <AutoFormElement>
        <Property name="name">${field.name}</Property>
        <Property name="label">${field.label}</Property>
         
         <Editor/> 
          </AutoFormElement>
        </#if>
       
	</#list>
</#list>
      
    </AutoForm>
    
    <ToolBar> 
       <ToolBarButton>
        <ClientEvent name="onClick">var data = view.get(&quot;#formCondition.entity&quot;);&#xD;
with (view.get(&quot;#ds${meta.clazz}&quot;)){&#xD;
	set(&quot;parameter&quot;, data);&#xD;
	flushAsync();&#xD;
}</ClientEvent>
        <Property name="caption">查询</Property>
        <Property name="iconClass">fa fa-search</Property>
      </ToolBarButton>
      <ToolBarButton>
        <ClientEvent name="onClick">var datas = view.get(&quot;#ds${meta.clazz}.data&quot;);&#xD;
datas.insert();&#xD;
view.get(&quot;#dialog${meta.clazz}&quot;).show();&#xD;
arg.processDefault=false;</ClientEvent>
        <Property name="caption">新增</Property>
        <Property name="iconClass">fa fa-plus</Property>
      </ToolBarButton>
      <ToolBarButton>
        <ClientEvent name="onClick">var data=view.get(&quot;#ds${meta.clazz}.data&quot;);&#xD;
if(data.current){&#xD;
	view.get(&quot;#dialog${meta.clazz}&quot;).show();&#xD;
}else{&#xD;
	dorado.MessageBox.alert(&quot;当前表没有信息可供编辑!&quot;);&#xD;
}</ClientEvent>
        <Property name="caption">修改</Property>
        <Property name="iconClass">fa fa-pencil-square-o</Property>
      </ToolBarButton>
   <ToolBarButton>
        <ClientEvent name="onClick">var updateAction=view.get(&quot;#updateAction&quot;);&#xD;
var selection = view.get(&quot;#dg${meta.clazz?cap_first}&quot;).get(&quot;selection&quot;);&#xD;
&#xD;
if(0 != selection.length) {&#xD;
	dorado.MessageBox.confirm(&quot;确认操作吗?&quot;,function(){&#xD;
 &#xD;
		for (var i = 0; i &lt; selection.length; i++) {&#xD;
		var select = selection[i];&#xD;
			select.remove();&#xD;
	}&#xD;
		&#xD;
	updateAction.execute();&#xD;
	view.get(&quot;#ds${meta.clazz}&quot;).flushAsync();	&#xD;
})&#xD;
&#xD;
} else {&#xD;
dorado.MessageBox.alert(&quot;请选择需要操作的记录！&quot;);&#xD;
}&#xD;
&#xD;
&#xD;
</ClientEvent>
        <Property name="iconClass">fa fa-trash-o</Property>
        <Property name="caption">删除</Property>
      </ToolBarButton>
      <ToolBarButton>
        <ClientEvent name="onClick">view.get(&quot;#autoUploadProgressBar&quot;).set(&quot;value&quot;, '0');
view.get(&quot;#dialogImportInit&quot;).show();</ClientEvent>
        <Property name="caption">导入</Property>
        <Property name="iconClass">fa fa-cloud-upload</Property>
      </ToolBarButton>
  <ToolBarButton>
        <Property name="caption">导出</Property>
        <Property name="iconClass">fa fa-cloud-download</Property>
        <Property name="action">exportAction</Property>
      </ToolBarButton>
      <Fill/>
     
      <DataPilot>
        <Property name="dataSet">ds${meta.clazz}</Property>
        <Property name="itemCodes">pages,pageSize</Property>
      </DataPilot>
   
    </ToolBar>
     <DataGrid id="dg${meta.clazz?cap_first}">
      <Property name="dataSet">ds${meta.clazz?cap_first}</Property>
      <Property name="dataType">${meta.clazz?cap_first}</Property>
           <Property name="selectionMode">multiRows</Property>
           <Property name="readOnly">true</Property>
           <RowSelectorColumn/>
      <RowNumColumn/>
            <#list meta.searchResultList?chunk(1) as row> 
	<#list row as field>   
      <DataColumn name="${field.label}">
      <Property name="caption">${field.label}</Property>
       <#if (field.fromEnum?exists&&field.fromEnum !='')>
         <Property name="property">${field.name}</Property>
        <#elseif (field.fromTable?exists&&field.fromTable !='')>
        <Property name="property">refTable${field.name?cap_first}</Property>
        <#else>
        <Property name="property">${field.name}</Property>
        </#if> 
        <Property name="align">center</Property>
      </DataColumn>
	</#list>
</#list>
 
    </DataGrid>
    <Dialog id="dialog${meta.clazz?cap_first}">
          <ClientEvent name="onClose">var data=view.get(&quot;#ds${meta.clazz?cap_first}&quot;).getData();&#xD;
data.cancel();&#xD;
</ClientEvent>
      <Property name="center">true</Property>
      <Property name="maximizeable">true</Property>
      <Property name="width">1024</Property>
      <Property name="height">500</Property>
      <Property name="modal">true</Property>
      <Property name="closeable">true</Property>
      <Property name="caption">详情</Property>
      <Buttons>
        
        <Button> 
          <ClientEvent name="onClick">var data=view.get(&quot;#ds${meta.clazz?cap_first}&quot;).getData();
var dialog=view.get(&quot;#dialog${meta.clazz?cap_first}&quot;); 
data.cancel();
dialog.hide();</ClientEvent>
          <Property name="caption">关闭</Property>
           <Property name="iconClass">fa fa-arrow-circle-o-left</Property>
          <Property name="ui">decline</Property>
        </Button>
        <Button>
          <ClientEvent name="onClick">var dialog=view.get(&quot;#dialog${meta.clazz?cap_first}&quot;);&#xD;
var action=view.get(&quot;#updateAction&quot;);&#xD;
dorado.MessageBox.confirm(&quot;确认操作吗?&quot;,function(){&#xD;
	action.execute(function(){&#xD;
		dialog.hide();&#xD;
		view.get(&quot;#ds${meta.clazz?cap_first}&quot;).flushAsync(); &#xD;

	});&#xD;
})</ClientEvent>
          <Property name="caption">确定</Property>
          <Property name="iconClass">fa fa-check-circle</Property>
          <Property name="ui">highlight</Property>
        </Button>
      </Buttons>
      
      <Children>
        <AutoForm>
        <Property name="labelWidth">100</Property>
          <Property name="dataSet">ds${meta.clazz?cap_first}</Property>
          <Property name="cols">*,*</Property>
          <Property name="labelAlign">center</Property>
          <Property name="showHint">false</Property>
          <Property name="showHintMessage">true</Property>
                <#list meta.editableList?chunk(1) as row> 
	<#list row as field>
       <AutoFormElement name="${field.name}">
            <Property name="name">${field.name}</Property>
            <Property name="property">${field.name}</Property>
             <Property name="label">${field.label}</Property>
             
            <Editor/>
          </AutoFormElement>
	</#list>
</#list>
         </AutoForm>
      </Children>
      <Tools/>
    </Dialog>
     <Dialog id="dialogImportInit">
      <Property name="caption">文件上传</Property>
      <Property name="modal">true</Property>
      <Property name="autoAdjustPosition">false</Property>
      <Property name="border">curve</Property>
      <Property name="center">true</Property>
      <Property name="resizeable">false</Property>
      <Property name="shadowMode">sides</Property>
      <Buttons>
        <Button layoutConstraint="bottom">
          <Property name="action">autoUploadAction</Property>
          <Property name="caption">上传</Property>
        </Button>
      </Buttons>
      <Children>
        <AutoForm id="uploadForm" layoutConstraint="top">
          <Property name="labelWidth">100</Property>
          <Property name="cols">*</Property>
          <Property name="showHint">false</Property>
          <Property name="createPrivateDataSet">true</Property>
          <Link layoutConstraint="align:center">
            <Property name="text">下载导入模板</Property>
            <Property name="href">http://dywxdz.oss-cn-shanghai.aliyuncs.com/excel/template/%E5%AD%A6%E7%94%9F%E5%AF%BC%E5%85%A5%E6%A8%A1%E6%9D%BF.xlsx</Property>
          </Link>
        </AutoForm>
        <UploadAction id="autoUploadAction">
          <ClientEvent name="onUploadProgress">view.get(&quot;#autoUploadProgressBar&quot;).set(&quot;value&quot;, arg.total.percent);
var prettySize = function(value) {
var _format = function(value, unit) {
return (value.toFixed(1) + ' ' + unit).replace('.0', '');
};
var K = 1024;
var M = K * K;
var G = M * K;
var T = G * K;
var dividers = [ T, G, M, K, 1 ];
var units = [ 'TB', 'GB', 'MB', 'KB', 'B' ];
if (value == 0) {
return '0B';
} else if (value &lt; 0) {
return 'Invalid size';
}
var result = '';
var temp = 0;
for ( var i = 0; i &lt; dividers.length; i++) {
var divider = dividers[i];
if (value >= divider) {
temp = value / divider;
if (temp &lt; 1.05) {
result = _format(value,
units[((i + 1) &lt; units.length) ? (i + 1) : i]);
} else {
result = _format(temp, units[i]);
}
break;
}
}
return result;
};</ClientEvent>
          <ClientEvent name="onFileUploaded">view.get(&quot;#dialogImportInit&quot;).close();
if(arg.returnValue.success){
	dorado.widget.NotifyTipManager.notify(&quot;导入成功!&quot;);
}else{
	view.get(&quot;#ds${meta.clazz}Fail&quot;).setData(arg.returnValue.${meta.clazz?uncap_first}ErrorList);
	view.get(&quot;#dialog${meta.clazz}Fail&quot;).show();
}
view.get(&quot;#ds${meta.clazz}&quot;).flushAsync();

</ClientEvent>
          <Property name="maxFileSize">100MB</Property>
          <Property name="fileResolver">${meta.clazz?uncap_first}Service#process</Property>
          <Property name="autoUpload">true</Property>
          <Filters>
            <Filter>
              <Property name="title">Excel files</Property>
              <Property name="extensions">xls,xlsx</Property>
            </Filter>
          </Filters>
        </UploadAction>
        <ProgressBar id="autoUploadProgressBar" layoutConstraint="type:top;top:50%;left:10;right:10">
          <Property name="textPattern">{percent}%</Property>
        </ProgressBar>
      </Children>
      <Tools/>
    </Dialog>
   
    <Dialog id="dialog${meta.clazz}Fail">
      <ClientEvent name="onClose">var data=view.get(&quot;#ds${meta.clazz}&quot;).getData();
data.cancel();
</ClientEvent>
      <Property name="center">true</Property>
      <Property name="maximizeable">true</Property>
      <Property name="modal">true</Property>
      <Property name="closeable">true</Property>
      <Property name="caption">失败数据</Property>
      <Property name="width">800</Property>
      <Property name="height">400</Property>
      <Property name="maximized">true</Property>
      <Buttons>
        <Button>
          <ClientEvent name="onClick">var data=view.get(&quot;#ds${meta.clazz}Fail&quot;).getData();
var dialog=view.get(&quot;#dialog${meta.clazz}Fail&quot;); 
data.cancel();
dialog.hide(); </ClientEvent>
          <Property name="caption">关闭</Property>
          <Property name="iconClass">fa fa-share</Property>
        </Button>
      </Buttons>
      <Children>
        <DataSet id="ds${meta.clazz}Fail">
          <Property name="dataType">[${meta.clazz}]</Property>
        </DataSet>
        <Tip>
          <Property name="caption">导入时存在失败数据，请根据提示信息修改并重新导入</Property>
          <Property name="floating">false</Property>
        </Tip>
        <DataGrid>
          <Property name="dataSet">ds${meta.clazz}Fail</Property>
          <Property name="highlightCurrentRow">false</Property>
          <Property name="highlightHoverRow">false</Property>
          <Property name="highlightSelectedRow">false</Property>
          <Property name="readOnly">true</Property>
          <RowNumColumn/>
          <ColumnGroup>
            <Property name="caption">导入数据</Property>
 <#list meta.importedList?chunk(1) as row> 
	<#list row as field>   
      <DataColumn name="${field.label}">
      
      <#if (field.imported?exists&&field.imported !='')> 
         <ClientEvent name="onRenderCell">var ${field.name}Tip = arg.data.get(&quot;${field.name}Tip&quot;);&#xD;
arg.dom.style.background = &quot;&quot;;&#xD;
if (${field.name}Tip) {&#xD;
	arg.dom.style.background = &quot;#fcc5c5&quot;;&#xD;
}&#xD;
&#xD;
$(arg.dom).on(&quot;mouseover&quot;,&#xD;
function() {&#xD;
    if (${field.name}Tip) {&#xD;
        var x = window.event.pageX;&#xD;
        var y = window.event.pageY;&#xD;
        var tip = view.get(&quot;#tip&quot;);&#xD;
        tip.set(&quot;text&quot;, ${field.name}Tip);&#xD;
        tip.set(&quot;offsetLeft&quot;, x);&#xD;
        tip.set(&quot;offsetTop&quot;, y);&#xD;
        tip.show();&#xD;
    } else {&#xD;
        view.get(&quot;#tip&quot;).hide();&#xD;
    }&#xD;
});&#xD;
&#xD;
&#xD;
arg.processDefault = true;</ClientEvent>
 </#if>
     
      <Property name="caption">${field.label}</Property>
      <Property name="property">${field.name}</Property>
        <Property name="align">center</Property>
      </DataColumn>
	</#list>
</#list>  
 
          </ColumnGroup>
          <DataColumn>
            <Property name="property">importDetail</Property>
            <Property name="caption">导入详情</Property>

          </DataColumn>
          <IndicatorColumn/>
        </DataGrid>

 <Tip id="tip"/>
        <Export2ReportAction id="eaFail">
          <Property name="template">dgImportFail</Property>
          <Property name="dataScope">currentPage</Property>
          <Property name="executingMessage">正在导出……</Property>
          <Property name="successMessage">数据导出成功。</Property>
          <Property name="extension">xlsx</Property>
          <Property name="maxSize">10000</Property>
          <Property name="fileName">订单导入报错详情</Property>
        </Export2ReportAction>
      </Children>
      <Tools/>
    </Dialog>
    <Export2ReportAction id="exportAction">
      <Property name="template">dg${meta.clazz?cap_first}</Property>
      <Property name="dataScope">serverAll</Property>
      <Property name="executingMessage">正在导出……</Property>
      <Property name="successMessage">数据导出成功。</Property>
      <Property name="extension">xlsx</Property>
      <Property name="maxSize">10000</Property>
      <Property name="fileName">${meta.domainLabel}</Property>
    </Export2ReportAction>
  </View>
</ViewConfig>

</@compress>
