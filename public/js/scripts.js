$(document).ready(function () {
    $('#mainmenu .menu li').hover(
        function () {
            $(this).find('ul:first').show();
            $(this).find('a:first').addClass("hover");
        },
        function () {
            $(this).find('ul:first').hide();
            $(this).find('a:first').removeClass("hover");
        }
    );

    $('.font-resize').on('click', 'a', function () {
        var currentClass = $(this).attr('class');
        $('body').removeClass('small medium large').addClass(currentClass);
        return false;
    });


    // slider --

    var elems = $("#cont ul li");

    var contw = 958;

    var cont_width = (elems.length) * contw;

    var current_elem = 0;

    var speed = 500;


    $("#cont ul").css('width', cont_width + "px");


    $(".slider .arrr").click(function () {

        current_elem++;

        if (current_elem == elems.length) {


            var cw = (elems.length + 1) * contw;

            $("#cont ul").css('width', cw + "px");

            $("#cont ul li:first").clone().appendTo("#cont .items");


            $("#cont ul").animate({marginLeft: current_elem * -contw}, speed, function () {

                $("#cont ul").css('width', cont_width + "px");

                $("#cont ul").css('marginLeft', 0);

                $("#cont ul li:last").remove();

            });

            current_elem = 0;

        }

        else $("#cont ul").animate({marginLeft: current_elem * -contw}, {duration: speed});

    });

    $(".slider .arrl").click(function () {

        current_elem--;

        if (current_elem < 0) {


            $("#cont ul li:last").clone().prependTo("#cont .items");

            $("#cont ul").css("marginLeft", (contw * -1) + "px");

            $("#cont ul").animate({marginLeft: "0px"}, speed, function () {

                $("#cont ul").css('marginLeft', (cont_width - contw) * -1);

                $("#cont ul li:first").remove();

            });

            current_elem = elems.length - 1;

        }

        else $("#cont ul").animate({marginLeft: current_elem * -contw}, {duration: speed});

    });

    // -- slider


});

$(document).ready(function () {
    $(".datepicker").datepicker();
});

function checkAccept(object) {
    if ($(object).is(":checked")) {
        $('#save').attr('disabled', false);
    } else {
        $('#save').attr('disabled', true);
    }
}
