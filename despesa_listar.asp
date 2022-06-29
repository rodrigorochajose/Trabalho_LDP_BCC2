<!--#include file="Conexao.asp"-->
<!--#include file="header.asp"-->

<% If Request.QueryString("Ativo") <> "" Then
	Ativo = Replace(Request.QueryString("Ativo"), "'", "''")
	If Ativo = 1 Then
		label_ativo = "Pagas"
	Else
		label_ativo = "Pendentes"
		Ativo = 0
	End If
Else
	Ativo = 1
	label_ativo = "Pagas"
End If 

SQL = "SELECT id, nome, descricao, valor, obs, ativo, competencia FROM despesa WHERE ativo="& Ativo &" ORDER BY competencia"

Set Reg = Server.CreateObject("ADODB.Recordset")
Reg.Open SQL, Con

Titulo = "Despesas"
%>

<table style="border-collapse: unset; margin-left: 100px;">
	<tr>
		<td>
            <a href="despesa_cadastrar.asp" class="waves-effect green accent-4 btn-small">
                <i class="material-icons left">add</i>
                Cadastrar <%= Titulo %> 
            </a>
			<a href="despesa_listar.asp?Ativo=<% If Ativo = 1 Then %>0<% Else %>1<% End If %>" class="waves-effect <% If Ativo = 1 Then %>red darken-4<% Else %>green accent-4<% End If %> btn-small">
				<% If Ativo = 1 Then %> 
					<i class="material-icons left">money_off</i>
					<%= Titulo &" Pendentes" %>
				<% Else %>
					<i class="material-icons left">attach_money</i>
					<%= Titulo &" Pagas" %>
				<% End If %>
			</a>
		</td>
  	</tr>
</table>

<div id="titulo">
    <%= Titulo &" "& label_ativo %>
</div>

<table id="tabela_titulo">
    <tr>
        <td style="width: 15%;">
            Nome
        </td>
        <td style="width: 15%;">
            Descrição
        </td>
        <td style="width: 10%;">
            Valor
        </td>
        <td style="width: 15%">
            Obs
        </td>
        <td style="width: 10%">
            Competência
        </td>
        <td style="width: 7%">
            &nbsp;&nbsp;
        </td>
        <td style="width: 7%">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>

<table id="tabela_conteudo">
    <% While Not Reg.EOF %>
        <tr>
            <td style="width: 15%">
                <%= Reg("nome").Value%>
            </td>
            <td style="width: 15%">
                <%= Reg("descricao").Value%>
            </td>
            <td style="width: 10%">
                <%= Reg("valor").Value%>
            </td>
            <td style="width: 15%">
                <%= Reg("obs").Value%>
            </td>
            <td style="width: 10%">
                <%= "0"& Reg("competencia").Value &"/2022"%>
            </td>
            <td style="width: 7%">
                <a href="despesa_atualizar_script.asp?id=<%= Reg("id").Value %>&ativo=1" title="Informar Pagamento" class="btn-floating btn-large waves-effect green accent-4 botoes <% If Reg("ativo") = 1 Then %>disabled<% End If %>">
                    <i class="material-icons" style="line-height: 40px;">attach_money</i>
                </a>
            </td>
            <td style="width: 7%">
                <a href="despesa_atualizar.asp?id=<%= Reg("id") %>" title="Atualizar Despesa" class="btn-floating btn-large waves-effect blue accent-4 botoes">
                    <i class="material-icons" style="line-height: 40px;">build</i>
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
    }
    
    #opcoes {
        margin-left: 75px;
    }

    .botoes {
        width: 40px !important;
        height: 40px !important;
    }
</style>