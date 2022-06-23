<%@ LANGUAGE = "VBSCRIPT" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<%
    Set Con = CreateObject("ADODB.Connection")
    Con.Open("Provider=SQLNCLI11;Server=DESKTOP-6KKVUQM\SQLEXPRESS;Database=master;Trusted_Connection=yes") 

    if Isobject(Con) then response.write("um") end if
    if Con.state = 1 then response.write("dois") end if
%>