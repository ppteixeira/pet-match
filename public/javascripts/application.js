function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}



$('<select[name="state"]>').change(function () {
  alert( "Handler for .change() called." );
});
