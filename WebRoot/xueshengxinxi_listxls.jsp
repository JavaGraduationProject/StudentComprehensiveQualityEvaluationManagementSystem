<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="xueshengxinxihsgb" scope="page" class="com.bean.XueshengxinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xueshengxinxi.xls");
%>
<html>
  <head>
    <title>ѧ����Ϣ</title>
  </head>

  <body >
 <%
			String sql="select * from xueshengxinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center' bgcolor='#ebf0f7'>ѧ��</td>    <td align='center' bgcolor='#ebf0f7'>����</td>    <td align='center' bgcolor='#ebf0f7'>����</td>    <td  width='40' align='center' bgcolor='#ebf0f7'>�Ա�</td>    <td align='center' bgcolor='#ebf0f7'>���֤</td>    <td align='center' bgcolor='#ebf0f7'>�绰</td>    <td align='center' bgcolor='#ebf0f7'>�༶</td>    <td align='center' bgcolor='#ebf0f7'>�Ƿ�ҿ�</td>    <td align='center' bgcolor='#ebf0f7'>�Ƿ�μ���ý����ƴ���</td>    <td align='center' bgcolor='#ebf0f7'>�Ƿ���ƶ������</td>    <td align='center' bgcolor='#ebf0f7'>�Ƿ񽨵�����</td>    <td align='center' bgcolor='#ebf0f7'>�����ѧ�����в�����</td>    <td align='center' bgcolor='#ebf0f7'>���������÷�</td>    <td align='center' bgcolor='#ebf0f7'>�����ӷ���÷�</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=xueshengxinxihsgb.getAllXueshengxinxi(16);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.xuehao}</td>    <td>${u.mima}</td>    <td>${u.xingming}</td>    <td align='center' bgcolor='#ebf0f7'>${u.xingbie}</td>    <td>${u.shenfenzheng}</td>    <td>${u.dianhua}</td>    <td>${u.banji}</td>    <td>${u.shifouguake}</td>    <td>${u.shifoucanjiaxinmeitishejidasai}</td>    <td>${u.shifouzaipinkunkuzhong}</td>    <td>${u.shifoujiandanglika}</td>    <td>${u.jisuanchuxueshengcaoxingcepingfen}</td>    <td>${u.zhiyucepingdefen}</td>    <td>${u.nenglijiafenxiangdefen}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

