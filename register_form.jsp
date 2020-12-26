<!doctype html>
<html lang="en">
 <head>
  <link rel="stylesheet" type="text/css" href="css/common.css" />
  <link rel="stylesheet" type="text/css" href="css/form.css" />
   
  <title>REGISTRATION PAGE</title>
 </head>
 <body>
  <div id="main_container">	

    <% 
		request.setAttribute("isregisterpage",true);		
	%>
	
	<%@ include file="../header.jsp" %>
	
	<% String errMsg = (String)request.getAttribute("err_msg"); %>

	<%  if(errMsg!=null){ %>
			<div id="err_box"><%= errMsg %></div>
	<%  }	%>

	<form action="register.do">
		<table>
			<caption>General User Registration</caption>
			
			<tr>
				<td class='lft_col'>User Name</td>
				<td class='mdl_col'>:</td>
				<td class='rht_col'>
					<input type="text" name="user_name" class="fld" />
				</td>
			</tr>
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
				<td class='lft_col'>Retype Password</td>
				<td class='mdl_col'>:</td>
				<td class='rht_col'>
					<input type="password" name="repassword" class="fld" maxlength="12" />
				</td>
			</tr>
			<tr>
				<td colspan="3" id="btn_box">
					<input type="submit" value="Signup" id="btn" />
				</td>
			</tr>
		</table>
	</form>


	<%@ include file="../footer.jsp" %>
  </div>

  <script src="../js/common.js"></script>
 </body>
</html>
