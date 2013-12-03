/*
 Demo: AJAX Search Suggest (WeAreHunted.com Style)
 Version 1.0
 Author: Ian Lunn
 Author URL: http://www.ianlunn.co.uk/
 Demo URL: http://www.ianlunn.co.uk/demos/ajax-search-suggest-wearehunted/
 Tutorial URL: http://www.ianlunn.co.uk/blog/code-tutorials/ajax-search-suggest-wearehunted/
 GitHub: https://github.com/IanLunn/AJAX-Search-Suggest--WeAreHunted.com-Style-/

 Dual licensed under the MIT and GPL licenses:
 http://www.opensource.org/licenses/mit-license.php
 http://www.gnu.org/licenses/gpl.html
 */
sWait = setTimeout(function(){
            //Timeoutfunction
},700);
$(document).ready(function(){ //when the browser has rendered the page...

    //save selectors we'll be using more than once into variables for better performance
    var $hiddenSearch = $("#hidden-search"),
        $displaySearch = $("#display-search"),
        $searchOverlay = $("#search-overlay"),
        $resultList = $("#result-list");

    $(".icon-search").click(function(){ //when the search link is clicked...
        $searchOverlay.show(); //show the search overlay
        $hiddenSearch.focus(); //give the hidden input box focus
        return false;
    });

    function closeOverlay() {
        var overlay = document.getElementById('search-overlay');
        $hiddenSearch.blur(); //remove focus from the hidden input
        $(overlay).animate({"opacity":0}, 500, function () { //...animate it's opacity to 0...
            $(overlay).hide().css("opacity", 1); //...hide it (so the user can click the elements behind it again) and reset its opacity
        });
    }

    $searchOverlay.click(function(event){ //when the search overlay is clicked...
        $hiddenSearch.focus(); //give the hidden input box focus
        if(event.target.id == "search-overlay" || event.target.id == "search-overlay-close"){
            //...only if the user is clicking the empty areas of the overlay (and not child elements)...
            closeOverlay();
        }
    });

    //when the user pushes a key whilst the input box has focus...
    $hiddenSearch.keydown(function(e){
        window.clearTimeout(sWait);
        currentQuery = $displaySearch.val(); //get the current value of the search input
        if(e.keyCode == 27) {
            closeOverlay();
        }
        if(e.keyCode == 8){ //if the user hits backspace...

            latestQuery = currentQuery.substring(0, currentQuery.length - 1); //...remove the last character
            $displaySearch.val(latestQuery); //...update the search input box
            startCount = 1;
            updateResults(latestQuery); //...update the results

        }else if(e.keyCode == 32 || (e.keyCode >= 65 && e.keyCode <= 90) || (e.keyCode >= 48 && e.keyCode <= 57)){ //if the user hits spacebar (32), characters a - z (65 - 90) or numeric keys(0 - 9)...
            latestQuery = currentQuery + String.fromCharCode(e.keyCode); //...add the newly entered key onto the current query
            $displaySearch.val(latestQuery); //...update the search input value with the latest query
            
        }else if(e.keyCode == 13){
            //Enter Key
            startCount = 1;
        }

        sWait = setTimeout(function(){
            updateResults(latestQuery);
            startCount = 1;
        },700);
    });

    function processResult(data) {
        if (data.length > 0) { //if the php script returns a result...
            if(startCount == 1){
                //Clear Results
                $resultList.html('');
                $('#result-list').siblings('a').remove(":contains('Load More')");
            }
            data = $.parseJSON(data); //turn the string from the PHP script into a JavaScript object
            $("#result-list li").remove(":contains('No results')"); //remove the "No results" text if it's being displayed
            $("#search-overlay-results").show(); //show the results container

            previousTerms = new Array(); //set up an array that will hold the terms currently being displayed
            $("#result-list li").each(function () { //for each result currently being displayed...
                previousTerms.push($(this).text()); //add it to the previousTerms array
            });

            keepTerms = new Array();

            for (term in data) { //for each matched term in the returned data...
                url = data[term]; //get the url for the matched term;
                for(key in url){
                    if(key == "title"){
                    var title = url[key];
                }else if(key == "link"){
                    var uri = url[key];
                }else if(key == "snippet"){
                    var snippet = url[key];
                }
            }   
                if ($.inArray(term, previousTerms) === -1) { //if this term isn't in the previous list of terms (and isn't already being displayed)...
                    
                    $resultList.append('<li><a href="' + uri + '" title="' + title + '">' + title + '</a></li>');
                    $resultList.append('<p>' + snippet + '</p></li>');
                
                } else { //if it is in the previous list...
                    keepTerms.push(term); //add the term we want to keep to an array
                }
            }

            if((keepTerms.length == 0 && (previousTerms.length != 0 || $displaySearch.val() == ""))) {
                console.log(keepTerms.length)
                console.log(previousTerms.length)
            }else {
                for (term in previousTerms) { //for each term in the displayed list...
                    if ($.inArray(previousTerms[term], keepTerms) === -1) {
                        $("#artists li").filter(function () {
                            return $(this).text() == previousTerms[term]
                        }).remove();
                    }
                }
            }
            //Add Load More
            if(startCount == 1){
                var a = $(document.createElement('a')).text('Load More').on('click',function(e){
                    e.preventDefault();
                    startCount = startCount+10;
                    loadMore(latestQuery);
                    return false;
                });
                $resultList.parent().append(a);
            }
        }else{
            //Blank entry
            $resultList.html('');
            $('#result-list').siblings('a').remove(":contains('Load More')");
        }
    }

    function updateResults(latestQuery){
        if(latestQuery.length > 0){ //if there is a query to process...
            //processResult('{"ABBA":"?search=ABBA","ACDC":"?search=ACDC","Ace of Spades":"?search=AceOfSpades"}');
            $.post("home/search", {latestQuery: latestQuery}, function(data){ //..send that query to the php script "auto-suggest.php" via ajax
                
                processResult(data);
            });
        }else{
            $resultList.html("<li>No results</li>");
            $('#result-list').siblings('a').remove(":contains('Load More')");
        }
    }

    function loadMore(latestQuery,start){
        //processResult('{"ABBA":"?search=ABBA","ACDC":"?search=ACDC","Ace of Spades":"?search=AceOfSpades"}');
        console.log(startCount)
        $.post("home/search", {latestQuery: latestQuery,start:startCount}, function(data){ //..send that query to the php script "auto-suggest.php" via ajax
            processResult(data);
        });
    }
});