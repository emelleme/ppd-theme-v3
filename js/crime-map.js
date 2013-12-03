$(document).ready(function() {

    var today = new Date();
    var threeYearsAgo = new Date();
    var oneMonthAgo = new Date();

    $('.draggable').draggable();

    /*$('.dateSlider').dateRangeSlider({
        range: {
            min: { days: 7 },
            max: { days: 180 }
        },
        bounds: {
            min: threeYearsAgo.setFullYear(threeYearsAgo.getFullYear() - 3),
            max: today.setDate(today.getDate() - 2)
        },
        defaultValues: {
            min: oneMonthAgo.setMonth(today.getMonth() - 12),
            max: oneMonthAgo.setMonth(today.getMonth() - 6)
     }});*/


    // new UI

    var currentLocation = null;

    $('#radius button').bind('click', function() {
       var blocks = $(this).attr('data-blocks');
       $('#radius button').removeClass('active');
       $(this).addClass('active');
    });

    $('#date-range button').bind('click', function() {
       var days = $(this).attr('data-days');
       $('#date-range button').removeClass('active');
       $(this).addClass('active');
    });

    $('#reset-crime-map').bind('click', function() {
        $('#radius button').removeClass('active');
        $('#date-range button').removeClass('active');

        $('#radius button:nth-child(2)').addClass('active');
        $('#date-range button:nth-child(2)').addClass('active');
        cancelCurrentLocationDisplay();
    });

    $('#use-location').bind('click', function() {
        if (navigator.geolocation) {
            $('#location-option i.icon-loading').show();
            navigator.geolocation.getCurrentPosition(geoLocationSuccess, geoLocationFailed);
        } else {
            $('#location-option i.icon-loading').hide();
            alert('Your browser does not support geo-location detection.');
        }
    });
    
    $('a.stats-link').on('hover', function(e){
        //Load new video
        var id = $(this).data('link');
        console.log(id);
        $('#modalFrame').attr('src',$(this).data('link'));

    })

    function geoLocationSuccess(position) {
        currentLocation = position.coords;
        $('#current-location-display').show();
        $('#location-option').hide();
        $('#street-address').hide();
        $('#location-option i.icon-loading').hide();
    }

    function geoLocationFailed() {
        alert('Unable to detect your current location.');
        $('#location-option i.icon-loading').hide();
    }

    function updateStreetAddress(address) {
        $('#street-address').val(address);
    }

    $('#cancel-current-location').bind('click', cancelCurrentLocationDisplay);

    function cancelCurrentLocationDisplay() {
        $('#current-location-display').hide();
        $('#location-option').show();
        $('#street-address').show();
        currentLocation = null;
    }

    $('#show-crimes').bind('click', function() {
       var numBlocks = $('#radius button.active').attr('data-blocks');
       var days = $('#date-range button.active').attr('data-days');

       // TODO: call service and render map
    });
});