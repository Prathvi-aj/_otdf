<%@ page import="java.util.ArrayList,models.Question" %>

<!doctype html>
<html lang="en">
 <head>
  <link rel="stylesheet" type="text/css" href="css/common.css" />
  <link rel="stylesheet" type="text/css" href="css/report.css" />
  <link rel="stylesheet" type="text/css" href="css/topic_questions.css" />
   
  <title>TOPIC QUESTIONS</title>
 </head>
 <body>
  <div id="main_container">	
	<%@ include file="header.jsp" %>
	

	<% ArrayList<Question> questions = (ArrayList)request.getAttribute("questions"); %>

	<div id="tp_title">
		:: <%= request.getParameter("topic") %> ::
		<input type="button" value="Post New Question" id="btn" />
		<input type="hidden" id="tp_id" value="<%= request.getParameter("topic_id") %>" />
		<input type="hidden" id="tp_nm" value="<%= request.getParameter("topic") %>" />
	</div>

	<table id="topic_box">
		<caption>Questions</caption>
		<thead>
			<tr>
				<th>Sr.</th>
				<th>Question Title</th>
				<th>User</th>
				<th>Date/Time</th>
				<th>View Count/Response Count</th>
			</tr>
		</thead>
		<tbody>	
		<% if(questions.size()==0){ %>
			<tr>
				<td colspan="5" id="no_rec">No Matching Records Found....</td>
			</tr>
		<% } %>
		<% for(Question question : questions){ %>	
			<tr>
				<td><%= question.getQuestionId() %></td>
				<td><%= question.getTitle() %></td>
				<td><a href="user_profile.do?user_id=<%= question.getUser().getUserId() %>"><%= question.getUser().getUserName() %></a></td>
				<td><%= question.getPostDateTime() %></td>
				<td><%= question.getResponseCount()+"/"+question.getViewCount() %></td>
			</tr>
		<% } %>
		</tbody>
	</table>


	<%@ include file="footer.jsp" %>
  </div>

  <script src="js/common.js"></script>
  <script src="js/topic_questions.js"></script>  
 </body>
</html>
