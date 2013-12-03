jQuery(document).ready(function ($) {

    $('#post-cards-policeblotter-wrapper').imagesLoaded(function () {

        var $container = $('#post-cards-policeblotter-wrapper');

        // initialize Isotope
        $container.isotope({
            // options...
            resizable:false, // disable normal resizing
            // set columnWidth to a percentage of container width
            masonry:{ columnWidth:$container.width() / 12 }
        });

        // update columnWidth on window resize
        $(window).smartresize(function () {
            $container.isotope({
                // update columnWidth to a percentage of container width
                masonry:{ columnWidth:$container.width() / 12 }
            });
        });

        $container.isotope({
            itemSelector:'.post-card'
        });

        $('#filters-policeblotter a').click(function(){
            var selector = $(this).attr('data-option-value');
            $container.isotope({ filter: selector });
            $('#filters-policeblotter a').removeClass('selected');
            $(this).addClass('selected');
            return false;
        });
    });

    $('#post-cards-beyondthebadge-wrapper').imagesLoaded(function () {

        var $container = $('#post-cards-beyondthebadge-wrapper');

        // initialize Isotope
        $container.isotope({
            // options...
            resizable:false, // disable normal resizing
            // set columnWidth to a percentage of container width
            masonry:{ columnWidth:$container.width() / 12 }
        });

        // update columnWidth on window resize
        $(window).smartresize(function () {
            $container.isotope({
                // update columnWidth to a percentage of container width
                masonry:{ columnWidth:$container.width() / 12 }
            });
        });

        $container.isotope({
            itemSelector:'.post-card'
        });

        $('#filters-beyondthebadge a').click(function(){
            var selector = $(this).attr('data-option-value');
            $container.isotope({ filter: selector });
            $('#filters-beyondthebadge a').removeClass('selected');
            $(this).addClass('selected');
            return false;
        });
    });

});