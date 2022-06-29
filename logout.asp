<!--#include file="acesso.asp"-->

<%
    Session("user") = ""
    Response.redirect("index.asp")
%>