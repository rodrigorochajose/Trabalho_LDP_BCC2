<!--#include file="Conexao.asp"-->

<%
    If Request.QueryString("Ativo") = 1 Then
        SQL = "UPDATE "& Request.QueryString("table") &" set ativo = 0 WHERE id = "& Request.QueryString("id") &""
    Else
        SQL = "UPDATE "& Request.QueryString("table") &" set ativo = 1 WHERE id = "& Request.QueryString("id") &""
    End If

    Set Reg = Server.CreateObject("ADODB.Recordset")

    Reg.Open SQL, Con
    Set Reg = Nothing
    Response.redirect(""& Request.QueryString("table") &"_listar.asp?Ativo="& Request.QueryString("id") &"")
%>