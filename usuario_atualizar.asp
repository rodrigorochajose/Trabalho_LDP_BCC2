<!--#include file="Conexao.asp"-->
<!--#include file="acesso.asp"-->
<!--#include file="header.asp"-->

<%
    id = Request.QueryString("id")

    SQL = "SELECT id, nome, cpf, celular, email, ativo FROM usuario WHERE id="& id &""

    Set Reg = Server.CreateObject("ADODB.Recordset")
    Reg.Open SQL, Con
%>

<div id="titulo">
    Atualizar Usuário
</div>

<div id="main">
    <form action="javascript:" method="post" name="form1" id="form1">
        <div>
            <label for="nome">
                Nome Completo
            </label> 
            <input name="nome" id="nome" type="text" value="<%= Reg.Fields.Item("nome").Value %>" style="margin-bottom: 25px;">
                
            <label for="cpf">
                CPF
            </label> 
            <input name="cpf" id="cpf" type="text" maxlength="11" value="<%= Reg.Fields.Item("cpf").Value %>" style="margin-bottom: 25px;">

            <label for="celular">
                Celular
            </label> 
            <input name="celular" id="celular" type="text" maxlength="11" value="<%= Reg.Fields.Item("celular").Value %>" style="margin-bottom: 25px;">
            
            <label for="email">
                E-mail
            </label> 
            <input name="email" id="email" type="text" value="<%= Reg.Fields.Item("email").Value %>" style="margin-bottom: 25px;">

            <label for="ativo">
                Ativo
            </label>
            <div style="display: flex; flex-direction: column; align-items: flex-start; margin-top:15px">
                <label>
                    <input class="with-gap" name="ativo" type="radio" value="1" checked />
                    <span>Sim</span>
                </label>
                <label>
                    <input class="with-gap" name="ativo" type="radio" value="0" />
                    <span>Não</span>
                </label>
            </div>
            <input name="id" id="id" type="hidden" value="<%= id %>" style="margin-bottom: 25px;">
        </div> 

        <a id="enviar" href="javascript:">ATUALIZAR</a>
        <a id="excluir" class="waves-effect waves-light btn modal-trigger" href="#modal1">Deletar Usuário</a>

        <div id="modal1" class="modal">
            <div class="modal-content" style="text-align: center;">
                Deseja confirmar a exclusão do Usuário ?
                    <div class="switch">
                        <label>
                        Não
                        <input type="checkbox" name="result" value="1">
                        <span class="lever"></span>
                        Sim
                        </label>
                    </div>
            </div>
            <div class="modal-footer">
                <a id="btn_exclusao" href="javascript:" class="modal-close waves-effect waves-green btn-flat">Enviar</a>
            </div>
        </div>
    </form>
</div>

<%
    Reg.Close()
    Set Reg = Nothing
%>

<!--#include file="footer.asp" -->

<script language="javascript">
    $(document).ready(function(){
        $('.modal').modal();
    });

    $(document).keydown(function(e){
        if (e.keyCode == 13)
            $('#enviar').click()
    });

    $('#enviar').click(function(){
        $.ajax({
            type: "POST",
            url: 'usuario_atualizar_script.asp',
            data: $('#form1').serialize(), 
            success: function(data){
            }
        });
    });

    $('#btn_exclusao').click(function(){
        $.ajax({
            type: "POST",
            url: 'usuario_atualizar_script.asp',
            data: $('#form1').serialize(), 
            success: function(data){
            }
        });
    });
</script>


<style>
    #excluir {
        border: 1px solid #9e9e9e;
        border-radius: 5px;
        margin-left: 100px;
        font-weight: bold;
    }

    #enviar {
        border: 1px solid #9e9e9e;
        border-radius: 5px;
        padding: 7px;
        background: #26a69a;
        color: white !important;
        margin-left: 150px;
        font-weight: bold;
    }

    #showpwd {
        position: absolute;
        left: 1076px;
        top: 285px;
    }

    #confirma_exclusao {
        border: 1px solid black;
        border-radius: 5px;
        width: 50%;
        margin: 150px 350px;
        padding: 5px;
        text-align: center;
        margin-bottom: 210px;
    }
    
</style>