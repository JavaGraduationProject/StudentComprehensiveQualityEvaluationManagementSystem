<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="zonghecepinghsgb" scope="page" class="com.bean.ZonghecepingBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=zongheceping.xls");
%>
<html>
  <head>
    <title>�ۺϲ���</title>
  </head>

  <body >
 <%
			String sql="select * from zongheceping  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center' bgcolor='#ebf0f7'>ѧ��</td>    <td align='center' bgcolor='#ebf0f7'>����</td>    <td align='center' bgcolor='#ebf0f7'>�༶</td>    <td align='center' bgcolor='#ebf0f7'>�����ѧ�����в�����</td>    <td align='center' bgcolor='#ebf0f7'>���������÷�</td>    <td align='center' bgcolor='#ebf0f7'>�����ӷ���÷�</td>    <td align='center' bgcolor='#ebf0f7'>�ۺϵ÷�</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=zonghecepinghsgb.getAllZongheceping(9);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.xuehao}</td>    <td>${u.xingming}</td>    <td>${u.banji}</td>    <td>${u.jisuanchuxueshengcaoxingcepingfen}</td>    <td>${u.zhiyucepingdefen}</td>    <td>${u.nenglijiafenxiangdefen}</td>    <td>${u.zonghedefen}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

