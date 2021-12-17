<%-- 
    Document   : desvincular-professor
    Created on : 17/12/2021, 18:41:46
    Author     : Rafael
--%>

<%-- 
    Document   : vincular-professor
    Created on : 17/12/2021, 18:27:20
    Author     : Rafael
--%>

<%@include file="../componentes/header.jspf"%>
    <script src="../public/assets/js/gente-gestao/vincular-professor.js" defer></script>
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">

        <!-- Navbar --------------------------------------------->
        <%@include file="../componentes/navbar.jspf" %>
        <!-- MENU Main Sidebar Container ------------------------------------>
        <%@include file="../componentes/gente-gestao//menu.jspf" %>

        <!-- Content Wrapper. Contains page content -------------------------->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Vincular Professor</h1>
                        </div><!-- /.col -->

                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="" id="go-back">Voltar</a></li>
                                <li class="breadcrumb-item active">Vincular Professor</li>
                            </ol>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header ---------------------------------------------->

            <!-- Main content -->
            <div class="content">
                <div class="container-fluid">
                    <!---------------------------------------------------------------->

                    <div class="row">
                        <div class="col-12">

                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Dados Professor</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->

                                <form id="form-meus-dados">

                                    <input type="hidden" value="vincular" name="option">
                                    <div class="card-body">
                                        <%@include file="../componentes/pesquisar-matricula.jspf" %>
                                        <hr  class = "mb-4 mt-4">                                           
                                        <%@include file="../componentes/gente-gestao/dadosturma-disabled.jspf"%>
                                        <hr  class = "mb-4 mt-4">
                                        <%@include file="../componentes/dadospessoais-disabled.jspf" %>
                                    </div>
                                </form>
                            </div>
                        </div>


                        <div class="col-12 mb-4">
                            <button type="button" id="vincular" class="btn btn-primary btn-lg">Vincular</button>
                        </div>

                        <!-- /.row -->
                    </div>

                    <!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->


        <!-- Modal confirmar senha / vincular -->
        <!-- < %@ include file="../partials/confirmar-senha.jspf" %>-->
    </div>
    <!-- ./wrapper -->
</body>
</html>


