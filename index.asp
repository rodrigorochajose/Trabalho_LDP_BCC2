<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

<!DOCTYPE html>
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
                        <img class="activator" src="https://o.aolcdn.com/images/dims3/GLOB/crop/5760x2880+0+480/resize/630x315!/format/jpg/quality/85/http%3A%2F%2Fo.aolcdn.com%2Fhss%2Fstorage%2Fmidas%2F1e6a11c0ceb369bee739518f2618916d%2F205881769%2Fhealth-food-for-fitness-picture-id855098134">
                    </div>
                    <div class="card-content grey lighten-4">
                        <div>
                            <div class="row">
                                <form action="" method="post">
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">account_circle</i>
                                        <input autocomplete="off" id="usuario" name="usuario" type="text" class="validate">
                                        <label for="usuario">Usuario</label>
                                    </div> 
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">vpn_key</i>
                                        <input autocomplete="off" id="senha" name="senha" type="text" class="validate">
                                        <label for="senha">Senha</label>
                                    </div>  
                                    <div>
                                        <button type="submit" class="waves-effect waves-light btn red"><i class="material-icons right">arrow_forward</i>Acessar</button>
                                    </div>                             
                                </form>                          
                            </div>                       
                        </div>
                    </div>
                </div>            
            </div>
        </div>
    </div>
</body>
  
    <script src="text/javascript">
        $(document).ready(function(){
            $('.tabs').tabs();
        });         
    </script>
</html>