<!--#include file="Conexao.asp"-->

<%
    ' TESTAR SE CAMPOS ESTÃO VAZIOS

    SQL = "INSERT INTO receita values ('"& Trim(Request.Form("nome")) &"', '"& Trim(Request.Form("desc")) &"', "& Trim(Request.Form("valor")) &", '"& Trim(Request.Form("obs")) &"')"

    Set Reg = Server.CreateObject("ADODB.Recordset")

    Reg.Open SQL, Con
    Set Reg = Nothing
%>