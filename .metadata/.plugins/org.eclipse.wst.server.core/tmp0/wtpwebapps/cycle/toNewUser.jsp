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
<title>初めての方へ</title>
<style type="text/css">
</style>
<script type="text/javascript">

    flag =false;
    function allChange(){
        flag = !flag;
        var chkbox = document.getElementsByName('check');
        for(i = 0; i < chkbox.length; i++){
            chkbox[i].checked = flag;
        }
    }
</script>
</head>
<body>
<jsp:include page="/include.jsp" flush="true" />

<form>
<label><input name="check" value="1" type="checkbox" />XHTML</label><br />
<label><input name="check" value="2" type="checkbox" />Javascript</label><br />
<label><input name="check" value="3" type="checkbox"/>PHP</label><br />
<br />
<label><input name="selectall" onclick="allChange(this.checked);" type="checkbox" />すべて選択／すべて解除</label><br />
</form>
</body>
</html>