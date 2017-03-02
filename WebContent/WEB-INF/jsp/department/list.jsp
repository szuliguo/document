<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="s" uri="/struts-tags" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门列表</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" type="text/css"/>
</head>
<body>
 <jsp:include page="inc/inc.jsp"></jsp:include>
 <table class="ct" width="800" align="center" border="1" cellpadding="0" cellspacing="0"> 
  <tr>
  <td>部门Id</td><td>部门名称</td><td>操作</td>
  </tr>
  <s:iterator value="#ds">
     <tr>
     <td>${id }</td><td><a href="department_show.action?id=${id}">${name }</a></td>
     <td>
     <a href="department_delete.action?id=${id}">删除</a>&nbsp;
     <a href="department_updateInput.action?id=${id}">更新</a>&nbsp;
     <a href="department_show.action?id=${id}">查看</a>&nbsp;
     <a href="department_depScopeInput.action?id=${id}">设置可发文部门</a>
       
     
     </td>
     </tr>
  </s:iterator> 
  </table>

</body>
</html>