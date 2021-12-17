<%@include file="../componentes/header.jspf"%>
    <script src="../public/assets/js/portador-civa/meus-dados.js" defer></script>
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
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Meu Perfil</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="" id="go-back">Voltar</a></li>
                                <li class="breadcrumb-item active">Meu Perfil</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header ---------------------------------------------->

            <!-- Main content -->
            <div class="content ">
                <div class="container-fluid">
                    <!---------------------------------------------------------------->

                    <div class="row">
                        <div class="col-12">


                            <div class="card card-primary card-outline">
                                <div class="card-header">
                                    <h3 class="card-title">Aluno</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form id="form-meus-dados">
                                    <div class="card-body">

                                        <%@ include file="../componentes/dadospessoais-disabled.jspf" %>

                                        <div class="row float-right">
                                            <div class="col-12 mb-4">
                                                <!--a href="./index.jsp" class="btn btn-primary btn-lg">Voltar</a-->
                                            </div>
                                        </div>

                                    </div>

                                </form>

                            </div>
                        </div>
                        <!-- /.row -->
                    </div>


                    <!-- /.row -->
                </div><!-- /.container-fluid -->

            </div>
            <!-- /.content -->

        </div>
    </div>

    <!-- ./wrapper -->

</body>

</html>