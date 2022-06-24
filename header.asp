<nav class="cyan darken-4">
	<div class="nav-wrapper">
		<a href="#!" class="brand-logo">Logo</a>
		<ul style="margin-left:400px">
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
				<a id="ctt" href="#">
					<i class="material-icons">phone</i>
				</a>
			</li>
			<li>
				<a id="perfil">
					<i class="material-icons">account_circle</i>
				</a>
			</li>
			<li>
				<a id="logout" href="index.asp">
					<i class="material-icons">cancel</i>
				</a>
			</li>
		</ul>
		<div id="contatos">
			<span style="margin-left: 150px;">
				Canais de Atendimento:
			</span>
			<br>
			<span>
				(11) 3451-6786
				<br>
				<label>
					Atendimento comercial, administrativo e suporte de Segunda a Sexta-Feira das 8h às 18h.<br>
				</label>
			</span>
			<span>
				(18) 98106 - 3553
				<br>
				<label>Plantão de suporte somente aos finais de semana e feriados das 8h às 22h.</label>
			</span>
		</div>
	</div>
</nav>

<ul id="slide-out" class="sidenav">
    <li>
		<div class="user-view">
			<div class="background">
				<img src="imagens/empresa2.jpeg">
			</div>
			<img class="circle" src="imagens/perfil.jpg">
			<span class="teal-text name">Almir Camolesi</span>
			<span class="teal-text email">camolesi@fema.edu.br</span>
		</div>
	</li>
    <li>
		<i class="material-icons">person</i>
		Imovel
	</li>
    <li>Second Link</li>
    <li>
		<div class="divider"></div>
	</li>
    <li>Subheader</li>
    <li>Third Link With Waves</li>
</ul>
<a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>

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
</style>

<script>
	$('#ctt').click(function(){
		$('#contatos').show()
		$('.sidenav').sidenav();
	});

	$(document).ready(function(){
		$('.sidenav').sidenav();
	});

	$(".dropdown-trigger").dropdown();

	$('#logout').click(function(){
		$.ajax({
			url: "logout.asp",
		}).done(function() {
		});
	});
</script>