
<%@include file="../componentes/header.jspf"%>
    <title>HOME</title>
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Navbar --------------------------------------------->
        <%@include file="../componentes/navbar.jspf" %>
        <!-- MENU Main Sidebar Container ------------------------------------>
        <%@include file="../componentes/aluno/menu.jspf" %>
        <!-- /.menu ------------------------------------------------------->

        <!-- Content Wrapper. Contains page content -------------------------->
        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <!---------------------------------------------------------------->

                    <div class="row">
                        <!-- HOME PROFISSIONAL DA SA&Uacute;DE -->
                        <!-- Content Wrapper. Contains page content -->
                        <div class="col-md-12 mt-4 mb-5">
                            <!-- .content -->
                            <div class="jumbotron">
<<<<<<< HEAD
                                <h1 class="display-4">Ol&aacute;</h1>
                                <hr class="my-4">
                                <p>Bem vindo ao seu painel</p>
=======
                                <h1 class="display-4">Ol&aacute;, Aluno!</h1>
                                <hr class="my-4">
                                <p>Bem vindo ao seu painel, ${dados.nomePessoa} ${dados.sobrenomePessoa}!</p>
>>>>>>> f4ba09f2a68c526961eb34f57d7d389a1cd2b658
                            </div>
                            <!-- /.content -->
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>

</html>