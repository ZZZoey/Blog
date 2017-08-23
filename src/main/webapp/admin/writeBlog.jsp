<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>写博客页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript" charset="gbk" src="${pageContext.request.contextPath}/static/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="gbk" src="${pageContext.request.contextPath}/static/ueditor/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="gbk" src="${pageContext.request.contextPath}/static/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">

	function checkData(){
		var title=$("#title").val();
		var typeId=$("#typeId").combobox("getValue");
		var projectId=$("#projectId").combobox("getValue");
		var content=UE.getEditor('editor').getContent();
		var tags=$("#tags").val();

		if(title==null || title==''){
			alert("请输入标题！");
			return false;
		}else if(typeId==null || typeId==''){
			alert("请选择博客类别！");
            return false;
		}else if(typeId==2){
		    if(projectId==null|| projectId==''){
		        alert("请选择所属项目");
                return false;
			}
		}
		else if(tags==null || tags==''){
		    alert("请填写博客标签");
            return false;
		}
		else if(content==null || content==''){
			alert("请输入内容！");
            return false;
		}
        $("#content").val(UE.getEditor('editor').getContent());
		return true;
	}

	// 重置数据
	function resetValue(){
		$("#title").val("");
		$("#typeId").combobox("setValue","");
		$("#projectId").combobox("setValue","");
		UE.getEditor('editor').setContent("");
		$("#tags").val("");
	}


    $(document).ready(function () {
        var tId='${blog.typeId}'
		if(tId==2){
            $("#projectCombo").show();
        }
        $("#typeId").combobox({
            onChange: function (n, o) {
                var typeId=$("#typeId").combobox("getValue");
                if(typeId==2){
                    $("#projectCombo").show();
                }
            }
        });
	})

</script>
</head>
<body style="margin: 10px">
<div id="p" class="easyui-panel" title="编写博客" style="padding: 10px">
	<form action="blog/save.do" method="post" onsubmit="return checkData()" enctype="multipart/form-data">
 	<table cellspacing="20px">
   		<tr>
   			<td width="80px">博客标题：</td>
   			<td><input type="text" id="title" name="title" style="width: 400px;" value="${blog.title}"/><input type="hidden" id="blogId" name="blogId"  value="${blog.blogId}"/></td>
   		</tr>
		<tr>
			<td width="80px">作者：</td>
			<td><input type="text" id="author" name="author" style="width: 400px;" value="Zoey"/></td>
		</tr>
   		<tr>
   			<td>所属类别：</td>
   			<td>
   				<select class="easyui-combobox" style="width: 154px" id="typeId" name="typeId" editable="false" panelHeight="auto" >
					<option value="">请选择博客类别...</option>
				    <c:forEach var="type" items="${typeComboList }">
				    	<option value="${type.typeId }" ${blog.typeId==type.typeId?'selected':''} >${type.name }</option>
				    </c:forEach>
                </select>
   			</td>
   		</tr>
		<tr id="projectCombo" style="display: none">
			<td>所属项目：</td>
			<td>
				<select class="easyui-combobox" style="width: 154px" id="projectId" name="projectId" editable="false" panelHeight="auto" >
					<option value="">请选择所属项目...</option>
					<c:forEach var="project" items="${projectComboList }">
						<option value="${project.projectId }" ${blog.projectId==project.projectId?'selected':''}>${project.title }</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<td>是否推荐：</td>
			<td><input type="radio" name="recommend" value="1" ${blog.recommend==true?'checked':''}>是 <input type="radio" name="recommend" value="0" ${blog.recommend==false?'checked':''}> 否</td>
		</tr>
		<tr>
			<td>标签：</td>
			<td><input type="text" id="tags" name="tags" style="width: 400px;" value="${blog.tags}"/>&nbsp;(多个标签中间用逗号隔开)</td>
		</tr>
        <tr>
            <td>封面：</td>
            <td><input type="file" id="file" name="file"/></td>
        </tr>
		<tr>
			<td>摘要：</td>
			<td><textarea id="summary" name="summary" rows="7" cols="30" >${blog.summary}</textarea></td>
		</tr>
   		<tr>
   			<td valign="top">博客内容：</td>
   			<td>
                <input id="content" name="content" type="hidden" />
				   <script id="editor" type="text/plain" style="width:100%;height:500px;"> ${blog.content}</script>
   			</td>
   		</tr>
   		<tr>
   			<td></td>
   			<td>
   				<button  class="easyui-linkbutton" data-options="iconCls:'icon-submit'" type="submit">发布博客</button>
   			</td>
   		</tr>
   	</table> </form>
 </div>

 <script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');

</script>
</body>
</html>