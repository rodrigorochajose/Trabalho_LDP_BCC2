<!--#include file="Conexao.asp"-->

<%
    SQL = "INSERT INTO objetivo values ('"& Trim(Request.Form("nome")) &"', '"& Trim(Request.Form("desc")) &"', "& Trim(Request.Form("valor")) &", '"& Trim(Request.Form("obs")) &"', 0)"

    Set Reg = Server.CreateObject("ADODB.Recordset")

    Reg.Open SQL, Con
    Set Reg = Nothing
%>