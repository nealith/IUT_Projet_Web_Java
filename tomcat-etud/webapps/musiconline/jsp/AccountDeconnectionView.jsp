<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//FR" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 
 <head>
  <title>Deconnexion au compte</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
 </head>
 <body>

     <jsp:scriptlet>

	request.getSession().setAttribute("user", null);

     </jsp:scriptlet>
  

   <jsp:include page="../html/header.html"/>
   <jsp:include page="menu.jsp"/>


   <div class="main">

	<h1>Connexion</h1>

     <jsp:scriptlet>

	out.println("Vous avez bien &#233t&#233 d&#233connect&#233 ... Au revoir !");

     </jsp:scriptlet>

   </div>


 </body>
</html>
