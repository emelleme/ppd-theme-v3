<div class="heading"><h3>Toolbox</h3></div>
<ul>
<% loop ToolboxLinks %>
	<li><a href="$LinksTo.Link" target="$Target"><i class="$IconClass"></i>$Title</a>
<% end_loop %>
</ul>

<hr>

<div class="heading"><h3>I'd Like to Report...</h3></div>
<p>
    <select data-placeholder="Submit a tip or roll call complaint" class="chzn-select" id="report-crime-select">
        <option></option>
        <optgroup label="Submit a Tip">
          <option>Drugs</option>
          <option>Illegal Guns</option>
          <option>Megan's Law Violation</option>
          <option>Prostitution</option>
          <option>Robbery</option>
          <option>Sexual Assault</option>
          <option>Suspicious Behavior</option>
          <option>Theft</option>
          <option>Vandalism</option>
          <option>Wanted Criminal</option>
        </optgroup>
        <optgroup label="Submit a Roll Call Complaint">
          <option>Abandoned Auto</option>
          <option>Drunk/Disorderly Crowd</option>
          <option>Excessive Noise</option>
          <option>Nuisance Property</option>
        </optgroup>
  </select>
</p>
