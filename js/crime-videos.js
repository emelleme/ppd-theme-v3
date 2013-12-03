
	//Crime videos iframe api
	var tag = document.createElement('script');

	tag.src = "https://www.youtube.com/iframe_api";
	var firstScriptTag = document.getElementsByTagName('script')[0];
	firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
	var player;
	function onYouTubeIframeAPIReady() {
	player = new YT.Player('player', {
	  height: '293',
	  width: '520',
	  videoId: 'DxXGxnM4Ukw',
	  events: {
	    'onReady': onPlayerReady,
	    'onStateChange': onPlayerStateChange
	  }
	});
	}
	function onPlayerReady(event) {
		player.cueVideoById("DxXGxnM4Ukw", 5, "large");
	}
	var done = false;
	function onPlayerStateChange(event) {
		/*if (event.data == YT.PlayerState.PLAYING && !done) {
		  setTimeout(stopVideo, 6000);
		  done = true;
		}*/
	}

	function stopVideo() {
		player.stopVideo();
	}
$(document).ready(function() {
	// $('vidFrame').show();
	$('.video-link').on('click', function(){
		//Load new video
		var id = $(this).data('videoid');
		$('#videoTitle').html($(this).data('title'));
		$('#videoDescription').html($(this).data('description'));
		$('#videoTip').attr('href','forms/submit-a-tip?subject=Surveillance Video: '+escape($(this).data('title')));
		player.cueVideoById(id, 5, "large");
		
	})
});

jQuery(document).ready(function($) {
	
	$('#video-cards-wrapper').imagesLoaded(function() {
		console.log('test')
		var $container = $('#video-cards-wrapper');
			$select = $('#filters-location select');
			$select2 = $('#filters-crimetype select');
		filters = {};

		// initialize Isotope
		$container.isotope({
		// options...
		resizable: false, // disable normal resizing
		// set columnWidth to a percentage of container width
	  	masonry: { columnWidth: $container.width() / 12 }
		});

		// update columnWidth on window resize
		$(window).smartresize(function(){
		
			$container.isotope({
			// update columnWidth to a percentage of container width
			masonry: { columnWidth: $container.width() / 12 }
			});
		});


		$container.isotope({
			itemSelector : '.video-item'
		});
		
		var $optionSets = $('.option-set'),
	  	$optionLinks = $optionSets.find('a');

	  	$optionLinks.click(function(){
		
			var $this = $(this);
			// don't proceed if already selected
			if ( $this.hasClass('selected') ) {
		  		return false;
			}
			var $optionSet = $this.parents('.option-set');
			$optionSet.find('.selected').removeClass('selected');
			$this.addClass('selected');

			// store filter value in object
			// i.e. filters.tags = 'burglary'
			var group = $optionSet.attr('data-filter-group');
			filters[ group ] = $this.attr('data-filter-value');

			//convert object into array
			var isoFilters = [];
			for( var prop in filters ){
				isoFilters.push( filters[ prop ])
			}
			var selector = isoFilters.join('');
			$container.isotope({filter:selector});

			return false;
		});

		/*$select2.change(function() {
			
			var filters = $(this).val();

				$container.isotope({
					filter: filters
				});
			
			});

			var $optionSets = $('#filters-crimetype .option-set'),
		  	$optionLinks = $optionSets.find('a');

		  	$optionLinks.click(function(){
			
				var $this = $(this);
				// don't proceed if already selected
				if ( $this.hasClass('selected') ) {
			  		return false;
				}
			var $optionSet = $this.parents('.option-set');
			$('ul.option-set').find('.selected').removeClass('selected');
			$this.addClass('selected');

			// make option object dynamically, i.e. { filter: '.my-filter-class' }
			var options = {},
				key = $optionSet.attr('data-option-key'),
				value = $this.attr('data-option-value');
			// parse 'false' as false boolean
			value = value === 'false' ? false : value;
			options[ key ] = value;
			if ( key === 'layoutMode' && typeof changeLayoutMode === 'function' ) {
			  // changes in layout modes need extra logic
			  changeLayoutMode( $this, options )
			} else {
			  // otherwise, apply new options
			  $container.isotope( options );
			}

			return false;
			
		  });*/
		
	});
	
});
