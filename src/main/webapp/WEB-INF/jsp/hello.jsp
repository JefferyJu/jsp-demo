<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>覆盖率分析报告</title>
<style type="text/css">
<!--
.title {
	font-size: 36px;
	font-weight: bold;
}
.tabletitle {
	font-size: 24px;
	line-height: 40px;
	font-weight: bold;
	background-color: #8DB3E2;
}
.tablecol {
	font-size: 12px;
	background-color: #B7DDE8;
	text-align: center;
	font-weight: bold;
	font-family: "宋体";
}
.tablevalue {
	font-family: "宋体";
	font-size: 12px;
	font-weight: normal;
}
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
.STYLE3 {
	color: #009933;
	font-weight: bold;
}
.STYLE7 {font-size: 20px; font-weight: bold; }
.STYLE9 {font-size: 20px; font-weight: bold; font-family: "宋体"; }
.STYLE10 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style>
</head>

<body style="font-family:'宋体'">
<p>&nbsp;</p>
<table width="1250" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" id="fglxx" style="border-collapse:collapse">
  <tr>
  <!--  <th colspan="5" class="tabletitle" scope="col">${CIT_ReportTitle}</th> -->
     <th colspan="5" class="tabletitle" scope="col">${CIT_ReportTitle==reportTitle.CIT_ReportTitle?'selected' : ''}</th>
    <!-- ${questionType.questionTypeId == question.questionType.questionTypeId ? 'selected' : ''} 三目表达式的使用 -->
  </tr>
  <tr>
    <th colspan="2" class="tablecol" scope="row">指标</th>
    <td width="400" class="tablecol">本次覆盖率信息</td>
    <td width="400" class="tablecol">上次覆盖率信息</td>
    <td width="178" class="tablecol">比较信息</td>
  </tr>
  <tr>
    <th width="130" rowspan="3" class="tablecol" scope="row"><strong>Branches</strong></th>
    <td width="130" class="tablecol"><strong>Exec</strong></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_exec}</div></td>
    <td class="tablevalue"><div align="center">${user.id}</div></td>
    <td class="tablevalue"><div align="center"><strong>${CIT_RatioBranches_exec}</strong></div></td>
  </tr>
  <tr>
    <td class="tablecol"><strong>Total</strong></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_total}</div></td>
    <td class="tablevalue"><div align="center">${CIT_LastBranches_total}</div></td>
    <td class="tablevalue"><div align="center"><strong>${CIT_RatioBranches_total}</strong></div></td>
  </tr>
  <tr>
    <td class="tablecol"><strong>Coverage</strong></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_coverage}</div></td>
    <td class="tablevalue"><div align="center">${CIT_LastBranches_coverage}</div></td>
    <td class="tablevalue"><div align="center"><strong>${CIT_RatioBranches_coverage}</strong></div></td>
  </tr>
  <tr>
    <th rowspan="3" class="tablecol" scope="row"><strong>Instructions</strong></th>
    <td class="tablecol"><strong>Exec</strong></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_exec}</div></td>
    <td class="tablevalue"><div align="center">${CIT_LastLines_exec}</div></td>
    <td class="tablevalue"><div align="center"><strong>${CIT_RatioLines_exec}</strong></div></td>
  </tr>
  <tr>
    <td class="tablecol"><strong>Total</strong></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_total}</div></td>
    <td class="tablevalue"><div align="center">${CIT_LastLines_total}</div></td>
    <td class="tablevalue"><div align="center"><strong>${CIT_RatioLines_total}</strong></div></td>
  </tr>
  <tr>
    <td class="tablecol"><strong>Coverage</strong></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_coverage}</div></td>
    <td class="tablevalue"><div align="center">${CIT_LastLines_coverage}</div></td>
    <td class="tablevalue"><div align="center"><strong>${CIT_RatioLines_coverage}</strong></div></td>
  </tr>
  <tr>
    <th rowspan="3" class="tablecol" scope="row"><strong>Lines</strong></th>
    <td class="tablecol"><strong>Exec</strong></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_exec}</div></td>
    <td class="tablevalue"><div align="center">${CIT_LastInstructions_exec}</div></td>
    <td class="tablevalue"><div align="center"><strong>${CIT_RatioInstructions_exec}</strong></div></td>
  </tr>
  <tr>
    <td class="tablecol"><strong>Total</strong></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_total}</div></td>
    <td class="tablevalue"><div align="center">${CIT_LastInstructions_total}</div></td>
    <td class="tablevalue"><div align="center"><strong>${CIT_RatioInstructions_total}</strong></div></td>
  </tr>
  <tr>
    <td class="tablecol"><strong>Coverage</strong></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_coverage}</div></td>
    <td class="tablevalue"><div align="center">${CIT_LastInstructions_coverage}</div></td>
    <td class="tablevalue"><div align="center"><strong>${CIT_RatioInstructions_coverage}</strong></div></td>
  </tr>
  <tr>
    <th colspan="2" class="tablecol" scope="row"><strong>详细报告</strong></th>
    <td class="tablevalue"><a href="${CIT_ReportUrl}" target="_self">${CIT_ReportUrl}</a></td>
    <td class="tablevalue"><a href="${CIT_LastReportUrl}" target="_self">${CIT_LastReportUrl}</a></td>
    <td class="tablevalue">&nbsp;</td>
  </tr>
