<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博客管理页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">

	function formatType(val,row){
		return val.name;
	}

    function formatTag(val,row){
	    var result=[];
	    for(var i=0;i<val.length;i++){
            result.push(val[i].name)
		}
        return result.join(",");
    }
	
	function formatTitle(val,row){
		return "<a target='_blank' href='${pageContext.request.contextPath}/blog/articles/"+row.blogId+".html'>"+val+"</a>"
	}
	
	function searchBlog(){
		$("#dg").datagrid('load',{
			"title":$("#s_title").val(),
            "typeId":$("#s_typeId").combobox("getValue")
		});
	}
	
	function deleteBlog(){
		var selectedRows=$("#dg").datagrid("getSelections");
		if(selectedRows.length==0){
			 $.messager.alert("系统提示","请选择要删除的数据！");
			 return;
		 }
		 var strIds=[];
		 for(var i=0;i<selectedRows.length;i++){
			 strIds.push(selectedRows[i].blogId);
		 }
		 var ids=strIds.join(",");
		 $.messager.confirm("系统提示","您确定要删除这<font color=red>"+selectedRows.length+"</font>条数据吗？",function(r){
				if(r){
					$.post("${pageContext.request.contextPath}/admin/blog/delete.do",{ids:ids},function(result){
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
	
	
	function openBlogModifyTab(){
		 var selectedRows=$("#dg").datagrid("getSelections");
		 if(selectedRows.length!=1){
			 $.messager.alert("系统提示","请选择一个要修改的博客！");
			 return;
		 }
		 var row=selectedRows[0];
		 window.parent.openTab('修改博客','writeBlog.do?blogId='+row.blogId,'icon-writeblog');
	}
	
</script>
</head>
<body style="margin: 1px">
<table id="dg" title="博客管理" class="easyui-datagrid"
   fitColumns="true" pagination="true" rownumbers="true"
   url="${pageContext.request.contextPath}/admin/blog/list.do" fit="true" toolbar="#tb">
   <thead>
   	<tr>
   		<th field="cb" checkbox="true" align="center"></th>
   		<th field="blogId" width="20" align="center">编号</th>
   		<th field="title" width="200" align="center" formatter="formatTitle">标题</th>
   		<th field="createTime" width="50" align="center">发布日期</th>
   		<th field="type" width="50" align="center" formatter="formatType">博客类别</th>
		<th field="tagList" width="50" align="center" formatter="formatTag">博客标签</th>
   	</tr>
   </thead>
 </table>
 <div id="tb">
 	<div>
 		<a href="javascript:openBlogModifyTab()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
 		<a href="javascript:deleteBlog()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
 	</div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
 	<div>
 		&nbsp;标题：&nbsp;<input type="text" id="s_title" size="20" onkeydown="if(event.keyCode==13) searchBlog()"/>
		&nbsp;类别：&nbsp;<input class="easyui-combobox" id="s_typeId" name="s_typeId" data-options="editable:false,panelHeight:'auto',valueField:'typeId',textField:'name',url:'typeComboList.do'" onkeydown="if(event.keyCode==13) searchBlog()">
 		<a href="javascript:searchBlog()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
 	</div>
 </div>
</body>
</html>