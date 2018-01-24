<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="/include.jsp" flush="true" />

<s:form id="form" name="form" action="PartySearchResultAction">

開催地：<label><input type="radio" name="partyPlace" value="東京都" checked >指定しない</label>
	<label><input type="radio" name="partyPlace" value="新宿" >新宿</label>
	<label><input type="radio" name="partyPlace" value="池袋" >池袋</label>
	<label><input type="radio" name="partyPlace" value="六本木" >六本木</label>
	<label><input type="radio" name="partyPlace" value="渋谷" >渋谷</label>
	<label><input type="radio" name="partyPlace" value="品川" >品川</label>
	<label><input type="radio" name="partyPlace" value="上野" >上野</label><br>
年齢層：<select name="ageMinimum">
    <option value="0">指定しない</option>
    <option value="20">20</option>
    <option value="25">25</option>
    <option value="30">30</option>
    <option value="35">35</option>
    <option value="40">40</option>
  </select>　～
  <select name="ageMaximum">
    <option value="100">指定しない</option>
    <option value="25">25</option>
    <option value="30">30</option>
    <option value="35">35</option>
    <option value="40">40</option>
    <option value="45">45</option>
    <option value="50">50</option>
  </select>　歳<br>

参加人数：<select name="partyCapacity">
    <option value="0">指定しない</option>
    <option value="10">20</option>
    <option value="20">40</option>
    <option value="30">60</option>
    <option value="40">80</option>
    <option value="50">100</option>
  </select>　～
  <select name="capa2">
    <option value="1000">指定しない</option>
    <option value="20">20</option>
    <option value="40">40</option>
    <option value="60">60</option>
    <option value="80">80</option>
    <option value="100">100</option>
  </select>　人<br>

金額；<select name="partyPrice">
    <option value="0">指定しない</option>
    <option value="1000">1500</option>
    <option value="2000">3000</option>
    <option value="3000">4500</option>
    <option value="4000">6000</option>
    <option value="5000">7500</option>
    <option value="6000">9000</option>
  </select>　～
  <select name="price2">
    <option value="100000">指定しない</option>
    <option value="3000">3000</option>
    <option value="4500">4500</option>
    <option value="6000">6000</option>
    <option value="7500">7500</option>
    <option value="9000">9000</option>
  </select>　円<br>

<div id="searchBotan"><s:submit value="検索"/></div>
</s:form>



</body>
</html>