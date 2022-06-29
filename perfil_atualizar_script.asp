<!--#include file="Conexao.asp"-->

<%
    SQL = "UPDATE usuario set nome='"& Request.QueryString("nome") &"', cpf="& Request.QueryString("cpf") &", celular="& Request.QueryString("celular") &", email='"& Request.QueryString("email") &"' WHERE id ="& Request.QueryString("id") &""

    Set Reg = Server.CreateObject("ADODB.Recordset")

    Reg.Open SQL, Con
    Set Reg = Nothing
    Response.redirect("perfil.asp")
%>