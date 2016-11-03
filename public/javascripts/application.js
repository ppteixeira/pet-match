function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

//
// $(function() {
//   $("form.save-match").submit(function(e){
//     e.preventDefault();
//
//     $.ajax({
//       type: "POST",
//       url: "/match/add",
//
//       success: function(){
//         $("#message-saved").html("Successfully saved")
//       },
//       error: function(){
//         $("#message-saved").html("Not Successful")
//       }
//     });
//   });
// });
