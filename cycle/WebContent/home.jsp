<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Home画面</title>
<style type="text/css">

</style>


</head>

<body>

<jsp:include page="/includeHeader.jsp" flush="true" />

<br><br><br>

<s:if test="#session.loginUser ==null">
<s:form action="LoginAction">
				<s:textfield name="loginAddress"/>
				<s:password name="loginPassword"/>
				<!-- <s:textfield name="userName"/> -->
				<s:hidden name="userName" value='<s:property value="userName"/>'/>
				<s:submit value="ログイン"/>
			</s:form>
</s:if>

</body>
</html>