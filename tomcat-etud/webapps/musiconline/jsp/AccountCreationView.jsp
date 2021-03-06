<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//FR" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 
 <head>
  <title>Cr&#233ation d'un compte</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
 </head>
 <body>
  
   <jsp:include page="../html/header.html"/>
   <jsp:include page="menu.jsp"/>
   <div class="main">

	<h1>Cr&#233ation d'un compte</h1>

     <jsp:scriptlet>
   	Object data = request.getAttribute("data");

	if(data!=null && data instanceof String){
	out.println(data);
	}
     </jsp:scriptlet>
	
	<br />Veuillez remplir les formulaire ci-dessous afin de cr&#233er un compte sur MusicOnline.<br /> <br />
		<fieldset> 
			<legend>Cr&#233ation de compte</legend>
			<form method="POST" action="?p=validcpt" enctype="application/x-www-form-urlencoded">
				<table>
				   <tr>
				       <td>Nom :</th>
				       <td><INPUT  type="text" name="nom" required /></th>
				   </tr>
				   <tr>
				       <td>Pr&#233nom :</td>
				       <td><INPUT type="text" name="prenom" required ></td>
				   </tr>
				   <tr>
				       <td>Login :</th>
				       <td><INPUT  type="text" name="login" required /></th>
				   </tr>

				   <tr>
				       <td>Mot de passe :</td>
				       <td><INPUT type="password" name="password" required ></td>
				   </tr>
				   <tr>
				       <td>Date de naissance (AAAA-MM-JJ) :</th>
				       <td><INPUT  type="text" name="date" required /></th>
				   </tr>

				   <tr>
				       <td>Adresse e-mail :</td>
				       <td><INPUT type="text" name="email" required ></td>
				   </tr>
				   <tr>
				       <td>Adresse (lieu-dit, rue, ...) :</th>
				       <td><INPUT  type="text" name="adresse" required /></th>
				   </tr>

				   <tr>
				       <td>Code postal :</td>
				       <td><INPUT type="text" name="code" required ></td>
				   </tr>
				   <tr>
				       <td>Ville :</th>
				       <td><INPUT  type="text" name="ville" required /></th>
				   </tr>

				   <tr>
				       <td>Pays :</td>
				       <td><INPUT type="text" name="pays" required ></td>
				   </tr>

				</table>
				<br/><INPUT type="submit" name="confirmer" value="Confirmer"/>
			</form>
		</fieldset>
   </div>
 </body>
</html>
