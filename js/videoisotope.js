jQuery(document).ready(function ($) {

    $('#video-cards-wrapper').imagesLoaded(function () {

        var $container = $('#video-cards-wrapper');
        var locFilter = '*', typeFilter = '*';

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
            itemSelector:'.portfolio-item'
        });

        $('#filters-crimetype a').click(function(){
            $('#filters-crimetype a').removeClass('selected')
            $(this).addClass('selected');
            var selector = $(this).attr('data-option-value');
            typeFilter = selector;
            var finalFilter = (locFilter === '*') ? selector : selector + locFilter;
            $container.isotope({ filter: finalFilter });
            return false;
        });

        $('#filters-location a').click(function(){
            $('#filters-location a').removeClass('selected')
            $(this).addClass('selected');
            var selector = $(this).attr('data-option-value');
            locFilter = selector;
            var finalFilter = (typeFilter === '*') ? selector : selector + typeFilter;
            $container.isotope({ filter: finalFilter });
            return false;
        });
    });

    $(".video-link").click(function() {
        var title = $(this).attr('title');
        var href = $(this).attr('href');
        var id = href.split('#')[1];
        $.fancybox({
            'openEffect': 'elastic',
            'closeEffect': 'elastic',
            'speedIn': 500,
            'speedOut': 300,
            'autoDimensions': true,
            'href' : '#' + id,
            'titleShow': 'true',
            'orig': $(this)
        });
    });

});