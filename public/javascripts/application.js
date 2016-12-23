function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

function readURL(input){
  var ext = input.files[0]['name'].substring(input.files[0]['name'].lastIndexOf('.') + 1).toLowerCase();
  if (input.files && input.files[0] && (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")){
    var reader = new FileReader();
    reader.onload = function (e) {
        $('#img').attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);
  }else{
     $('#img').attr('src', '/assets/no_preview.png');
  }
}

$(document).ready(function(){
    $('#characterLeft').text('140 characters left');
    $('#message').keydown(function () {
        var max = 140;
        var len = $(this).val().length;
        if (len >= max) {
            $('#characterLeft').text('You have reached the limit');
            $('#characterLeft').addClass("red");

        }
        else {
            var ch = max - len;
            $('#characterLeft').text(ch + ' characters left');

            $('#characterLeft').removeClass('red');
        }
    });



  // ----------------pet show------------------
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

    // Delete button
    $('.delete').on('click', function () {
      confirm('Are you sure you want to delete?');
    });



});
