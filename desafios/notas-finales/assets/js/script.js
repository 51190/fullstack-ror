// HTML

var html1 = document.getElementById("html-nota1");
var html2 = document.getElementById("html-nota2");
var html3 = document.getElementById("html-nota3");
var htmlPromedio = document.getElementById("html-promedio");

var htmlInput1 = +prompt("Escriba la nota 1 [HTML]:");
var htmlInput2 = +prompt("Escriba la nota 2 [HTML]:");
var htmlInput3 = +prompt("Escriba la nota 3 [HTML]:");

html1.innerHTML = htmlInput1;
html2.innerHTML = htmlInput2;
html3.innerHTML = htmlInput3;
htmlPromedio.innerHTML = ((htmlInput1+htmlInput2+htmlInput3)/3).toFixed(2);

// CSS

var css1 = document.getElementById("css-nota1");
var css2 = document.getElementById("css-nota2");
var css3 = document.getElementById("css-nota3");
var cssPromedio = document.getElementById("css-promedio");

var cssInput1 = +prompt("Escriba la nota 1 [CSS]:");
var cssInput2 = +prompt("Escriba la nota 2 [CSS]:");
var cssInput3 = +prompt("Escriba la nota 3 [CSS]:");

css1.innerHTML = cssInput1;
css2.innerHTML = cssInput2;
css3.innerHTML = cssInput3;
cssPromedio.innerHTML = ((cssInput1 + cssInput2 + cssInput3) / 3).toFixed(2);

// JS

var js1 = document.getElementById("js-nota1");
var js2 = document.getElementById("js-nota2");
var js3 = document.getElementById("js-nota3");
var jsPromedio = document.getElementById("js-promedio");

var jsInput1 = +prompt("Escriba la nota 1 [JS]:");
var jsInput2 = +prompt("Escriba la nota 2 [JS]:");
var jsInput3 = +prompt("Escriba la nota 3 [JS]:");

js1.innerHTML = jsInput1;
js2.innerHTML = jsInput2;
js3.innerHTML = jsInput3;
jsPromedio.innerHTML = ((jsInput1 + jsInput2 + jsInput3) / 3).toFixed(2);