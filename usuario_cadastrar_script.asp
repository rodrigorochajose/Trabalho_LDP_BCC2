<!--#include file="Conexao.asp"-->

<%
    SQL = "INSERT INTO usuario values ('"& Trim(Request.Form("user")) &"', '"& Trim(Request.Form("pwd")) &"', '"& Trim(Request.Form("nome")) &"', "& Trim(Request.Form("cpf")) &", "& Trim(Request.Form("celular")) &", '"& Trim(Request.Form("email")) &"', 1)"

    Set Reg = Server.CreateObject("ADODB.Recordset")

    Reg.Open SQL, Con
    Set Reg = Nothing
%>