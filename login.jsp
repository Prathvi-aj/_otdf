<!doctype html>
<html lang="en">
 <head>
  <link rel="stylesheet" type="text/css" href="css/common.css" />
  <link rel="stylesheet" type="text/css" href="css/form.css" />
   
  <title>LOGIN PAGE</title>
 </head>
 <body>
  <div id="main_container">	

    <% 
		request.setAttribute("isloginpage",true);		
	%>
	
	<%@ include file="../header.jsp" %>
	
	<% String errMsg = (String)request.getAttribute("err_msg"); %>

	<%  if(errMsg!=null){ %>
			<div id="err_box"><%= errMsg %></div>
	<%  }	%>

	<form action="login.do">
		<table>
			<caption>General User Login</caption>
			<tr>
				<td class='lft_col'>Email</td>
				<td class='mdl_col'>:</td>
				<td class='rht_col'>
					<input type="email" name="email" class="fld" />
				</td>
			</tr>
			<tr>
				<td class='lft_col'>Password</td>
				<td class='mdl_col'>:</td>
				<td class='rht_col'>
					<input type="password" name="password" class="fld" maxlength="12" />
				</td>
			</tr>
			<tr>
				<td colspan="3" id="btn_box">
					<input type="submit" value="Login" id="btn" />
				</td>
			</tr>
		</table>
	</form>


	<%@ include file="../footer.jsp" %>
  </div>

  <script src="../js/common.js"></script>
 </body>
</html>
