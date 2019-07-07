<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/html-table.tld" prefix="table"%>
<link rel="stylesheet" type="text/css" href="<html:rewrite forward='formCSS'/>">
<script language="javascript" defer="defer" src="<html:rewrite forward='DatePickerJS'/>"></script>
<html:errors />
<br>
<html:form action="/ServeTable.do">
<html:hidden property="property(genReport)" styleId="genReport" />
  <table>
    <tr>
     <td>
			&nbsp;&nbsp;
			应收款流水号
			:
		</td>
		<td>
			<html:text property="property(jnlNo)" styleClass="default_input" />
		</td>
		<td>&nbsp;&nbsp;
			合同号
			:
		</td>
		<td>
			<html:text property="property(contractNo)" styleClass="default_input" />
		</td>
		<td>&nbsp;&nbsp;
			合同类型
			:
		</td>
		<td>
			<html:select property="property(contractType)">
				<html:option value="">请选择</html:option>
				<html:option value="B">保养</html:option>
				<html:option value="W">维修</html:option>
				<html:option value="G">改造</html:option>
			</html:select>
		</td>       
    	<td> 
        &nbsp;&nbsp;
        所属分部
        :
      </td>
      <td>
        <html:select property="property(maintDivision)" styleClass="default_input" >
          <html:options collection="maintDivisionList" property="grcid" labelProperty="grcname"/>
        </html:select>
      </td> 
      </tr>
      <tr>         
      <td>&nbsp;&nbsp;
      	销售合同号
        :
      </td>
      <td>
        <html:text property="property(salesContractNo)" styleClass="default_input" />
      </td> 
		<td>
			&nbsp;&nbsp;
			开票名称
			:
		</td>
		<td colspan="5">
			<html:text property="property(invoiceName)" styleClass="default_input" size="45"/>
		</td>
    </tr>
  </table>
  <br>
  <table:table id="guiContractInvoiceManageNext2" name="contractParagraphManageNextList">
    <logic:iterate id="element" name="contractParagraphManageNextList">
      <table:define id="c_cb">
		<bean:define id="jnlNo" name="element" property="jnlNo" />
			<html:radio property="checkBoxList(ids)" styleId="ids" value="<%=jnlNo.toString()%>" />
			<html:hidden name="element" property="preDate"/>
		</table:define>
		<table:define id="c_jnlNo">
			<bean:write name="element" property="jnlNo" />
		</table:define>
		<table:define id="c_contractNo">
			<bean:write name="element" property="contractNo" />
		</table:define>
		<table:define id="c_contractType">
			<logic:match name="element" property="contractType" value="B">保养</logic:match>
			<logic:match name="element" property="contractType" value="W">维修</logic:match>
			<logic:match name="element" property="contractType" value="G">改造</logic:match>
		</table:define>
		<table:define id="c_companyId">
			<bean:write name="element" property="companyName" />
		</table:define>
		<table:define id="c_recName">
			<bean:write name="element" property="recName" />
		</table:define>
		<table:define id="c_preDate">
			<bean:write name="element" property="preDate" />
		</table:define>
		<table:define id="c_preMoney">
			<bean:write name="element" property="preMoney" />
		</table:define>
		<table:define id="c_notParMoney">
			<bean:write name="element" property="notParMoney" />
		</table:define>
		<table:define id="c_maintDivision">
			<bean:write name="element" property="maintDivision" />
		</table:define>
      <table:tr />
    </logic:iterate>
  </table:table>
</html:form>