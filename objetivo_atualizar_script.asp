<!--#include file="Conexao.asp"-->

<%
    If Request.QueryString("ativo") <> "" Then
        SQL = "UPDATE objetivo set ativo=1 WHERE id="& Request.QueryString("id") &""
    Else
        SQL = "UPDATE objetivo set nome='"& Request.Form("nome") &"', descricao='"& Request.Form("desc") &"', valor="& Request.Form("valor") &", obs='"& Request.Form("obs") &"' WHERE id="& Request.Form("id") &""
    End if



    Set Reg = Server.CreateObject("ADODB.Recordset")

    Reg.Open SQL, Con
    Set Reg = Nothing
    Response.redirect("objetivo_listar.asp?Ativo="& Request.QueryString("ativo") &"")
%>