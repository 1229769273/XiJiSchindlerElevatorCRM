<%@ page contentType="text/html;charset=GBK" %>
<br/>
<!-- ���ϴ��ĸ��� -->
<div id="filemessagestring"></div>
<table width="100%" class="tb">
	<tr>
		<td>���ϴ��ĸ���</td>
	</tr>
</table>
<table id="uploadtab_1" width="100%" class="tb">
	<thead>
		<tr>
			<td class="wordtd_k2">�ļ�����</td>
			<td class="wordtd_k2">�ϴ���</td>
			<td class="wordtd_k2">�ϴ�����</td>
			<td class="wordtd_k2">����</td>
		</tr>
	</thead>
	<logic:present name="updatefileList">
	
		<logic:empty name="updatefileList">
			<tr>
				<td colspan="9" align="center">û�м�¼��</td>
			</tr>
		</logic:empty>

		<logic:notEmpty name="updatefileList">
			<logic:iterate id="ele"  name="updatefileList">
				<tr>
				<td class=""><bean:write name="ele" property="oldfilename" /></td>
				<td class=""><bean:write name="ele" property="uploadername" /></td>
				<td class=""><bean:write name="ele" property="uploaddate" /></td>
				<td>
					<input type="button" name="display" value="�鿴"  class="default_input" onclick="downloadFile('${ele.filesid}')">
					&nbsp;<input type="button" name="display" value="ɾ��"  class="default_input" onclick="deleteFile('${ele.filesid}',this)">
				</td>
				</tr>
			</logic:iterate>
		</logic:notEmpty>
	</logic:present>
	
</table>

<%@ include file="UpLoadJS.js" %>