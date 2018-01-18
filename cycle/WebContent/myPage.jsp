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
<title>マイページ</title>
<style type="text/css">

</style>


</head>

<body>

<jsp:include page="/includeHeader.jsp" flush="true" />

<br><br><br>

マイページです

           <s:iterator value="joinPartyList">
				<tr>
					<td><s:property value="partyName" /></td>
					<td><s:property value="partyDate" /></td>
					<td><s:property value="partyPrice" /><span>個</span></td>
					<td><s:property value="insert_date" /></td>
				</tr>
			</s:iterator>

</body>
</html>