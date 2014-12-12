<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//FR" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 
 <head>
  <title>Application de depot de TP</title>
  <script src="../javascript/cookiesmanagement.js" type="text/javascript"></script>   
  <link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
 </head>
 <body>
  
   <jsp:include page="../html/header.html"/>
   <jsp:include page="menu.jsp"/>
   <div class="main">

<br />

     <jsp:scriptlet>

	session = request.getSession();

	Object userCheck = session.getAttribute("user");
	
	if(userCheck!=null){

		String user = (String) userCheck;
		out.println("CONNEXION OKAY ! Bienvenue sur MusicOnline "+user+" :) !");
		
	}
	else{
		out.println("Erreur lors de la connexion - Login ou Mot de passe invalide - Veuillez r&#233essayer");
	}
     </jsp:scriptlet>
<br />
<br />
<br />

<% if(userCheck!=null){ out.println("Voici quelques musiques qui pourraient vous plaire ... ou pas ..."); %>
<br />
<br />

				<table border=6 cellspacing=8 cellpadding=20>
				   <tr>
				        <th bgcolor="#F9BEC7"> Titre </th>
				        <th bgcolor="#F9BEC7"> Album </th>
					<th bgcolor="#F9BEC7"> Artiste </th>
					<th bgcolor="#F9BEC7"> Style </th>
					<th bgcolor="#F9BEC7"> Prix </th>
					<th bgcolor="#F9BEC7"> Ajouter au panier </th>
				   </tr>
	<%
	session = request.getSession();
	java.sql.ResultSet music_title = (java.sql.ResultSet) session.getAttribute("music_title");
	if(userCheck!=null){
		while ( music_title.next ()) { 
	%>

				   <tr>
				        <td> <% out.println(music_title.getString(1)); %>  </td>
				        <td> <% out.println(music_title.getString(2)); %>  </td>
					<td> <% out.println(music_title.getString(3)); %>  </td>
					<td> <% out.println(music_title.getString(4)); %>  </td>
					<td> <% out.println(music_title.getString(5)+" &#128"); %>  </td>
					<td> <img onclick="add( <% music_cat.getString(1);  %> )" src="img/caddy.jpg">  </td>
				   </tr>
		<% } %>
	<% } %>	
	</table>

<br />
<br />
<br />
<% } %>	
   </div>
 </body>
</html>
