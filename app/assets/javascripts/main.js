$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
});

function sum(){
    var price = document.getElementById("price").innerHTML;
    var num = parseInt(document.getElementById("num").value);
    var total = num * price;
    document.getElementById("total").value = total;
}

