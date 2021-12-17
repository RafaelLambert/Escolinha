
<<<<<<< HEAD
<%@include file="../componentes/header.jspf"%>
=======
<%@include file="../componentes/aluno/header.jspf"%>
>>>>>>> f4ba09f2a68c526961eb34f57d7d389a1cd2b658
    <title>HOME</title>
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Navbar --------------------------------------------->
        <%@include file="../componentes/navbar.jspf" %>
        <!-- MENU Main Sidebar Container ------------------------------------>
<<<<<<< HEAD
        <%@include file="../componentes/professor/menu.jspf" %>
=======
        <%@include file="../componentes/aluno/menu.jspf" %>
>>>>>>> f4ba09f2a68c526961eb34f57d7d389a1cd2b658
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
                                <h1 class="display-4">Ol&aacute;, Professor!</h1>
                                <hr class="my-4">
                                <p>Bem vindo ao seu painel, ${dados.nomePessoa} ${dados.sobrenomePessoa}!</p>
>>>>>>> f4ba09f2a68c526961eb34f57d7d389a1cd2b658
                            </div>
                            <!-- /.content -->
                        </div>
                    </div>
<<<<<<< HEAD
                    
=======


                    <div class="row">
                        <div class="col-md-12">
                            <!-- The time line -->
                            <div class="timeline">
                                <!-- timeline time label -->
                                <div class="time-label">
                                    <span class="bg-red">10 Feb. 2022</span>
                                </div>
                                <!-- /.timeline-label -->
                                <!-- timeline item -->
                                <div>
                                    <i class="fas fa-envelope bg-blue"></i>
                                    <div class="timeline-item">
                                        <span class="time"><i class="fas fa-clock"></i> 12:05</span>
                                        <h3 class="timeline-header"><a href="${pageContext.request.contextPath}/portador-civa/solicitacao-pendente.jsp">Suporte</a> voc&ecirc; recebeu um email</h3>
                                        <div class="timeline-body">
                                            verifique sua caixa de email
                                        </div>
                                    </div>
                                </div>
                                <!-- END timeline item -->
                                <!-- timeline item -->
                                <div>
                                    <i class="fas fa-user bg-green"></i>
                                    <div class="timeline-item">
                                        <span class="time"><i class="fas fa-clock"></i>3 meses atr&aacute;s</span>
                                        <h3 class="timeline-header no-border"><a href="${pageContext.request.contextPath}/portador-civa/historico.jsp">Voc&ecirc; foi vacinado</a></h3>
                                    </div>
                                </div>
                                <!-- END timeline item -->

                            </div>
                            <!-- /.col -->
                        </div>

                        <!-- Main Footer -->

                    </div>
>>>>>>> f4ba09f2a68c526961eb34f57d7d389a1cd2b658
                    <!-- /.container-fluid -->
                </div>
            </div>
        </div>
    </div>
</body>

</html>