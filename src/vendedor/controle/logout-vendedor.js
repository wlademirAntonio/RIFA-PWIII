$(document).ready(function() {

    $('#logout').click(function(e) {

        $.ajax({
            type: 'POST',
            dataType: 'json',
            assync: true,
            url: 'src/vendedor/modelo/logout-vendedor.php',
            success: function(dados) {

                if (dados.type == 'success') {

                    Swal.fire({
                        title: 'e-Rifas',
                        text: dados.mensagem,
                        icon: dados.tipo,
                        confirmBottonText: 'OK'
                    })

                } else {

                    $(location).attr('href', 'index.html');

                }

            }
        })

    })

})