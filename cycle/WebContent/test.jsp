<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

#dropmenu{
  list-style-type: none;
  width: 100px;
  height: 40px;
  margin: 30px auto 300px;
  padding: 0;
  background: #8a9b0f;
  border-bottom: 5px solid #535d09;
  border-radius: 3px 3px 0 0;
}
#dropmenu li{
  position: relative;
  width: 100%;
  float: left;
  margin: 0;
  padding: 0;
  text-align: center;
}
#dropmenu li a{
  display: block;
  margin: 0;
  padding: 15px 0 11px;
  color: #fff;
  font-size: 14px;
  font-weight: bold;
  line-height: 1;
  text-decoration: none;
}
#dropmenu li:hover > a{
  background: #6e7c0c;
  color: #eff7b1;
}
#dropmenu > li:hover > a{
  border-radius: 3px 3px 0 0;
}
#dropmenu li ul{
  list-style: none;
  position: absolute;
  top: 100%;
  left: 0;
  margin: 0;
  padding: 0;
  border-radius: 0 0 3px 3px;
}

#dropmenu li ul li{
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
#dropmenu li ul li a{
  padding: 13px 15px;
  background: #6e7c0c;
  text-align: left;
  font-size: 12px;
  font-weight: normal;
}
#dropmenu li:hover ul li{
  overflow: visible;
  height: 38px;
  border-top: 1px solid #7c8c0e;
  border-bottom: 1px solid #616d0b;
}
#dropmenu li:hover ul li:first-child{
  border-top: 0;
}
#dropmenu li:hover ul li:last-child{
  border-bottom: 0;
}
#dropmenu li:hover ul li:last-child a{
  border-radius: 0 0 3px 3px;
}

</style>

</head>
<body>
<ul id="dropmenu">
  <li><a href="#">メニュー</a>
    <ul>
      <li><a href="#">サブメニュー</a></li>
      <li><a href="#">サブメニュー</a></li>
      <li><a href="#">サブメニュー</a></li>
      <li><a href="#">サブメニュー</a></li>
    </ul>
  </li>
</ul>
</body>
</html>