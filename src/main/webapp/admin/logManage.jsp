<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>本站更新日志页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">

	var url;

	function deleteLog(){
		var selectedRows=$("#dg").datagrid("getSelections");
		if(selectedRows.length==0){
			 $.messager.alert("系统提示","请选择要删除的数据！");
			 return;
		 }
		 var strIds=[];
		 for(var i=0;i<selectedRows.length;i++){
			 strIds.push(selectedRows[i].logId);
		 }
		 var ids=strIds.join(",");
		 $.messager.confirm("系统提示","您确定要删除这<font color=red>"+selectedRows.length+"</font>条数据吗？",function(r){
				if(r){
					$.post("${pageContext.request.contextPath}/admin/log/delete.do",{ids:ids},function(result){
						if(result.success){
							 $.messager.alert("系统提示","数据已成功删除！");
							 $("#dg").datagrid("reload");
						}else{
							$.messager.alert("系统提示","数据删除失败！");
						}
					},"json");
				} 
	   });
	}
	
	function openLogAddDialog(){
		$("#dlg").dialog("open").dialog("setTitle","添加本站更新日志");
		url="${pageContext.request.contextPath}/admin/log/save.do";
	}
	
	function openLogModifyDialog(){
		var selectedRows=$("#dg").datagrid("getSelections");
		 if(selectedRows.length!=1){
			 $.messager.alert("系统提示","请选择一条要编辑的数据！");
			 return;
		 }
		 var row=selectedRows[0];
		 $("#dlg").dialog("open").dialog("setTitle","编辑本站更新日志");
		 $("#fm").form("load",row);
		 url="${pageContext.request.contextPath}/admin/log/save.do?logId="+row.logId;
	 }
	
	function saveLog(){
		 $("#fm").form("submit",{
			url:url,
			onSubmit:function(){
				return $(this).form("validate");
			},
			success:function(result){
				var result=eval('('+result+')');
				if(result.success){
					$.messager.alert("系统提示","保存成功！");
					resetValue();
					$("#dlg").dialog("close");
					$("#dg").datagrid("reload");
				}else{
					$.messager.alert("系统提示","保存失败！");
					return;
				}
			}
		 });
	 }

    function formatDate(date,row) {
        var date=new Date(date);
        var y = date.getFullYear();
        var m = date.getMonth() + 1;
        var d = date.getDate();
        return y + '-' + (m < 10 ? ('0' + m) : m) + '-'
            + (d < 10 ? ('0' + d) : d);
    }
	 
	function resetValue(){
		 $("#content").val("");
		 $("#createTime").val("");
		 $("#updateTime").val("");
	 }
	
	 function closeLogDialog(){
		 $("#dlg").dialog("close");
		 resetValue();
	 }
</script>
</head>
<body style="margin: 1px">
<table id="dg" title="本站更新日志" class="easyui-datagrid"
   fitColumns="true" pagination="true" rownumbers="true"
   url="${pageContext.request.contextPath}/admin/log/list.do" fit="true" toolbar="#tb">
   <thead>
   	<tr>
   		<th field="cb" checkbox="true" align="center"></th>
   		<th field="logId" width="20" align="center">编号</th>
   		<th field="content" width="200" align="center">日志内容</th>
   		<th field="createTime" width="200" align="center" formatter="formatDate">发布时间</th>
   		<th field="updateTime" width="100" align="center" formatter="formatDate">更新时间</th>
   	</tr>
   </thead>
 </table>
 <div id="tb">
 	<div>
 	    <a href="javascript:openLogAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
 		<a href="javascript:openLogModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
 		<a href="javascript:deleteLog()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
 	</div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
 </div>
 
 
 <div id="dlg" class="easyui-dialog" style="width:500px;height:200px;padding: 10px 20px"
   closed="true" buttons="#dlg-buttons">
   
   <form id="fm" method="post">
   	<table cellspacing="8px">
   		<tr>
   			<td valign="top">日志内容：</td>
			<td><textarea rows="6" cols="50" id="content" name="content" required="true"></textarea></td>
   		</tr>
   	</table>
   </form>
 </div>
 
 <div id="dlg-buttons">
 	<a href="javascript:saveLog()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
 	<a href="javascript:closeLogDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
 </div>
</body>
</html>