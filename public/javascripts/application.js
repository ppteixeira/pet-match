function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
$(document).ready(function(){
    $('#characterLeft').text('140 characters left');
    $('#message').keydown(function () {
        var max = 140;
        var len = $(this).val().length;
        if (len >= max) {
            $('#characterLeft').text('You have reached the limit');
            $('#characterLeft').addClass('red');
            $('#btnSubmit').addClass('disabled');
        }
        else {
            var ch = max - len;
            $('#characterLeft').text(ch + ' characters left');
            $('#btnSubmit').removeClass('disabled');
            $('#characterLeft').removeClass('red');
        }
    });
});

// ----------------pet show------------------

$(document).ready(function() {
    var panels = $('.pet-infos');
    var panelsButton = $('.dropdown-pet');
    panels.hide();

    //Click dropdown
    panelsButton.click(function() {
        //get data-for attribute
        var dataFor = $(this).attr('data-for');
        var idFor = $(dataFor);

        //current button
        var currentButton = $(this);
        idFor.slideToggle(400, function() {
            //Completed slidetoggle
            if(idFor.is(':visible'))
            {
                currentButton.html('<i class="glyphicon glyphicon-chevron-up text-muted"></i>');
            }
            else
            {
                currentButton.html('<i class="glyphicon glyphicon-chevron-down text-muted"></i>');
            }
        })
    });


    $('[data-toggle="tooltip"]').tooltip();

    // $('.button-showpet').click(function(e) {
    //     e.preventDefault();
    //     alert("This is a demo.\n :-)");
    // });
});

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
