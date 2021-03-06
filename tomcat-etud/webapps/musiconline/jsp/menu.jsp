<%@ page import="db.CategorieDAO, db.Categorie, java.util.ArrayList, java.sql.ResultSet"%>

<div class="left_panel">
	<div class="menuBoxHeader">
		<span class="menuBoxTitle">Divers</span>
	</div>
	<div class="menuBoxContent">
		<a class="nav" href="/musiconline/?p=main">Retour accueil</a><br/>
	</div>

	<%
	// si il est connecté...
	if (session.getAttribute("user") != null) {
		out.println("<div class=\"menuBoxHeader\"><span class=\"menuBoxTitle\">Catalogue</span></div>");
		
		out.println("<div class=\"menuBoxContent\">");
		
		CategorieDAO theCategorieDAO = CategorieDAO.getInstance();
		ResultSet cats = theCategorieDAO.findAll();
		while(cats.next()) {

		%>
		<form method="POST" action="?p=categorie" enctype="application/x-www-form-urlencoded"><input type="hidden" name="catChoix" value="<% out.println(cats.getString(1));%>"><INPUT TYPE="submit" NAME="bouton" VALUE="<% out.println(cats.getString(1));%>" style="border:none; background:transparent; text-decoration:underline; font-weight: bold;" /></form>
		<%
		}
		out.println("</div>");
	}
	%>

	<div class="menuBoxHeader">
		<span class="menuBoxTitle">Compte utilisateur</span>
	</div>
	<div class="menuBoxContent">
	<%
		// non connecté
		if (session.getAttribute("user") == null) {
			out.println("<a class=\"nav\" href=\"/musiconline/?p=newcpt\">Creer un compte</a><br/>");
			out.println("<a class=\"nav\" href=\"/musiconline/?p=concpt\">Se connecter</a><br/>");
		}
		// connecté
		else {
			out.println("<a class=\"nav\" href=\"/musiconline/?p=panier\">Mon Panier</a><br/>");
			out.println("<a class=\"nav\" href=\"/musiconline/?p=commande\">Mes Commandes</a><br/>");
			out.println("<a class=\"nav\" href=\"/musiconline/?p=deconcpt\">Se deconnecter</a><br/>");
		}
	%>
	</div>
</div>
