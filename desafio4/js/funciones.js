$(document).ready(function () {
    $("#div_tabla").css("display", "none");
    $("#div_origen").hide();
    
});

function activar_p2(){
    $("#pantalla1").css("display", "none");
    $("#div_origen").show();
}

$("#cantidad").keyup(function () {
    let cantidad = $("#cantidad").val();

    if (cantidad == "") {
        $("#cantidad").removeClass("is-invalid");
        $("#cantidad").removeClass("is-valid");
        $("#btningresar").prop("disabled", true);
    } else {
        let ja = isNumeric(cantidad);
        if (ja == true) {
            $("#cantidad").removeClass("is-invalid");
            $("#cantidad").addClass("is-valid");
            $("#btningresar").prop("disabled", false);
        } else {
            $("#cantidad").removeClass("is-valid");
            $("#cantidad").addClass("is-invalid");
            $("#btningresar").prop("disabled", true);
        }
    }


});

function isNumeric(val) {
    return /^-?\d+$/.test(val);
};

$(document).on('change', '#recursos', function (event) {
    let unidad = $("#recursos option:selected").val();
    $('#unidad').text(unidad);
});

var arrayrecursos = [];

class recursos {

    constructor(recurso, cantidad, fecha) {
        this.recurso = recurso;
        this.cantidad = cantidad;
        this.fecha = fecha;
    }

}

function ingreso() {
    let recurso_i = $("#recursos option:selected").text();
    let cantidad = $("#cantidad").val() + $("#recursos option:selected").val();
    let fecha = new Date()
        .toLocaleDateString("es-ES", {
            year: 'numeric',
            month: 'long',
            day: 'numeric'
        });
    let recurso_ingreso = new recursos(recurso_i, cantidad, fecha);

    arrayrecursos.push(recurso_ingreso);
    actualizar_tabla();
    formato();

}

function formato() {
    $("#div_origen").removeClass("col-auto");
    $("#div_origen").addClass("row");
    $("#div_cantidad").removeClass("col-12");
    $("#div_cantidad").addClass("col-5");
    $("#div_recursos").removeClass("input-group");
    $("#div_recursos").removeClass("mt-1");
    $("#div_recursos").addClass("col-5");
    $("#div_btn").removeClass("input-group");
    $("#div_btn").removeClass("mt-1");
    $("#div_btn").removeClass("flex-row-reverse");
    $("#div_btn").addClass("col-2");
    $("#div_tabla").addClass("mt-2");
    $("#div_tabla").css("display", "block");
    $('#cantidad').val('');
    $("#cantidad").removeClass("is-invalid");
    $("#cantidad").removeClass("is-valid");
    $("#btningresar").prop("disabled", true);

}

function eliminar(a){
    arrayrecursos.splice(a,1);
    actualizar_tabla();
    formato();
}

function actualizar_tabla(){
    $('#tbody').empty();
    let html = '';
    for (var i = 0; i < arrayrecursos.length; i++) {
        html = html + '<tr>' +
            '<td>' + arrayrecursos[i].recurso + '</td>' +
            '<td>' + arrayrecursos[i].cantidad + '</td>' +
            '<td>' + arrayrecursos[i].fecha + '</td>' +
            '<td><button type="button" class="btn btn-outline-light" onclick="eliminar('+i+')"><i  class="bi bi-trash text-danger"></i></button></td>' +
            '</tr>';
    };

    $('#tbody').html(html);
}