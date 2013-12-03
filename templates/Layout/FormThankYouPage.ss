<% if $FormName = 'GeneralFeedback' %>


<!-- GENERAL FEEDBACK -->

   <p>Thank you!</p>
   
   <p>We have received your <strong>General Feedback</strong> submission and will respond to you shortly if necessary.</p>

<!-- /GENERAL FEEDBACK -->





<% else_if $FormName = 'SubmitATip' %>


<!-- SUBMIT A TIP -->

   <p><strong>Tips</strong></p>
   
<!-- /SUBMIT A TIP -->






<% else_if $FormName = 'RollCallComplaint' %>


<!-- ROLL CALL COMPLAINT -->

   <p><strong>Roll Call Complaint</strong></p>
   
<!-- /ROLL CALL COMPLAINT -->





<% else_if $FormName = 'InternalPoliceMisconduct' %>


<!-- INTERNAL POLICE MISCONDUCT -->

   <p><strong>Internal Police Misconduct</strong></p>
   
<!-- /INTERNAL POLICE MISCONDUCT -->





<% else_if $FormName = 'CommendAnOfficer' %>


<!-- COMMEND AN OFFICER -->

   <p><strong>Commend an Officer</strong></p>
   
<!-- /COMMEND AN OFFICER -->





<% else_if $FormName = 'OperationID' %>


<!-- OPERATION ID -->

   <p><strong>Operation ID</strong></p>
   
<!-- /OPERATION ID -->





<% else_if $FormName = 'BOND' %>


<!-- BOND -->

   <p><strong>BOND</strong></p>
   
<!-- /BOND -->





<% else_if $FormName = 'SAVE' %>


<!-- SAVE -->

   <p><strong>SAVE</strong></p>
   
<!-- /SAVE -->





<% else_if $FormName = 'OfficialComplaint' %>


<!-- OFFICIAL COMPLAINT -->

   <p><strong>Official Complaint</strong></p>
   
<!-- /OFFICIAL COMPLAINT -->


<% else %>
<!-- GENERAL FEEDBACK -->

   <p>Thank you!</p>
   
   <p>We have received your Form submission and will respond to you shortly if necessary.</p>

<!-- /GENERAL FEEDBACK -->



<% end_if %>

<% require javascript("themes/v3/js/autosaveclear.js") %>
