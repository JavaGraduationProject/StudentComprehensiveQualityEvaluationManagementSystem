<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<TITLE>ѧ���ɼ���ѯ</TITLE>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
	<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	</head>
	<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr valign="top">
				<td>
					<table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#aec3de">
						<tr align="left" bgcolor="#F2FDFF">
							<td colspan="17" background="images/table_header.gif">ѧ���ɼ��б�</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr valign="top">
			  <td bgcolor="#FFFFFF">
			  <table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#aec3de">
						
					<tr align="right" bgcolor="#ebf0f7">
					  <td colspan="21">
					  <table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" >
						<tr align="left" >
							<td colspan="17">
								<form action="xueshengchengjiList.do" name="myform" method="post">
									��ѯ   ѧ�ţ�<input name="xuehao" type="text" id="xuehao" class="form-control2" />  ������<input name="xingming" type="text" id="xingming" class="form-control2" />  �Ա�<input name="xingbie" type="text" id="xingbie" class="form-control2" />  ѧ�꣺<select name='xuenian' id='xuenian' class="form-control2"><option value="">����</option><%int nnf=0;for(nnf=2016;nnf>=2010;nnf--){%><option value='<%=nnf%>'><%=nnf%></option><%}%></select> ѧ�ڣ�<select name='xueqi' id='xueqi' class="form-control2"><option value="">����</option><option value="��һѧ��">��һѧ��</option><option value="�ڶ�ѧ��">�ڶ�ѧ��</option></select>  ��Ŀ��<select name='kemu' id='kemu' class="form-control2"><option value="">����</option></select>
									<input type="submit" value="��ѯ" class="btn btn-info btn-small" />
								</form>								</td>
						</tr></table>
					  </td>
			    </tr>
					
						<tr align="center">
						<td style="padding-left:0px; padding-right:0px;"><table width="100%" border="1" align="center" cellpadding="4" cellspacing="1" bgcolor="#ebf0f7">
                          <tr>
                            <td align="center" bgcolor="#ebf0f7" width="30px">���</td>
                            <td align='center' bgcolor='#ebf0f7'>ѧ��</td>    <td align='center' bgcolor='#ebf0f7'>����</td>    <td  width='40' align='center' bgcolor='#ebf0f7'>�Ա�</td>    <td align='center' bgcolor='#ebf0f7'>�༶</td>    <td align='center' bgcolor='#ebf0f7'>ѧ��</td>    <td align='center' bgcolor='#ebf0f7'>ѧ��</td>    <td align='center' bgcolor='#ebf0f7'>��Ŀ</td>    <td align='center' bgcolor='#ebf0f7'>����</td>    
                            <td align="center" bgcolor="#ebf0f7" width="150px"> ���ʱ�� </td>
                            <td align="center" bgcolor="#ebf0f7" width="150px"> ���� </td>
                          </tr>
                          <%
					int i=0;
				%>
                          <c:forEach items="${list }" var="u">
                            <%
					i++;
				%>
                            <tr align="center" bgcolor="#FFFFFF">
                              <td align="center"><%=i%></td>
                             <td>${u.xuehao}</td>    <td>${u.xingming}</td>    <td align='center' bgcolor='#ebf0f7'>${u.xingbie}</td>    <td>${u.banji}</td>    <td>${u.xuenian}</td>    <td>${u.xueqi}</td>    <td>${u.kemu}</td>    <td>${u.fenshu}</td>    
                              <td align="center"> ${u.addtime } </td>
                              <td align="center"> <!--lianjie1--> <a class="btn btn-info btn-small" href="xueshengchengjiDetail.do?id=${u.id}">��ϸ</a></td>
                            </tr>
                          </c:forEach>
                        </table></td>
						</tr>
					</table>
					
					
			  </td>
	  </tr>
		</table>
		
		 <%
			String sql="select * from xueshengchengji where 1=1 ";
				if(request.getParameter("xuehao")=="" ||request.getParameter("xuehao")==null ){}else{String nxuehao=new String(request.getParameter("xuehao").getBytes("8859_1"));if(nxuehao.contains("?")){nxuehao=request.getParameter("xuehao");}sql=sql+" and xuehao like '%"+nxuehao+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{String nxingming=new String(request.getParameter("xingming").getBytes("8859_1"));if(nxingming.contains("?")){nxingming=request.getParameter("xingming");}sql=sql+" and xingming like '%"+nxingming+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{String nxingbie=new String(request.getParameter("xingbie").getBytes("8859_1"));if(nxingbie.contains("?")){nxingbie=request.getParameter("xingbie");}sql=sql+" and xingbie like '%"+nxingbie+"%'";}if(request.getParameter("xuenian")=="" ||request.getParameter("xuenian")==null ){}else{sql=sql+" and xuenian like '%"+request.getParameter("xuenian")+"%'";}if(request.getParameter("xueqi")=="" ||request.getParameter("xueqi")==null ){}else{sql=sql+" and xueqi like '%"+request.getParameter("xueqi")+"%'";}if(request.getParameter("kemu")=="" ||request.getParameter("kemu")==null ){}else{sql=sql+" and kemu like '%"+request.getParameter("kemu")+"%'";}
			sql+=" order by id desc";
double fenshuz=0;
							double zgffenshu=0;double zdffenshu=10000;
							
			ResultSet RS_result=connDbBean.executeQuery(sql);
while(RS_result.next()){
				
						
						fenshuz=fenshuz+Float.valueOf(RS_result.getString("fenshu")).floatValue();
						
						if(Float.valueOf(RS_result.getString("fenshu")).floatValue()>zgffenshu){zgffenshu=Float.valueOf(RS_result.getString("fenshu")).floatValue();}						if(Float.valueOf(RS_result.getString("fenshu")).floatValue()<zdffenshu){zdffenshu=Float.valueOf(RS_result.getString("fenshu")).floatValue();}						
			 }
			%>
		���Ʒ���:<%=fenshuz%>�� ������߷�����<%=zgffenshu%>����ͷ�����<%=zdffenshu%>��ƽ��������<%out.print(Math.round(1000*(fenshuz/i))/1000.0);%>��
		
			<p align="center" class="fy"> <c:if test="${sessionScope.p==1 }">
		 <c:if test="${page.page>1}">
              <a href="xueshengchengjiList.do?page=1" >��ҳ</a>
             <a href="xueshengchengjiList.do?page=${page.page-1 }"> ��һҳ</a>             </c:if>
    	     <c:if test="${page.page<page.totalPage}">
			<a href="xueshengchengjiList.do?page=${page.page+1 }">��һҳ</a>
			<a href="xueshengchengjiList.do?page=${page.totalPage }">ĩҳ</a>		    </c:if>		
	</c:if>
	</p>
			
			
			
			
			
	</body>
</html>

