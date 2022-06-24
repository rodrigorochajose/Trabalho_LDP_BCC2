<!--#include file="Conexao.asp"-->
<!--#include file="header.asp"-->

<div id="titulo">
    Listar Usuários
</div>

<%
    SQL = "SELECT nome, cpf, celular, email from usuario"

    Set Reg = Server.CreateObject("ADODB.Recordset")
    Reg.Open SQL, Con
%>

<table>
    <tr>
        <td>
            Nome
        </td>
        <td>
            CPF
        </td>
        <td>
            Celular
        </td>
        <td>
            Email
        </td>
    </tr>
</table>

<table>
    <% While Not Reg.EOF %>
        <tr>
            <td>
                <%= Reg.Fields.Item("nome").Value%>
            </td>
            <td>
                <%= Reg.Fields.Item("cpf").Value%>
            </td>
            <td>
                <%= Reg.Fields.Item("celular").Value%>
            </td>
            <td>
                <%= Reg.Fields.Item("email").Value%>
            </td>
            <td>
                <a class="btn-floating btn-large waves-effect waves-light red">
                    <i class="material-icons">build</i>
                </a>
            </td>
             <td>
                <a class="btn-floating btn-large waves-effect waves-light red">
                    <i class="material-icons">clear</i>
                </a>
            </td>
        </tr>
    <% 
    Reg.MoveNext()
    Wend
    %>
</table>

<%
    Reg.Close()
    Set Reg = Nothing
%>