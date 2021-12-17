<%@include file="../componentes/login/header.jspf"%>
    <script src="../public/assets/js/smtp.js" defer></script>
    <script src="../public/assets/js/login/recuperar-senha.js" defer></script>
    <title>Recuperar Senha</title>
</head>

<body class="content-wrapper " style="background: #fff;">

    <div class="container d-flex align-items-center justify-content-center mt-5 mb-5">

        <div class="card card-outline card-primary">
            <div class="card-header text-center">
                <p class="h1" style="white-space: nowrap;">Recuperar senha</p>
            </div>
            <div class="card-body">
                <p class="login-box-msg">Um email ser&aacute; enviado com um c&oacute;digo para a redefini&ccedil;&atilde;o de senha.</p>
                <form  id="form-email">
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" id="email" name="email" placeholder="maria@mail.com">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <button type="button"  id="enviar" class="btn btn-primary btn-block">ENVIAR</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>
                <div class="d-flex justify-content-center">
                    <p class="mt-3 mb-1 ">
                        <a href="./index.jsp"><b>Voltar</b></a>
                    </p>
                </div>

            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->

    </div>

</body>
</html>
