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
<title>検索結果</title>
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

	<div id="main">

		<h2 class="title">検索結果</h2>
		<s:if test="listDTO==null">
		<h2>条件に合うパーティーがありません。</h2>
		</s:if>

		<!--商品詳細-->

		<div class="box"></div>
		<s:iterator value="listDTO">
		<div class="list">

		    <div class="partyId;">
		        パーティーID：<s:property value="partyId" />
		    </div>
			<div class="partyName">
				名称：<s:property value="partyName" />
			</div>
			<div class="partyDate">
				開催日：<s:date name="partyDate" format="yyyy年MM月dd日" />
				<s:if test="partyWeek==1">(日)</s:if>
				<s:if test="partyWeek==2">(月)</s:if>
				<s:if test="partyWeek==3">(火)</s:if>
				<s:if test="partyWeek==4">(水)</s:if>
				<s:if test="partyWeek==5">(木)</s:if>
				<s:if test="partyWeek==6">(金)</s:if>
				<s:if test="partyWeek==7">(土)</s:if>
			</div>
			<div class="partyPlace">
			    開催地：<s:property value="partyPlace" />
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
            　　　
             <a href='<s:url action="NicePartyAction"><s:param name="partyId" value="%{partyId}"/></s:url>'>
            <input type="submit" value="いいね！" />
            </a></s:if>

            <s:if test="#session.loginUser != null">
             <a href='<s:url action="PartyEditAction">
             <s:param name="partyId" value="%{partyId}"/>
             <s:param name="partyName" value="%{partyName}"/>
             <s:param name="partyDate" value="%{partyDate}"/>
             <s:param name="partyPrice" value="%{partyPrice}"/>
             <s:param name="partyCapacity" value="%{partyCapacity}"/>
             <s:param name="partyPlace" value="%{partyPlace}"/>
             <s:param name="ageMinimum" value="%{ageMinimum}"/>
             <s:param name="ageMaximum" value="%{ageMaximum}"/>
             <s:param name="partyDetail" value="%{partyDetail}"/>
             </s:url>'>
            <input type="submit" value="内容を変更する" />
            </a>　　　
              <a href='<s:url action="PartyDeleteAction"><s:param name="partyId" value="%{partyId}"/></s:url>'>
            <input type="submit" value="削除する" />
            </a>　
            </s:if>
		</div>
		</s:iterator>
	</div>


	<br>
	<br>

</body>
</html>