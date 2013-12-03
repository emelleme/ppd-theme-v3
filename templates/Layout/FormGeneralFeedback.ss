<div class="container">
				
	<div class="row">
	
		<div class="span9">
		
		   <p>Your opinion about the Philadelphia Police Department is important to us and we take it seriously. We need your feedback in order to improve our reputation. If you have general comments and/or observations about police personnel and would like to provide us with feedback about how we're doing, please complete the form below. This form is anonymous unless you choose to provide your contact information.<p>
		   
         <p>If you have specific information about inappropriate behavior, misconduct or corruption on the part of any member of the Philadelphia Police Department, <a href="/forms/official-complaint-form">file an official complaint</a> against police.</p>

			<form name="form_genfeedback" id="form_genfeedback" action="http://dev.phillypolice.com/formtools/process.php" method="post">
            <input type="hidden" name="form_tools_form_id" value="1" />
            <input type="text" name="formname" value="GeneralFeedback" style="display: none;"/>

			   <fieldset>
			   
			      <h4>General Feedback</h4>
               
               <div class="controls-row">
			         <div class="span5">
      			      <label for="subject">Subject<sup>*</sup></label>
      			      <input type="text" placeholder="" name="subject" id="subject" class="input-block-level">
			         </div>
               </div>
			      
			      <div class="controls-row">
			         <div class="span6">
                     <label for="feedback">Feedback/Comments<sup>*</sup></label>
                     <textarea rows="5" name="feedback" id="feedback" class="input-block-level" required></textarea>
			         </div>
			      </div>
			      
			      <div class="controls-row">
			         <div class="span6">
      			      <label for="contactme" class="checkbox">
                        <input type="checkbox" id="contactme" name="contactme" class="contact-checkbox"> Contact me if further details are needed
                     </label>
			         </div>
			      </div>

                  <div class="contact-section-toggle" style="display: none;">
                      <hr class="hr15">
                      
                      <h4>Contact Information</h4>

                      <div class="controls-row">
                         <div class="span2">
                          <label for="name">Full Name</label>
                          <input type="text" placeholder="" name="name" id="name" class="input-block-level">
                         </div>
                      </div>

                      <div class="controls-row">
                         <div class="span3">
                          <label for="email">Email Address</label>
                          <input type="email" name="email" id="email" placeholder="" class="input-block-level">
                         </div>
                       <div class="span2">
                          <label for="phone">Phone Number</label>
                          <input type="tel" name="phone" id="phone" placeholder="" class="input-block-level">
                       </div>
                      </div>
                   </div>
               
               <div class="row">
                  <div class="span7">
                     <div class="separator"></div>
                  </div>
               </div>
			      
			      <button type="submit" class="btn btn-success">Submit General Feedback Form</button>	      
			   
			   </fieldset>
			</form>
		</div>
		
		<div class="span3">
			<div class="heading"><h3>Sidebar</h3></div>
		</div>
		
	</div>	
	
</div>		