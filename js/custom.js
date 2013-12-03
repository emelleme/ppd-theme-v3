/* ------------------ Back To Top ------------------- */

jQuery('.back-to-top a').click(function(){
	jQuery('html, body').animate({scrollTop:0}, 300); 
	return false; 

});



/* ------------------ PNG Fix for IE ------------------- */

$(document).ready(function(){
    try {
        $(document).pngFix();
    } catch(e) {
        //console.error(e);
    }

    $('.stats-link').on('click', function(e){
        //Load new video
        e.preventDefault();

        $('#modalFrame').attr('src',$(this).data('link'));
        $('#videoModal').modal('show');

    });

/* ------------------ External Link Icon ------------------- */

    $('#content a').each(function() {
        //Filter out links with images.
        if($(this).has('img').length === 0){
            var linkHostname = $(this).get(0).hostname;
            if(linkHostname !== window.location.hostname && linkHostname !== 'blog.phillypolice.com' &&
                linkHostname !== 'safecam.phillypolice.com' && linkHostname !== '') {
                $(this).attr('target', '_blank');
                $(this).append(' <i class="icon-external-link"></i> ');
            }
        }
    });

/*---------------- google map (districts) resizer ----------------------- */

    $('#gmap-resizer').click(function() {
        var $googleMap = $('.google-map-full');

        var currHeight = $googleMap.height();
        var nextHeight = currHeight === 300 ? 450 : 300;
        $googleMap.css('height', nextHeight + 'px');

        $('html, body').animate({
            scrollTop: $("#googlemaps-container-top").offset().top
        }, 1000);
    });
    
/*---------------- google map (crime stats) resizer ----------------------- */

    $('#cmap-resizer').click(function() {
        var $googleMap = $('.google-map-full');

        var currHeight = $googleMap.height();
        var nextHeight = currHeight === 400 ? 600 : 400;
        $googleMap.css('height', nextHeight + 'px');

        $('html, body').animate({
            scrollTop: $("#googlemaps-container-top").offset().top
        }, 1000);
    });

/*--------------- toggle about photo feature ----------------------------- */

    var aboutPhotoShown = false;

    $('#about-photo').addClass('fadable');
    $('#hero-headline, #hero-twitter').addClass('fadable');

    $('#show-about-photo').click(function() {
        var desc = $('.bg-home').attr('data-desc');
        var title = $('.bg-home').attr('alt');
        $('#about-photo p').text(desc);
        $('#about-photo h2').text(title);

        if(aboutPhotoShown) {
            $('#hero-headline, #hero-twitter').removeClass('fade_out');
            $('#hero-headline, #hero-twitter').addClass('fade_in');
            $('#about-photo').removeClass('fade_in');
            $('#about-photo').addClass('fade_out');
            $('#show-about-photo').text('About this Photo');
        } else {
            $('#hero-headline, #hero-twitter').removeClass('fade_in');
            $('#hero-headline, #hero-twitter').addClass('fade_out');
            $('#about-photo').removeClass('fade_out');
            $('#about-photo').addClass('fade_in');
            $('#show-about-photo').text('Close');
        }
        aboutPhotoShown = !aboutPhotoShown;
    });

/*----------------  cursor animation for the search box ----------------------- */

    var cursorShown = false;

    setInterval(function() {
        if($('#display-search').val() !== '') {
            $('#display-search').css('border-left', '0px solid');
            cursorShown = false;
            return ;
        }
        if(cursorShown) $('#display-search').css('border-left', '0px solid');
        else $('#display-search').css('border-left', '1px solid');
        cursorShown = !cursorShown;
    }, 500);

    $('#hidden-search').bind('keyup', function() {
        if($('#hidden-search').val() !== '') {
            $('#display-search').css('border-left', '0px solid');
            cursorShown = false;
        }
    });


/*----------------  toggle contact section ----------------------------------- */

    $('.contact-checkbox').change(function() {
        if (!$(this).is(':checked')) {
            $('.contact-section-toggle').hide();
        } else {
            $('.contact-section-toggle').show();
        }
    });


/*----------------  operation id form section toggle ----------------------------- */

    $('#drivers-license-option').change(function() {
        if (!$(this).is(':checked')) {
            $('#drivers-license-identification').hide();
            $('#email-phone-identification').show();
        } else {
            $('#drivers-license-identification').show();
            $('#email-phone-identification').hide();
        }
    });

    $('#email-phone-option').change(function() {
        if (!$(this).is(':checked')) {
            $('#email-phone-identification').hide();
            $('#drivers-license-identification').show();
        } else {
            $('#email-phone-identification').show();
            $('#drivers-license-identification').hide();
        }
    });

/*---------------------------  bond form  ------------------------------------- */

    $('#num-contacts-for-bond').bind('change', function() {
        $('#contact-blocks .contact-block').hide();

        var valueSelected = this.value;
        var blocksToShow = $('#contact-blocks .contact-block');

        for(var i=0; i<valueSelected; i++) {
            blocksToShow.eq(i).show();
        }
    });

    $("#alarm-option input:radio[name=label-choice]").click(function() {
        $('#alarm-details').hide();

        var value = $(this).val();
        if(value === 'yes') {
            $('#alarm-details').show();
        }
    });

    if(document.getElementById('current-date') !== null) {
        var fullMonthMapping = {Jan: 'January', Feb: 'February', Mar: 'March', Apr: 'April', May: 'May',
        Jun: 'June', Jul: 'July', Aug: 'August', Sep: 'September', Oct: 'October', Nov: 'November', Dec: 'December'}

        var parts = new Date().toString().split(' ');
        // e.g. ["Sat", "Jul", "13", "2013", "17:08:07", "GMT", "(UTC)"]
        var formattedDate = fullMonthMapping[parts[1]] + ' ' + parts[2] + ', ' + parts[3];
        $('#current-date').val(formattedDate);
    }

/*----------------  official complaint form ------------------- */

    $('.expand-form').bind('click', function() {
       var currentText = $(this).text();
       var idToExpand = '#' + $(this).attr('data-expand-id');
       if($(idToExpand).css('display') == 'none') {
           $(idToExpand).show();
           $(this).text(currentText.replace("Add", "").trim());
       } else {
           $(idToExpand).hide();
           $(this).text('Add ' + currentText);
       }

        return false;
    });

    var numWitnesses = 1;
    $('#add-witness-block').bind('click', function() {
        if(numWitnesses <= 2) {
            numWitnesses++;
            var blockToAdd = $(this).prev().clone();
            blockToAdd.find('h5').text('Witness '+numWitnesses);

            blockToAdd.find('input').val('');
            blockToAdd.find('select').prop('selectedIndex',0);

            blockToAdd.find('input').each(function(index, ele) {
                var name = $(ele).attr('name');
                var newName = 'witness' + numWitnesses + '_' + name.split('_').splice(1,100).join('_');
                $(ele).attr('name', newName);
            });

            blockToAdd.find('select').each(function(index, ele) {
                var name = $(ele).attr('name');
                var newName = 'witness' + numWitnesses + '_' + name.split('_').splice(1,100).join('_');
                $(ele).attr('name', newName);
            });

            $(this).before(blockToAdd);
        }

        if(numWitnesses == 3) {
            $('#add-witness-block').hide();
        }

        return false;
    });

    

    $('#add-second-officer').bind('click', function() {
       $('#second-officer-block').show();
       $('#add-second-officer').hide();
       return false;
    });

    $('#officer-2-heading').bind('click', function() {
        $('#second-officer-block').hide();
        $('#add-second-officer').show();
        return false;
    });

    /*----------------  open flickr badge photos in new window ------------------- */

    $(document).ready(function(){
       $(".flickr-widget a").attr('target','_blank');
    });

    
});