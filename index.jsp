<!doctype html>
<html lang="en">
 <head>
  <link rel="stylesheet" type="text/css" href="css/common.css" />
  <link rel="stylesheet" type="text/css" href="css/report.css" />
   
  <title>WELCOME USER</title>
 </head>
 <body>
  <div id="main_container">	
	<%@ include file="header.jsp" %>
	
	<table id="topic_box">
		<caption>Topics</caption>
		<tr>
			<th>Sr.</th>
			<th>Topic Name</th>
			<th>All Posts</th>
			<th>Open Posts</th>
			<th>Last Activity</th>
		</tr>
	</table>


	<%@ include file="footer.jsp" %>
  </div>

  <script src="js/common.js"></script>
  <script src="js/index.js"></script>
 </body>
</html>
