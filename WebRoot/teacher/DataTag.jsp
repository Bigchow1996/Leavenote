<%@ page language="java" import="java.util.*"
	import="java.util.* ,java.awt.* ,com.zhuozhengsoft.pageoffice.*,com.zhuozhengsoft.pageoffice.wordwriter.*,java.text.SimpleDateFormat,java.util.Date"
	pageEncoding="utf-8"%>
<%@ include file="_sessioncheckteacher.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
	//PageOffice组件的使用
	//设置服务器页面
	PageOfficeCtrl pCtrl = new PageOfficeCtrl(request);
	pCtrl.setServerPage(request.getContextPath()+"/poserver.zz");
	pCtrl.setCaption("我的请假条");
	pCtrl.setTitlebar(false); //隐藏标题栏
	pCtrl.setMenubar(false); //隐藏菜单栏
	pCtrl.setCustomToolbar(false);//隐藏自定义工具栏
	//定义WordDocument对象
	WordDocument doc = new WordDocument();
	String mapid = request.getParameter("mapid");
	Map map = (Map)session.getAttribute("sessionmap"+mapid);

	//定义DataTag对象
	DataTag idTag = doc.openDataTag("{编号}");
	idTag.setValue(map.get("noteid").toString());
	DataTag userTag = doc.openDataTag("{姓名}");
	userTag.setValue(map.get("name").toString());
	DataTag deptTag = doc.openDataTag("{年级班级}");
	deptTag.setValue(map.get("classes").toString());
	DataTag dongTag = doc.openDataTag("{栋}");
	dongTag.setValue(map.get("building").toString());
	DataTag fangTag = doc.openDataTag("{房}");
	fangTag.setValue(map.get("room").toString());
	DataTag chuangTag = doc.openDataTag("{床}");
	chuangTag.setValue(map.get("bed").toString());
	DataTag reasonTag = doc.openDataTag("{请假原因}");
	reasonTag.setValue(map.get("reason").toString());
	DataTag startTag = doc.openDataTag("{开始时间}");
	startTag.setValue(map.get("starttime").toString());
	DataTag endTag = doc.openDataTag("{结束时间}");
	endTag.setValue(map.get("endtime").toString());
	DataTag classesTag = doc.openDataTag("{节数}");
	classesTag.setValue(map.get("classesnumber").toString());
	DataTag phoneTag = doc.openDataTag("{申请人电话}");
	phoneTag.setValue(map.get("phone").toString());
	DataTag parentTag = doc.openDataTag("{家长联系电话}");
	parentTag.setValue(map.get("parent").toString());
	
	pCtrl.setWriter(doc);
	//打开Word文件
	pCtrl.webOpen("doc/leavenote.doc", OpenModeType.docNormalEdit, "张佚名");
	request.getSession().removeAttribute("sessionmap"+mapid);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'DataTag.jsp' starting page</title>
    
	<meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
            <%=pCtrl.getHtmlCode("PageOfficeCtrl1")%>
  </body>
</html>
