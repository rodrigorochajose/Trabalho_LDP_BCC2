<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

<%
    Set Con = Server.CreateObject("ADODB.Connection")
    Con.Open("Provider=SQLNCLI11;Server=DESKTOP-6KKVUQM\SQLEXPRESS;Database=master;Trusted_Connection=yes") 

%>