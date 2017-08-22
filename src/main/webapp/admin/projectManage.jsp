<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博客项目管理页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">

	var url;

	function deleteProject(){
		var selectedRows=$("#dg").datagrid("getSelections");
		if(selectedRows.length==0){
			 $.messager.alert("系统提示","请选择要删除的数据！");
			 return;
		 }
		 var strIds=[];
		 for(var i=0;i<selectedRows.length;i++){
			 strIds.push(selectedRows[i].tagId);
		 }
		 var ids=strIds.join(",");
		 $.messager.confirm("系统提示","您确定要删除这<font color=red>"+selectedRows.length+"</font>条数据吗？",function(r){
				if(r){
					$.post("${pageContext.request.contextPath}/admin/project/delete.do",{ids:ids},function(result){
						if(result.success){
							if(result.msg){
								 $.messager.alert("系统提示",result.msg);
							}else{
								 $.messager.alert("系统提示","数据已成功删除！");
							}
							 $("#dg").datagrid("reload");
						}else{
							$.messager.alert("系统提示","数据删除失败！");
						}
					},"json");
				}
	   });
	}

	function openProjectAddDialog(){
		$("#dlg").dialog("open").dialog("setTitle","添加博客项目信息");
		url="${pageContext.request.contextPath}/admin/project/save.do";
	}

	function openProjectModifyDialog(){
		var selectedRows=$("#dg").datagrid("getSelections");
		 if(selectedRows.length!=1){
			 $.messager.alert("系统提示","请选择一条要编辑的数据！");
			 return;
		 }
		 var row=selectedRows[0];
		 $("#dlg").dialog("open").dialog("setTitle","编辑博客项目信息");
		 $("#fm").form("load",row);
		 url="${pageContext.request.contextPath}/admin/project/save.do?projectId="+row.projectId;
	 }

	function saveProject(){
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

	function resetValue(){
		 $("#projectName").val("");
         $("#summary").val("");

	 }

	 function closeProjectDialog(){
		 $("#dlg").dialog("close");
		 resetValue();
	 }
</script>
</head>
<body style="margin: 1px">
<table id="dg" title="博客项目管理" class="easyui-datagrid"
   fitColumns="true" pagination="true" rownumbers="true"
   url="${pageContext.request.contextPath}/admin/project/list.do" fit="true" toolbar="#tb">
   <thead>
   	<tr>
   		<th field="cb" checkbox="true" align="center"></th>
   		<th field="projectId" width="20" align="center">编号</th>
   		<th field="title" width="100" align="center">博客项目名称</th>
		<th field="summary" width="100" align="center">摘要</th>
		<th field="coverImage" width="100" align="center">封面图片</th>
   	</tr>
   </thead>
 </table>
 <div id="tb">
 	<div>
 	    <a href="javascript:openProjectAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
 		<a href="javascript:openProjectModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
 		<a href="javascript:deleteProject()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
 	</div>
 </div>


 <div id="dlg" class="easyui-dialog" style="width:500px;height:300px;padding: 10px 20px"
   closed="true" buttons="#dlg-buttons">

   <form id="fm" method="post" enctype="multipart/form-data">
   	<table cellspacing="8px">
   		<tr>
   			<td>博客项目名称：</td>
   			<td><input type="text" id="projectName" name="title" class="easyui-validatebox" required="true"/></td>
   		</tr>
		<tr>
			<td width="20%">封面路径</td>
			<td><input type="file" id="imagePath" name="file" /></td>
		</tr>
		<tr>
			<td valign="top">摘要：</td>
			<td><textarea rows="7" cols="30" name="summary" id="summary"></textarea></td>
		</tr>
   	</table>
   </form>
 </div>

 <div id="dlg-buttons">
 	<a href="javascript:saveProject()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
 	<a href="javascript:closeProjectDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
 </div>
</body>
</html>