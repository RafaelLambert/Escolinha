$('.select2').select2();

let form = $("#form-cad-portador");
let campos = ['id-vacina'];

$("#desvincular").click(function () {

    if (tratar_campos(campos)) {

        title = 'Enviando, aguarde alguns segundos...';
        swalAlertLoading(title, callback);

        $.post("/app-civa/vacina", form.serialize(), (data, status) => {
            if (status === 'success') {
                title = 'Vacina desvinculada!';
                text = "";
                swalAlertSuccess(title, text, () => {
                    window.location = './consultar-vacina.jsp';
                });

            }
        }).fail(function (jqxhr, settings, ex) {
            title = 'Erro!';
            text = `Algum erro ocorreu e seus dados n&atilde;o foram enviados. Status: ${settings} ${ex}`;
            swalAlertError(title, text, callback);
        });

    } else {
        title = 'Campos n&atilde;o preenchidos!';
        text = 'Todos os campos precisam ser preenchidos!';
        swalAlertError(title, text, callback);
    }
});