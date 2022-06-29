<!--#include file="Conexao.asp"-->

<%
    If Request.Form("obs") = "" Then
        obs = ""
    Else
        obs = Request.Form("obs")
    End If

    SQL = "INSERT INTO objetivo values ('"& Trim(Request.Form("nome")) &"', '"& Trim(Request.Form("desc")) &"', "& Trim(Request.Form("valor")) &", '"& obs &"', 0, "& Session("user") &")"

    Set Reg = Server.CreateObject("ADODB.Recordset")

    Reg.Open SQL, Con
    Set Reg = Nothing
%>