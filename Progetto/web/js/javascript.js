/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//creazione elemento per i risultati
function crea(utente) {
    var proPic = $("<img>") //creazione di img profilo e attr. html
            .attr("alt", "Utente")
            .attr("src", utente.urlProPic)
            .attr("class", "mini");
    var nome = $("<a>") //link al profilo
            .attr("href", "bacheca.html?visualizza_bacheca=" + utente.id)
            .html(utente.nome + " " + utente.cognome); //testo semplice
    //append dati appena creati
    var li = $("<li>")
            .append(proPic)
            .append(nome);
    var ul = $("<ol>")
            .append(li);
    var div = $("<div>")
            .append(ul);
    return div;
}

function stateSuccess(data) {
    var lista = $("#persone");
    $(lista).empty();
    var fin = 0;
    for (var instance in data) {
        var fin = $(lista).append(crea(data[instance]));
    }
    if(fin === 0)
    {
            var li = $("<li>")
                    .html("Nessun risultato...")
                    .attr("class","lista");
            var ul = $("<ol>")
                    .append(li);
            var div = $("<div>")
                    .append(ul);
            $(lista).append(div);
    }
}
function stateFailure(state) {
    console.log(state);
}

$(document).ready(function () {
    $(".ricerca_bottone").click(function () {
        var a = $(".ricerca_testo")[0].value;
        $.ajax({
            url: "filter.json",
            data: {
                cmd: "search",
                q: a
            },
            dataType: "json",
            success: function (data) {
                stateSuccess(data);
            },
            error: function (state) {
                stateFailure(state);
            }
        });
    });
});

function cerca()
{
 var a = $(".ricerca_testo")[0].value;

    $.ajax({
        url: "filter.json",
        data: {
            cmd: "search",
            q: a
        },
        dataType: "json",
        success: function (data) {
            stateSuccess(data);
        },
        error: function (state) {
            stateFailure(state);
        }
    });

}

