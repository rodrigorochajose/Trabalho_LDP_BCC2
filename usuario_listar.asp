<!--#include file="Conexao.asp"-->
<!--#include file="acesso_admin.asp"-->
<!--#include file="head.asp"-->
<!--#include file="header.asp"-->

<% If Request.QueryString("Ativo") <> "" Then
	Ativo = Replace(Request.QueryString("Ativo"), "'", "''")
	If Ativo = 1 Then
		label_ativo = "Ativos"
	Else
		label_ativo = "Inativos"
		Ativo = 0
	End If
Else
	Ativo = 1
	label_ativo = "Ativos"
End If 

SQL = "SELECT id, nome, cpf, celular, email FROM usuario WHERE ativo="& Ativo &""

Set Reg = Server.CreateObject("ADODB.Recordset")
Reg.Open SQL, Con

Titulo = "Usuário"
%>

<table style="border-collapse: unset; margin-left: 100px;">
	<tr>
		<td>
            <a href="usuario_cadastrar.asp" class="waves-effect green accent-4 btn-small">
                <i class="material-icons left">person_add</i>
                Cadastrar <%= Titulo %> 
            </a>
			<a href="usuario_listar.asp?Ativo=<% If Ativo = 1 Then %>0<% Else %>1<% End If %>" class="waves-effect <% If Ativo = 1 Then %>red darken-4<% Else %>green accent-4<% End If %> btn-small">
				<% If Ativo = 1 Then %> 
					<i class="material-icons left">person_outline</i>
					<%= Titulo &"s Inativos" %>
				<% Else %>
					<i class="material-icons left">person</i>
					<%= Titulo &"s Ativos" %>
				<% End If %>
			</a>
		</td>
  	</tr>
</table>

<div id="titulo">
    <%= Titulo &"s "& label_ativo %>
</div>

<table id="tabela_titulo">
    <tr>
        <td style="width: 25%;">
            Nome
        </td>
        <td style="width: 14%;">
            CPF
        </td>
        <td style="width: 19%;">
            Celular
        </td>
        <td>
            Email
        </td>
        <td>
            &nbsp;&nbsp;
        </td>
        <td>
            &nbsp;&nbsp;
        </td>
    </tr>
</table>

<table id="tabela_conteudo">
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
                <a href="usuario_atualizar.asp?id=<%= Reg("id").Value %>" title="Atualizar Usuário" class="btn-floating btn-large waves-effect blue accent-4 botoes">
                    <i class="material-icons" style="line-height: 40px;">build</i>
                </a>
            </td>
             <td>
                <a href="estado_script.asp?table=usuario&id=<%= Reg("id").Value %>&Ativo=<%= Ativo %>" title="Inativar Usuário" class="btn-floating btn-large waves-effect red darken-4 botoes">
                    <i class="material-icons" style="line-height: 40px;">clear</i>
                </a>
            </td>
        </tr>
    <% 
    Reg.MoveNext()
    Wend
    %>
</table>
<!--#include file="footer.asp" -->

<%
    Reg.Close()
    Set Reg = Nothing
%>

<style>

    table {
        width: 90%;
    }

    #titulo {
        background: white;
        width: 20%;
        border: 1px solid black;
        border-radius: 5px;
        margin-left: 40%;
    }
    
    #tabela_titulo {
        margin: 0 80;
        border: 2px solid black;
        background: #0d47a1 !important;
        font-weight: bold;
        color: white;
    }

    #tabela_conteudo {
        margin: 0 80 100 80;
        border: 2px solid black;
        background: #fff !important;
    }

    .botoes {
        width: 40px !important;
        height: 40px !important;
    }

    body {
        background-image: url("https://knowurdestiny.com/wp-content/uploads/2021/12/illustration-financial-concept_53876-20606.jpg");
        background-color: #cccccc;
    }
</style>