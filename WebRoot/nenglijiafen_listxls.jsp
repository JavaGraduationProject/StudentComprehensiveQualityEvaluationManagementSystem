<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="nenglijiafenhsgb" scope="page" class="com.bean.NenglijiafenBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=nenglijiafen.xls");
%>
<html>
  <head>
    <title>�����ӷ�</title>
  </head>

  <body >
 <%
			String sql="select * from nenglijiafen  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center' bgcolor='#ebf0f7'>ѧ��</td>    <td align='center' bgcolor='#ebf0f7'>����</td>    <td align='center' bgcolor='#ebf0f7'>�༶</td>    <td align='center' bgcolor='#ebf0f7'>�Ƿ��Ӣ���ļ�</td>    <td align='center' bgcolor='#ebf0f7'>�Ƿ��Ӣ������</td>    <td align='center' bgcolor='#ebf0f7'>�Ƿ�ȡ�ý�ʦ�ʸ�֤</td>    <td align='center' bgcolor='#ebf0f7'>�Ƿ�ΪӦ�����鷵Уѧϰ��</td>    <td align='center' bgcolor='#ebf0f7'>�����ڼ��Ƿ�����</td>    <td align='center' bgcolor='#ebf0f7'>����</td>    <td align='center' bgcolor='#ebf0f7'>�ӷ���</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=nenglijiafenhsgb.getAllNenglijiafen(12);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.xuehao}</td>    <td>${u.xingming}</td>    <td>${u.banji}</td>    <td>${u.shifouguoyingyusiji}</td>    <td>${u.shifouguoyingyuliuji}</td>    <td>${u.shifouqudejiaoshizigezheng}</td>    <td>${u.shifouweiyingzhengruwufanxiaoxuexizhe}</td>    <td>${u.fuyiqijianshifouligong}</td>    <td>${u.qita}</td>    <td>${u.jiafenshu}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

