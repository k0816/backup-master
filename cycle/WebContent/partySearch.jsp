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
<title>パーティー詳細検索</title>
<style type="text/css">


.list {
    border: 4px solid #82636b;
    border-radius: 240px 15px 185px 15px / 15px 200px 15px 185px;
    margin: 1em 0;
    padding: 1em;
}


</style>
</head>

<body>

	<jsp:include page="/include.jsp" flush="true" />
	<br>
	<div id="main">

		<h2 class="title">商品一覧</h2>
		<!--商品詳細-->

		<div class="box"></div>
		<s:iterator value="partySearchDTOList">
		<div class="list">
			<div class="partyName">
				名称：<s:property value="partyName" />
			</div>
			<div class="partyDate">
				開催日：<s:date name="partyDate" format="yyyy年MM月dd日" />
			</div>
			<div class="partyPrice">
				参加費：<s:property value="partyPrice" />円
			</div>
			<div class="partyCapacity">
				参加人数：<s:property value="partyCapacity" />人

			</div>
			<div class="age">
			年齢制限：<s:property value="ageMinimum" />歳 ～ <s:property value="ageMaximum" /> 歳
			</div>
			<div class="partyDetail">
			<s:property value="partyDetail" />
			</div>
			 <a href='<s:url action="PartyDetailAction"><s:param name="partyId" value="%{partyId}"/></s:url>'>
            <input type="submit" value="詳しく見る" />
            </a>
            <s:if test="#session.loginUser != null">
            　　　
             <a href='<s:url action="NiceAction"><s:param name="partyId" value="%{partyId}"/></s:url>'>
            <input type="submit" value="いいね！" />
            </a></s:if>
		</div>

		</s:iterator>
	</div>


	<br>
	<br>

</body>
</html>
