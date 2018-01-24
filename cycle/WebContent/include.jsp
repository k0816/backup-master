<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>JSP共通設定</title>
<style type="text/css">

#header {
	width: 100%;
	height: 80px;
	background-color: white;
	border-bottom: 3px solid black;
	/* position: fixed; */
}

#welcome {
	position: absolute;
	left: 160px;
	top: 0px;
}

.botan {
	position: absolute;
	top: 55px;
}

#home {
	position: absolute;
	left: 350px;
}

#search {
	position: absolute;
	left: 420px;
}

#createORmypage {
	position: absolute;
	left: 505px;
}

#other {
	position: absolute;
	left: 650px;
}

body {
	/* background: url("./image/wood.jpg"); */
	background: #FFDEAD;
	margin: 0;
	padding: 0;
}
/* ドロップダウンメニューについて */
#dropmenu {
	list-style-type: none;
	width: 100px;
	height: 20px;
	margin: 0px auto 0px;
	padding: 0;
	background: #bfbfbf;
	border-bottom: 5px solid #7f7f7f;
	border-radius: 3px 3px 0 0;;
}

#dropmenu li {
	position: relative;
	width: 100%;
	float: left;
	margin: 0;
	padding: 0;
	text-align: center;
}

#dropmenu li a {
	display: block;
	margin: 0;
	padding: 10px;
	color: black;
	font-size: 14px;
	font-weight: bold;
	line-height: 1;
	text-decoration: none;
}

#dropmenu li:hover>a {
	background: #bfbfbf;;
	color: #eff7b1;
}

#dropmenu>li:hover>a {
	border-radius: 3px 3px 0 0;
}

#dropmenu li ul {
	list-style: none;
	position: absolute;
	top: 100%;
	left: 0;
	margin: 0;
	padding: 0;
	border-radius: 0 0 3px 3px;
}

#dropmenu li ul li {
	overflow: hidden;
	width: 100%;
	height: 0;
	color: #fff;
	-moz-transition: .2s;
	-webkit-transition: .2s;
	-o-transition: .2s;
	-ms-transition: .2s;
	transition: .2s;
}

#dropmenu li ul li a {
	padding: 13px 13px;
	background: #bfbfbf;
	text-align: center;
	font-size: 12px;
	font-weight: normal;
}

#dropmenu li:hover ul li {
	overflow: visible;
	height: 38px;
	border-top: 1px solid #bfbfbf;
	border-bottom: 1px solid #616d0b;
}

#dropmenu li:hover ul li:first-child {
	border-top: 0;
}

#dropmenu li:hover ul li:last-child {
	border-bottom: 0;
}

#dropmenu li:hover ul li:last-child a {
	border-radius: 0 0 3px 3px;
}
</style>
</head>
<body>
	<div id="header">
          <a href="GoHomeAction"><img src="image\logotest.jpg" width="150" height="80"></a>

		<div id="welcome">  <!-- ログイン情報入力フォーム-->
			<s:if test="#session.loginUser != null">
ようこそ！<s:property value="#session.loginUser.getUserName()" escape="false" />様！
            </s:if>
            <s:else>
            <s:form id="form" name="form" action="LoginAction">
				<div id="address"><s:textfield name="loginAddress"/></div>
				<div id="password"><s:password name="loginPassword"/></div>
				<s:hidden name="userName" value='<s:property value="userName"/>'/>
				<s:hidden name="userId" value='<s:propety value="userId"/>'/>
				<div id="login"><s:submit value="ログイン"/></div>
			</s:form>
            </s:else>
            </div>

	<div class="botan">
			<div id="home">
				<form action="GoHomeAction">
					<input type="submit" value="ホーム" />
				</form>
			</div>
			<div id="search">
				<form action="PartySearchAction">
					<input type="submit" value="詳細検索" />
				</form>
			</div>
			<div id=createORmypage>
			<s:hidden name="loginAddress" value="%{loginAddress}"/>
			<s:hidden name="loginPassword" value="%{loginPassword}"/>
			<s:hidden name="userId" value="%{userId}"/>
			<s:hidden name="userName" value="%{userName}"/>
			<s:if test="#session.loginUser !=null">
				<ul id="dropmenu">
					<li><a href="#">マイページ</a>
						<ul>
							<li><a href="NicePartyListAction">いいね！</a></li>
							<li><a href="PartyJoinHistoryAction">参加履歴</a></li>
							<li><a href="UserInfoAction">登録情報確認</a></li>
							<li><a href="PartySearchNEWAction">商品検索</a></li>

						</ul>
					</li>
				</ul>
			</s:if>
			<s:else>
				<form action="UserCreateAction">
					<input type="submit" value="会員登録" />
				</form>
			</s:else>
			</div>

		<!-- ドロップダウンメニュー -->
		<div id="other">
		<ul id="dropmenu">
			<li><a href="#">その他</a>
				<ul>
					<li><a href="ToNewUserAction">お知らせ</a></li>
					<li><a href="ToNewUserAction">初めての方へ</a></li>
					<li><a href="#">会社概要</a></li>
					<li><a href="#">お問い合わせ</a></li>
					<li><s:if test="#session.loginUser !=null">
							<a href="LogoutAction">ログアウト</a>
						</s:if></li>
				</ul>
			</li>
		</ul>
		</div>
	</div>
	</div>
	<br>
</body>
</html>
