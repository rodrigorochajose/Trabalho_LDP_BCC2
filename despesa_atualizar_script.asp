<!--#include file="Conexao.asp"-->

<%
    If Request.Form("valor") <> "" Then
        plus = ",valor="& Request.Form("valor") &", "
    End If

    If Request.QueryString("ativo") <> "" Then
        SQL = "UPDATE despesa set ativo=1 WHERE id="& Request.QueryString("id") &""
    Else
        SQL = "UPDATE despesa set nome='"& Request.Form("nome") &"', descricao='"& Request.Form("desc") &"', "& plus &" obs='"& Request.Form("obs") &"' WHERE id="& Request.Form("id") &""
    End if

    Set Reg = Server.CreateObject("ADODB.Recordset")

    Reg.Open SQL, Con
    Set Reg = Nothing
    Response.redirect("despesa_listar.asp?Ativo="& Request.QueryString("ativo") &"")
%>