<!--#include file="Conexao.asp"-->
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Sistema</title>
            
</head>
<body>
    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col s8 offset-s2 m6 offset-m3">
                <div class="card center-align">
                    <div class="card-image">
                        <img class="activator" src="./imagem/index_bg.png">
                    </div>
                    <div class="card-content grey lighten-4">
                            <div class="row">
                                <form action="javascript:" method="post" name="form1" id="form1">
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">account_circle</i>
                                        <input autocomplete="off" id="usuario" name="usuario" type="text" class="validate">
                                        <label for="usuario">Usuario</label>
                                    </div> 
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">vpn_key</i>
                                        <input autocomplete="off" type="password" id="senha" name="senha" type="text" class="validate">
                                        <label for="senha">Senha</label>
                                    </div>  
                                    <div class="input-field col s12">
                                        <a id="enviar" href="javascript:" class="waves-effect waves-light btn light-blue darken-4" style="height: 45px;">
                                            <i class="material-icons right">arrow_forward</i>
                                            <span>Acessar</span>
                                        </a>
                                    </div>                             
                                </form>                          
                            </div>   
                    </div>
                </div>            
            </div>
        </div>
    </div>
</body>

<script language="javascript">
    $(document).ready(function(){
        $('.tabs').tabs();
    });         

    $(document).keydown(function(e){
        if (e.keyCode == 13)
            $('#enviar').click()
    });

    $('#enviar').click(function(){
        $.ajax({
            type: "POST",
            url: 'index_script.asp',
            data: $('#form1').serialize(), 
            success: function(data){
                location.href = "home.asp"
            }
        });
    });
</script>
</html>