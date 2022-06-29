<nav class="black">
	<div class="nav-wrapper">
		<a href="home.asp" class="brand-logo"> 
			<img class="logo" src="/imagem/logo.png">
			</a>
		<ul style="margin-left:400px">
		<% If Session("user") = 1 Then %>
			<li class="menu_li">
				<a class="dropdown-trigger" href="#!" data-target="dropdown1">
					Usuário
					<i class="material-icons right">arrow_drop_down</i>
				</a>
				<ul id="dropdown1" class="dropdown-content">
					<li>
						<a href="usuario_cadastrar.asp">Cadastrar Usuário</a>
					</li>
					<li>
						<a href="usuario_listar.asp">Listar Usuário</a>
					</li>
				</ul>
			</li>
		<% End If %>

			<li class="menu_li">
				<a class="dropdown-trigger" href="#!" data-target="dropdown2">
					Despesa
					<i class="material-icons right">arrow_drop_down</i>
				</a>
				<ul id="dropdown2" class="dropdown-content">
					<li>
						<a href="despesa_cadastrar.asp">Cadastrar Despesa</a>
					</li>
					<li>
						<a href="despesa_listar.asp">Listar Despesa</a>
					</li>
				</ul>
			</li>

			<li class="menu_li">
				<a class="dropdown-trigger" href="#!" data-target="dropdown3">
					Receita
					<i class="material-icons right">arrow_drop_down</i>
				</a>
				<ul id="dropdown3" class="dropdown-content">
					<li>
						<a href="receita_cadastrar.asp">Cadastrar Receita</a>
					</li>
					<li>
						<a href="receita_listar.asp">Listar Receita</a>
					</li>
				</ul>
			</li>

			<li class="menu_li">
				<a class="dropdown-trigger" href="#!" data-target="dropdown4">
					Objetivo
					<i class="material-icons right">arrow_drop_down</i>
				</a>
				<ul id="dropdown4" class="dropdown-content">
					<li>
						<a href="objetivo_cadastrar.asp">Cadastrar Objetivo</a>
					</li>
					<li>
						<a href="objetivo_listar.asp">Listar Objetivo</a>
					</li>
				</ul>
			</li>

		</ul>
		<ul class="right hide-on-med-and-down">
			<li>
				<a href="home.asp">
					<i class="material-icons">home</i>
				</a>
			</li>
			<li>
				<a href="perfil.asp">
					<i class="material-icons">account_circle</i>
				</a>
			</li>
			<li>
				<a href="logout.asp">
					<i class="material-icons">cancel</i>
				</a>
			</li>
		</ul>
	</div>
</nav>

<style>
	#contatos {
		display: none;
		position: absolute;
		background-color: #212121;
		font-size: 12px;
		padding: 10px;
		top: 64px; 
		left: 770px;
	}

	span {
		font-weight: bold;
		font-size: 14px;
		margin-left: 35%;
	}

	.dropdown-content{
		top: 64px !important;
		width: 155px !important;
	}
	.dropdown-content li>a, .dropdown-content li>span {
		font-size: 14px;
	}

	.logo {
		width: 55px;
		height: 55px;
		margin-left: 10px;
	}
</style>

<script>
	$(".dropdown-trigger").dropdown();
</script>