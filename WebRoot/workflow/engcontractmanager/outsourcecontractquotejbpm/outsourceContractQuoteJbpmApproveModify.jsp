<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic" %>
<link rel="stylesheet" type="text/css" href="<html:rewrite forward='formCSS'/>">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=GBK">
  <title>XJSCRM</title>
</head>
<body>
  <html:errors/>
  <html:form action="/outsourceContractQuoteJbpmAction.do?method=toSaveUpdateApprove">
    <%@ include file="/engcontractmanager/outsourcecontractquotemaster/manage/addOrModify.jsp" %>   
    <%@ include file="/workflow/approveResult.jsp" %>
    <%@ include file="/workflow/processApproveMessage.jsp" %>
  </html:form>
</body>