</table>
<table width="1250" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" style="border-collapse:collapse">
  <tr>
    <th width="260" bgcolor="#009933" scope="col" class="STYLE10">${CIT_TOPSX_DES}</th>
    <th width="150" class="tablevalue" scope="col">${CIT_80_Ratio}</th>
    <th width="260" class="tablecol" scope="col">${CIT_TOPFW_DES}</th>
    <th width="150" class="tablevalue" scope="col">${CIT_5080_Ratio}</th>
    <th width="260" bgcolor="#FF0000" scope="col" class="STYLE10">${CIT_TOPXX_DES}</th>
    <th width="156" class="tablevalue" scope="col">${CIT_50_Ratio}</th>
  </tr>
</table>
<table width="1250" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" id="fgltop" style="border-collapse:collapse">
  
  <tr bgcolor="#FF0000">
    <td height="32" colspan="7" bgcolor="#FF0000"><div align="center" class="STYLE7"><strong>低覆盖Top5</strong></div></td>
  </tr>
  <tr>
    <td width="410" bgcolor="#FF0000" class="STYLE7"><div align="center" class="STYLE7">File</div></td>
    <td colspan="2" bgcolor="#FF0000" class="STYLE7"><div align="center">Branches</div></td>
    <td colspan="2" bgcolor="#FF0000" class="STYLE7"><div align="center">Lines</div></td>
    <td colspan="2" bgcolor="#FF0000" class="STYLE7"><div align="center">Instructions</div></td>
  </tr>
  <c:forEach items="${users}" var="user">
    <tr>
      <td>{user.id}</td>
      <td>{user.name}</td>
      <td>{user.age}</td>
    </tr>
  </c:forEach>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_LOW1}</div></td>
    <td width="110" class="tablevalue"><div align="center">${CIT_Branches_ratio_LOW1}</div></td>
    <td width="165" class="tablevalue"><div align="center">${CIT_Branches_des_LOW1}</div></td>
    <td width="110" class="tablevalue"><div align="center">${CIT_Lines_ratio_LOW1}</div></td>
    <td width="165" class="tablevalue"><div align="center">${CIT_Lines_des_LOW1}</div></td>
    <td width="110" class="tablevalue"><div align="center">${CIT_Instructions_ratio_LOW1}</div></td>
    <td width="164" class="tablevalue"><div align="center">${CIT_Instructions_des_LOW1}</div></td>
  </tr>

  <tr bgcolor="#009933">
    <td height="32" colspan="7"><div align="center" class="STYLE7"><strong>高覆盖Top5</strong></div></td>
  </tr>
  <tr bgcolor="#009933">
    <td class="STYLE7"><div align="center" class="STYLE7">File</div></td>
    <td colspan="2" class="STYLE7"><div align="center">Branches</div></td>
    <td colspan="2" class="STYLE7"><div align="center">Lines</div></td>
    <td colspan="2" class="STYLE7"><div align="center">Instructions</div></td>
  </tr>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_TOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_ratio_TOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_des_TOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_ratio_TOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_des_TOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_ratio_TOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_des_TOP1}</div></td>
  </tr>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_TOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_ratio_TOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_des_TOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_ratio_TOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_des_TOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_ratio_TOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_des_TOP2}</div></td>
  </tr>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_TOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_ratio_TOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_des_TOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_ratio_TOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_des_TOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_ratio_TOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_des_TOP3}</div></td>
  </tr>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_TOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_ratio_TOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_des_TOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_ratio_TOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_des_TOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_ratio_TOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_des_TOP4}</div></td>
  </tr>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_TOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_ratio_TOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_des_TOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_ratio_TOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_des_TOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_ratio_TOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_des_TOP5}</div></td>
  </tr>
  <tr bgcolor="#FF9900">
    <td height="32" colspan="7"><div align="center" class="STYLE7"><strong>分支总数Top5</strong></div></td>
  </tr>
  <tr bgcolor="#FF9900">
    <td class="STYLE7"><div align="center" class="STYLE7">File</div></td>
    <td colspan="2" class="STYLE7"><div align="center">Branches</div></td>
    <td colspan="2" class="STYLE7"><div align="center">Lines</div></td>
    <td colspan="2" class="STYLE7"><div align="center">Instructions</div></td>
  </tr>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_DesTOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_ratio_DesTOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_des_DesTOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_ratio_DesTOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_des_DesTOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_ratio_DesTOP1}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_des_DesTOP1}</div></td>
  </tr>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_DesTOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_ratio_DesTOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_des_DesTOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_ratio_DesTOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_des_DesTOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_ratio_DesTOP2}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_des_DesTOP2}</div></td>
  </tr>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_DesTOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_ratio_DesTOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_des_DesTOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_ratio_DesTOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_des_DesTOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_ratio_DesTOP3}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_des_DesTOP3}</div></td>
  </tr>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_DesTOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_ratio_DesTOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_des_DesTOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_ratio_DesTOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_des_DesTOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_ratio_DesTOP4}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_des_DesTOP4}</div></td>
  </tr>
  <tr>
    <td class="tablevalue"><div align="center">${CIT_File_DesTOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_ratio_DesTOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Branches_des_DesTOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_ratio_DesTOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Lines_des_DesTOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_ratio_DesTOP5}</div></td>
    <td class="tablevalue"><div align="center">${CIT_Instructions_des_DesTOP5}</div></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
