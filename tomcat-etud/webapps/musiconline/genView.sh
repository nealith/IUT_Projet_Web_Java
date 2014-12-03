cat << EOF > $1
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//FR" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 
 <head>
  <title>Application de depot de TP</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
 </head>
 <body>
  
   <jsp:include page="../html/header.html"/>
   <jsp:include page="menu.jsp"/>
   <div class="main">
     <jsp:scriptlet>
   	Object data = request.getAttribute("data");

	if(data!=null && data instanceof String){
	out.println(data);
	}
     </jsp:scriptlet>
   </div>
 </body>
</html>
EOF

