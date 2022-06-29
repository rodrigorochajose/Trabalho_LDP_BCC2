<!--#include file="Conexao.asp"-->
<!--#include file="acesso.asp"-->
<!--#include file="head.asp"-->
<!--#include file="header.asp"-->

<%
    id = Request.QueryString("id")

    SQL = "SELECT id, nome, descricao, valor, obs, ativo, competencia FROM despesa WHERE id="& id &""

    Set Reg = Server.CreateObject("ADODB.Recordset")
    Reg.Open SQL, Con
%>

<div id="titulo">
    Atualizar Despesa
</div>

<div id="main">
    <form action="javascript:" method="post" name="form1" id="form1">
        <div>
            <label for="nome">
                Nome 
            </label> 
            <input name="nome" id="nome" type="text" value="<%= Reg("nome").Value %>" style="margin-bottom: 25px;">
                
            <label for="desc">
                Descrição
            </label> 
            <input name="desc" id="desc" type="text" value="<%= Reg("descricao").Value %>" style="margin-bottom: 25px;">

            <label for="obs">
                Observação
            </label> 
            <input name="obs" id="obs" type="text" value="<%= Reg("obs").Value %>" style="margin-bottom: 25px;">

            <% If Reg("ativo") = 0 Then %>
                <label for="valor">
                    Valor
                </label> 
                <input name="valor" id="valor" type="text" value="<%= Reg("valor").Value %>" style="margin-bottom: 25px;">
            <% End If %>
            <input name="id" id="id" type="hidden" value="<%= id %>" style="margin-bottom: 25px;">
        </div> 
        <a id="enviar" href="javascript:">ATUALIZAR</a>
    </form>
</div>

<%
    Reg.Close()
    Set Reg = Nothing
%>

<!--#include file="footer.asp" -->

<script language="javascript">

    $(document).keydown(function(e){
        if (e.keyCode == 13)
            $('#enviar').click()
    });

    $('#enviar').click(function(){
        $.ajax({
            type: "POST",
            url: 'despesa_atualizar_script.asp',
            data: $('#form1').serialize(), 
            success: function(data){
                location.href= "despesa_listar.asp"
            }
        });
    });
</script>


<style> 
    #enviar {
        border: 1px solid #9e9e9e;
        border-radius: 5px;
        padding: 7px;
        background: #26a69a;
        color: white !important;
        margin-left: 250px;
        font-weight: bold;
    }
</style>