<%@include file="../componentes/header.jspf"%>

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
                            <h1 class="m-0">Painel Turma</h1>
                        </div>
                        <!-- /.col -->

                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="" id="go-back">Voltar</a></li>
                                <li class="breadcrumb-item active">Painel Turma</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header ---------------------------------------------->

            <!-- Main content -->
            <div class="content">
                <div class="container-fluid">
                    <!---------------------------------------------------------------->
                    <div class="row">
                        <div class="col-12 mb-3">
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Dados da Turma</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- Incio do form -->
                                <form action="#" id="form-gerenciar-unidade" method="post" novalidate="novalidate">
                                    <div class="card-body">
                                        <%@ include file="../componentes/gente-gestao/dadosturma-disabled.jspf" %>
                                    </div>
                                </form>
                                <!-- /.form ending -->
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>

                
                
                    <div class="col-12 mb-3">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Professores Vinculados</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body table-responsive p-0">
                                <table class="table table-hover text-nowrap">
                                    <thead>
                                        <tr>
                                            <th>Nome</th>
                                            <th>CPF</th>
                                            <th>Matrícula</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="" var="">
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                        </tr>
                                    </c:forEach>   
                                    </tbody>
                                </table>
                                <hr>
                                <div class="row ">
                                    <div class="col d-flex justify-content-xl-start  ml-4 mb-2">
                                        <a href="./vincular-professor.jsp" class="btn btn-success btn-xs">Vincular professor</a>
                                    </div>                                  

                                    <div class="col  d-flex justify-content-xl-end align-items-center ml-2 mb-2 mr-4">
                                        <a href="./desvincular-professor" class="btn btn-danger btn-xs">Desvincular professor</a>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>
                

                
                <div class="col-12 mb-3">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Alunos Vinculados</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap">
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th>CPF</th>
                                        <th>Matrícula</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="" var="">
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                    </tr>
                                </c:forEach>   
                                </tbody>
                            </table>
                            <hr>
                            <div class="row ">
                                <div class="col d-flex justify-content-xl-start  ml-4 mb-2">
                                    <a href="./vincular-aluno.jsp" class="btn btn-success btn-xs">Vincular Aluno</a>
                                </div>                                  

                                <div class="col  d-flex justify-content-xl-end align-items-center ml-2 mb-2 mr-4">
                                    <a href="./desvincular-aluno" class="btn btn-danger btn-xs">Desvincular Aluno</a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                </div>
            </div>



        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
    <!-- Main Footer -->

</div>
<!-- /.content-wrapper -->


<!-- ./wrapper -->
</body>

</html>