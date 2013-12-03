<div class="container">
				
	<div class="row">
	
		<div class="span9">
		
		   <p><strong>Honor. Service. Integrity.</strong> These are the values of the Philadelphia Police Department, visible on the patch of every uniform worn by the members of this Department. If you would like to recognize an officer who has performed his/her duties in a manner that you think is exceptional and reflects favorably upon the officer and the Department, then we encourage you to take a moment and tell us about it. Such a positive and appreciative atmosphere improves officer morale and helps all members of the Department work harder to improve their individual performance and the quality of the services they provide to the public.</p>

			<form name="form_commend" id="form_commend" action="http://dev.phillypolice.com/formtools/process.php" method="post">
               <input type="hidden" name="form_tools_form_id" value="5" />
               <input type="text" name="formname" value="CommendAnOfficer" style="display: none;" />
			   <fieldset>
			   
			      <h4>Commend an Officer</h4>
               
               <div class="controls-row">
			         <div class="span5">
      			      <label for="">Officer(s) Name<sup>*</sup></label>
      			      <input name="officers" type="text" placeholder="" class="input-block-level">
			         </div>
               </div>
			      
			      <div class="controls-row">
			         <div class="span6">
                     <label for="">Your Experience with the Officer(s)<sup>*</sup></label>
                     <textarea name="message" rows="5" class="input-block-level" required></textarea>
			         </div>
			      </div>
			      
			      <div class="controls-row">
			         <div class="span6">
			         <p class="muted">You may remain anonymous if you'd like but we encourage you to identify yourself. Anonymous reports, while appreciated, cannot be the basis for an official commendation.
			         </p>
      			      <label class="checkbox">
                        <input name="contactme" type="checkbox" class="contact-checkbox"> Contact me if further details are needed
                     </label>
			         </div>
			      </div>

                   <div class="contact-section-toggle" style="display: none;">
                       <hr class="hr15">
                       
                       <h4>Contact Information</h4>

                       <div class="controls-row">
                         <div class="span2">
                          <label for="">Full Name</label>
                          <input name="name" type="text" placeholder="" class="input-block-level">
                         </div>
                      </div>

                      <div class="controls-row">
                         <div class="span3">
                          <label for="">Email Address</label>
                          <input name="email" type="email" placeholder="" class="input-block-level">
                         </div>
                      </div>

                      <div class="controls-row">
                       <div class="span2">
                          <label for="">Phone Number</label>
                          <input name="phone" type="tel" placeholder="" class="input-block-level">
                       </div>
                      </div>
                  </div>
               
               <div class="row">
                  <div class="span7">
                     <div class="separator"></div>
                  </div>
               </div>
			      
			      <button type="submit" class="btn btn-success">Submit Officer Commendation</button>	      
			   
			   </fieldset>
			</form>
		</div>
		
		<div class="span3">
			<div class="heading"><h3>Sidebar</h3></div>
		</div>
		
	</div>	
	
</div>		