<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>i操盘--法律声明</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />
<link href="<%=basePath%>/css/icaopan.css" rel="stylesheet" type="text/css">
<link rel="icon" href="<%=basePath%>/images/gdq.ico" mce_href="<%=basePath%>/images/gdq.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="<%=basePath%>/images/gdq.ico" mce_href="<%=basePath%>/images/gdq.ico" type="image/x-icon"/>
<script type="text/javascript" src="<%=basePath%>/js/util/jquery-1.8.0.min.js"></script>
</head>

<body>
<div id="container">
<jsp:include page="../common/header.jsp" />
<!--关于我们-->
<div id="main" class="wrap clearfix">
	<div class="aside-nav fl">
		<ul>
			<li>
				<a target="_self" href="//t.icaopan.com/dist/html/joinus.html">加入我们</a>
			</li>
			<li>
				<a target="_self" href="<%=basePath%>/help/aboutus.jsp">关于我们</a>
			</li>
			<li class="active">
				<a target="_self" href="<%=basePath%>/help/law.jsp">法律声明</a>
			</li>
		</ul>
	</div>
	<div class="about main-cont fr">
		<h2>法律声明</h2>
	    <p><strong>第一条</strong>&nbsp;本网站的宗旨是在不违反中华人民共和国法律法规的前提下，尽可能地为中国广大投资者提供专业的国际化水准的交易平台和金融产品。&nbsp;</p>
	    <p>禁止使用本网站从事洗钱、走私、商业贿赂等一切非法交易活动，若发现此类事件，本站将冻结账户，立即报送公安机关。</p>
	    <br>
		<p> <strong>第二条</strong>&nbsp;当公安机关、检察院、法院等有权机关出示相应的调查文件要求本站配合对指定用户进行调查时，&nbsp;或对用户账户采取查封、冻结或者划转措施时，本站将按照公安机关的要求协助提供相应的用户数据，或进行相应的操作。&nbsp;因此而造成的用户隐私泄露、账户不能操作及因此给所造成的损失等，本站不承担任何责任。</p>
		<br>
		<p><strong>第三条</strong>&nbsp;本网站使用者因为违反本声明的规定而触犯中华人民共和国法律的，本站做为服务的提供方，有义务对平台的规则及服务进行完善，&nbsp;但本站并无触犯中华人民共和国法律的动机和事实，对使用者的行为不承担任何连带责任。</p>
		<br>
		<p><strong>第四条</strong>&nbsp;凡以任何方式登录本网站或直接、间接使用本网站服务者，视为自愿接受本网站声明的约束。</p>
		<br>
		<p><strong>第五条</strong>&nbsp;本声明未涉及的问题参见中华人民共和国有关法律法规，当本声明与中华人民共和国法律法规冲突时，以中华人民共和国法律法规为准。</p>
	</div>
</div>
<!--法律声明结束-->
<jsp:include page="../common/footer.jsp"></jsp:include>
</div>
</body>
</html>