<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="./css/destinationRegisterCompletion.css">

<script type="text/javascript">
	function autoLink() {
		location.href = "PurchaseInfoAction";
	}
	setTimeout("autoLink()", 5000);
</script>
<title>購入情報完了画面</title>
</head>

<body text="#232323" link="##404040" vlink="#404040" alink="#404040">

	<!--ヘッダーメニューここから-->
	<jsp:include page="subjsp/header.jsp" flush="true" />
	<!--ヘッダーメニューここまで-->

	<!--メインここから -->
	<div id="main">
		<div class="member">
			<h3>宛先登録しました</h3>
			<p>5秒後に決済画面に戻ります。</p>
		</div>
	</div>
	<!--メインここまで -->

	<!--フッターここから-->
	<div id="footer">
		<p>Copyright© yataberyouhin All Rights Reserved.</p>
		<div class="footer_menu">
			<div class="footer_menu_1">
				<s:form method="post">
					<a href="ContactAction">お問い合わせ</a>
				</s:form>
			</div>
			<div class="footer_menu_2">
				&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="https://www.google.co.jp/maps/place/インターノウス">位置情報</a>
			</div>
		</div>
	</div>
	<!--フッターここまで-->

</body>
</html>