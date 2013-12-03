<div id="search-overlay">
   <div class="container">
      <div class="row">
         <div class="span2"></div>
         <div class="span7">
         	<h2>Begin typing to search</h2>
         </div>
         <div class="span1">
         	<div id="search-overlay-close">X</div>
         </div>
      </div>
   </div>
   <div class="container">
      <div class="row">
         <div class="span2"></div>
         <div class="span10">
         	<form>
         		<input id="hidden-search" type="text" autocomplete="off" /> <!--hidden input the user types into-->
         		<input id="display-search" type="text" autocomplete="off" readonly="readonly" /> <!--mirrored input that shows the actual input value-->
         	</form>
         
         	<div id="search-overlay-results">
         		<h2 class="result-summary">Results</h2>
         		<ul id="result-list" class=""></ul>
         	</div>
         </div>
      </div>
   </div>
</div>