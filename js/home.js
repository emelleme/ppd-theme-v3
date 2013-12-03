$(document).ready(function(){
/* ------------------ Chosen (Home Page I'd Like to Report) ------------------- */

    $("#report-crime-select").chosen({no_results_text: '<a id="submit-new-tip" onclick="window.location.href = \'/submitatip\'">Submit a tip about </a>'});

    $("#report-crime-select").chosen().change(function(e, chosenObj) {
    	var label=$('#report-crime-select :selected').parent().attr('label');
   		if(label == 'Submit a Tip'){
   			window.location.href = '/forms-reports/tips?subject=' + $("#report-crime-select option:selected").val();
   		}else{
   			window.location.href = '/forms-reports/rollcall?subject=' + $("#report-crime-select option:selected").val();
   		}
        
    });

    $('#show-about-photo').hover(
    	function(e) {
    		console.log();
    		if($('#show-about-photo').html() != 'Close'){
    			enterAboutButton = setTimeout(function(){
					console.log($('a#show-about-photo').click());
				},500);
    		}
		}, function() {clearTimeout(enterAboutButton)});
			
});