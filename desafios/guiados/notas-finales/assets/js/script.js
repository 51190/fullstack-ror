// variables
var inputs;
var validado;

function validarEntradas(valores) {
    const regexp = /^([.,0-9])*$/
    return valores.every(valor => regexp.test(valor));
}

function pedirNotas(modulo) {
    var nota1 = +prompt("Escriba la nota 1 [" + modulo.toUpperCase() + "]:");
    var nota2 = +prompt("Escriba la nota 2 [" + modulo.toUpperCase() + "]:");
    var nota3 = +prompt("Escriba la nota 3 [" + modulo.toUpperCase() + "]:");
    return [nota1, nota2, nota3];
}

function sacarPromedio(modulo) {
    // HTML
    if (modulo === "html") {
        var html1 = document.getElementById("html-nota1");
        var html2 = document.getElementById("html-nota2");
        var html3 = document.getElementById("html-nota3");
        var htmlPromedio = document.getElementById("html-promedio");
        validado = false;
        while (validado === false) {
            inputs = pedirNotas("html").map((input) => {
                return input;
            })
            validado = validarEntradas(inputs) ? true : false;
            if (!validado) {
                alert("Notas deben ser números válidos [0-9]");
            }
        }
        html1.innerHTML = inputs[0];
        html2.innerHTML = inputs[1];
        html3.innerHTML = inputs[2];
        htmlPromedio.innerHTML = ((inputs[0] + inputs[1] + inputs[2]) / 3).toFixed(2);
    }
    // CSS
    else if (modulo === "css") {
        var css1 = document.getElementById("css-nota1");
        var css2 = document.getElementById("css-nota2");
        var css3 = document.getElementById("css-nota3");
        var cssPromedio = document.getElementById("css-promedio");
        validado = false;
        while (validado === false) {
            inputs = pedirNotas("css").map((input) => {
                return input;
            })
            validado = validarEntradas(inputs) ? true : false;
            if (!validado) {
                alert("Notas deben ser números válidos [0-9]");
            }
        }
        css1.innerHTML = inputs[0];
        css2.innerHTML = inputs[1];
        css3.innerHTML = inputs[2];
        cssPromedio.innerHTML = ((inputs[0] + inputs[1] + inputs[2]) / 3).toFixed(2);
    }
    else {
        // JS
        var js1 = document.getElementById("js-nota1");
        var js2 = document.getElementById("js-nota2");
        var js3 = document.getElementById("js-nota3");
        var jsPromedio = document.getElementById("js-promedio");
        validado = false;
        while (!validado) {
            inputs = pedirNotas("js").map((input) => {
                return input;
            })
            validado = validarEntradas(inputs) ? true : false;
            if (!validado) {
                alert("Notas deben ser números válidos [0-9]");
            }
        }
        js1.innerHTML = inputs[0];
        js2.innerHTML = inputs[1];
        js3.innerHTML = inputs[2];
        jsPromedio.innerHTML = ((inputs[0] + inputs[1] + inputs[2]) / 3).toFixed(2);
    }

}




