<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/html-table.tld" prefix="table"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href="<html:rewrite forward='formCSS'/>">
	<script language="javascript" defer="defer" src="<html:rewrite forward='DatePickerJS'/>"></script>
	<script language="javascript" src="<html:rewrite page="/common/javascript/dynamictable.js"/>"></script>
  <link rel="stylesheet" type="text/css" href="<html:rewrite forward='formCSS'/>">
  <script language="javascript" src="<html:rewrite forward='pageJS'/>"></script>
  <link href="/XJSCRM/common/css/bb.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="<html:rewrite page="/common/javascript/jquery-1.9.1.min.js"/>"></script>
  <script type="text/javascript" src="<html:rewrite page="/common/javascript/highcharts/highcharts.js"/>"></script>


<br>
<html:form action="/zbEleReportAction.do?method=toSearchResults">

<input type="hidden" name="maintdivision" id="maintdivision" value="${rmap.maintdivision }"/>
<input type="hidden" name="maintstation" id="maintstation" value="${rmap.maintstation }"/>
<input type="hidden" name="contractterms" id="contractterms" value="${rmap.contractterms }"/>

<html:hidden property="genReport" styleId="genReport" />
	<%int i=1; %>
<table class=tb  width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr class=wordtd_header>
	<td nowrap="nowrap"  style="text-align: center;">序号</td>
	<td nowrap="nowrap"  style="text-align: center;">维保分部</td>
	<td nowrap="nowrap"  style="text-align: center;">维保站</td>
	<td nowrap="nowrap"  style="text-align: center;">维保合同号</td>
	<td nowrap="nowrap"  style="text-align: center;">销售合同号</td>
	<td nowrap="nowrap"  style="text-align: center;">电梯编号</td>
	<td nowrap="nowrap"  style="text-align: center;">甲方名称</td>
	<td nowrap="nowrap"  style="text-align: center;">使用单位名称</td>
	<td nowrap="nowrap"  style="text-align: center;">电梯类型</td>
	<td nowrap="nowrap"  style="text-align: center;">层/站</td>
	<td nowrap="nowrap"  style="text-align: center;">梯速</td>
	<td nowrap="nowrap"  style="text-align: center;">载重</td>
	<td nowrap="nowrap"  style="text-align: center;">合同审核通过日期</td>
	<td nowrap="nowrap"  style="text-align: center;">维保开始日期</td>
	<td nowrap="nowrap"  style="text-align: center;">维保结束日期</td>
	<td nowrap="nowrap"  style="text-align: center;">录入验收合格证日期</td>
	<td nowrap="nowrap"  style="text-align: center;">更改前日期</td>
	<td nowrap="nowrap"  style="text-align: center;">更改信息日期</td>
	<td nowrap="nowrap"  style="text-align: center;">保养方式</td>
	<td nowrap="nowrap"  style="text-align: center;">延保结束日期</td>
	<td nowrap="nowrap"  style="text-align: center;">年检日期</td>
	<td nowrap="nowrap"  style="text-align: center;">最近保养计划日期</td>
	<td nowrap="nowrap"  style="text-align: center;">签署方式</td>
	<td nowrap="nowrap"  style="text-align: center;">维保费年金额</td>
	</tr>
	
	<logic:present name="maintenanceReportList" >
	  <logic:iterate id="ele" name="maintenanceReportList">
	  <tr class="inputtd" align="center" height="20">
	  <td><%=i++ %></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="ComName"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="StorageName"/></td>
	  <td nowrap="nowrap"  style="text-align: center;">
	  	<a href="<html:rewrite page='/maintContractAction.do'/>?method=toDisplayRecord&typejsp=Yes&id=<bean:write name="ele"  property="billno"/>" target="_blnk"><bean:write name="ele" property="MaintContractNo"/></a>
	  </td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="SalesContractNo"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="ElevatorNo"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="CompanyName"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="MaintAddress"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="ElevatorType"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="FloorStageDoor"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="Speed"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="weight"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="AuditDate"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="MainSDate"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="MainEDate"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="CertificateDate"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="r1"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="r2"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="mainmode"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="DelayEDate"/></td>
	  <td nowrap="nowrap"  style="text-align: center;"><bean:write name="ele" property="annualInspectionDate"/></td>
	  <td nowrap="nowrap"  style="text-align: center;">${ele.neardate }</td>
	  <td nowrap="nowrap"  style="text-align: center;">${ele.SignWay }</td>
	  <td nowrap="nowrap"  style="text-align: center;">${ele.yearelevatortotal }</td>
	  
	  </tr>
	  </logic:iterate>
	</logic:present>
	<logic:notPresent name="maintenanceReportList">
	  <tr class="noItems" align="center" height="20">
	  	<td colspan="21" >
	  		<bean:write name="showinfostr"/>
	  	</td>
	  </tr>
	</logic:notPresent>
</table>
<br/>
<b>
&nbsp;在保总台量:<bean:write name="totalhmap" property="totalnum"/>
&nbsp;直梯总台量:<bean:write name="totalhmap" property="totalnumt"/>
&nbsp;扶梯总台量:<bean:write name="totalhmap" property="totalnumf"/>
&nbsp;有偿总台量:<bean:write name="totalhmap" property="paidtotalnum"/>
&nbsp;免保总台量:<bean:write name="totalhmap" property="freetotalnum"/>
</b>
<br/>
		
</html:form>
