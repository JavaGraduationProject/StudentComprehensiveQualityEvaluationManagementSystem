<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="jiangchengxinxihsgb" scope="page" class="com.bean.JiangchengxinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiangchengxinxi.xls");
%>
<html>
  <head>
    <title>������Ϣ</title>
  </head>

  <body >
 <%
			String sql="select * from jiangchengxinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center' bgcolor='#ebf0f7'>���ͱ��</td>    <td align='center' bgcolor='#ebf0f7'>���ͱ���</td>        <td align='center' bgcolor='#ebf0f7'>���ͷ���</td>    <td  width='65' align='center' bgcolor='#ebf0f7'>ʱ��</td>    <td align='center' bgcolor='#ebf0f7'>¼����</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=jiangchengxinxihsgb.getAllJiangchengxinxi(8);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.jiangchengbianhao}</td>    <td>${u.jiangchengbiaoti}</td>        <td>${u.jiangchengfenshu}</td>    <td>${u.shijian}</td>    <td>${u.lururen}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

