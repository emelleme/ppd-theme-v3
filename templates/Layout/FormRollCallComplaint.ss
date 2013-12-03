<div class="container">
				
	<div class="row">
	
		<div class="span9">
			<p>Roll Call Complaints provide a means for informing patrol officers of chronic neighborhood problems or conditions that are not of an emergency nature. This initiative is designed to be an effective, proactive response to neighborhood concerns.</p>

         <p>For instance, Roll Call Complaints are frequently used to report groups of disorderly teens that routinely congregate on local street corners. Likewise, this mechanism has been successfully used to inform the police department of special community events so that officers can provide additional security. Basically, any non-emergency problem or condition that the police patrol force should be made aware of can be reported using the Roll Call Complaint protocol.</p>
			
			<form name="form_rollcall" id="form_rollcall" action="http://dev.phillypolice.com/formtools/process.php" method="post">
               <input type="hidden" name="form_tools_form_id" value="3" />
               <input type="text" name="formname" value="RollCallComplaint" style="display: none;" />
			   <fieldset>
			   
			      <h4>Roll Call Complaint</h4>
			      
			      <p>Please include as much information as you can. Incomplete or inaccurate information will delay processing and may compromise our ability to quickly and effectively respond.</p>
               
               <div class="controls controls-row">
                  <div class="span3">
                     <label for="issuetype">Type of Issue<sup>*</sup></label>
                     <select required name="issuetype">
                        <% if Subject %>
                        <option value="$Subject" selected="selected">$Subject</option>
                        <% end_if %>
                        <option value="">Select One...</option>
                        <option value="Abandoned Auto">Abandoned Auto</option>
                        <option value="Drunk/Disordely Crowd">Drunk/Disorderly Crowd</option>
                        <option value="Excessive Noise">Excessive Noise</option>
                        <option value="Nuisance Property">Nuisance Property</option>
                        <option value="Graffiti">Graffiti</option>
                        <option value="Security Check Request">Security Check Request</option>
                        <option value="Vandalism">Vandalism</option>
                        <option value="Other">Other (Describe Below)</option>
                     </select>
                  </div>
			      
			         <div class="span3">
			            <label for="datetime">Time &amp; Date or Ongoing<sup>*</sup></label>
                        <input name="datetime" type="text" placeholder="" class="input-block-level" required>
			         </div>
               </div>
			      
			      <div class="controls controls-row">
                  <div class="span3">
                     <label for="district">Police District<sup>*</sup></label>
                     <select name="district" required>
                        <option value="hello@hyalinecreative.com">Select Your District...</option>
                        <option value="police.co_01@phila.gov">1st District</option>
                        <option value="police.co_02@phila.gov">2nd District</option>
                        <option value="police.co_03@phila.gov">3rd District</option>
                        <option value="police.co_05@phila.gov">5th District</option>
                        <option value="police.co_06@phila.gov">6th District</option>
                        <option value="police.co_07@phila.gov">7th District</option>
                        <option value="police.co_08@phila.gov">8th District</option>
                        <option value="police.co_09@phila.gov">9th District</option>
                        <option value="police.co_12@phila.gov">12th District</option>
                        <option value="police.co_14@phila.gov">14th District</option>
                        <option value="police.co_15@phila.gov">15th District</option>
                        <option value="police.co_16@phila.gov">16th District</option>
                        <option value="police.co_17@phila.gov">17th District</option>
                        <option value="police.co_18@phila.gov">18th District</option>
                        <option value="police.co_19@phila.gov">19th District</option>
                        <option value="police.co_22@phila.gov">22nd District</option>
                        <option value="police.co_24@phila.gov">24th District</option>
                        <option value="police.co_25@phila.gov">25th District</option>
                        <option value="police.co_26@phila.gov">26th District</option>
                        <option value="police.co_35@phila.gov">35th District</option>
                        <option value="police.co_39@phila.gov">39th District</option>
                        <option value="hello@hyalinecreative.com">- - - - - -</option>
                        <option value="hello@hyalinecreative.com">I'm Not Sure</option>
                     </select>
                     <p style="margin-top: -6px;"><a href="/districts" target="_blank"><em>Not sure which police district you live in?</em></a></p>
                  </div>
               </div>
               
			      <div class="controls-row">
			         <div class="span6">
                         <label for="complaint">Details of Complaint<sup>*</sup></label>
                         <p class="muted">Describe the nature of the issue in as much detail as possible.</p>
                         <textarea name="complaint" rows="5" class="input-block-level" required></textarea>
			         </div>
			      </div>
			      
			      <div class="controls-row">
			         <div class="span6">
			            <p class="muted">Please note that you may remain anonymous, however, if you choose to do so we will be hampered in our ability to elicit additional information from you that might aid us in attaining a long-term solution to this problem. Consequently, your anonymity may compromise the efficacy of our efforts to resolve the problem in a satisfactory manner.</p>

                     <p class="muted">If you elect to provide us with your identity, we will treat it as confidential information and will not disclose it outside this agency except as required and permitted by law.</p>
                     
                     <hr class="hr15">
                     
                     <label for="contactme" class="checkbox">
                        <input name="contactme" type="checkbox" class="contact-checkbox"> Contact me if further details are needed
                     </label>
			         </div>
			      </div>
			      
                   <div class="contact-section-toggle" style="display: none;">
                                  
                     <hr class="hr15">
                     
                      <h4>Contact Information</h4>

                      <div class="controls-row">
                         <div class="span2">
                          <label for="name">Full Name</label>
                          <input name="name" type="text" placeholder="" class="input-block-level">
                         </div>
                      </div>

                      <div class="controls-row">
                         <div class="span3">
                          <label for="email">Email Address</label>
                          <input name="email" type="email" placeholder="" class="input-block-level">
                         </div>
                       <div class="span2">
                          <label for="phone">Phone Number</label>
                          <input name="phone" type="tel" placeholder="" class="input-block-level">
                       </div>
                      </div>
                   </div>
               
               <div class="row">
                  <div class="span8">
                     <div class="separator"></div>
                  </div>
               </div>
			      
			      <button type="submit" class="btn btn-success">Submit Roll Call Complaint Form</button>	      
			   
			   </fieldset>
			</form>
		</div>
		
		<div class="span3">
			<div class="heading"><h3>Process</h3></div>
			<p>Once we receive the report, it is posted on a complaint board that is routinely read to officers during six daily roll calls. These announcements continue for a minimum of fifteen calendar days. The information reported in the complaint is recorded by the individual officers in their patrol notebooks and are responded to by patrol officers between calls for service.</p>

         <p>Following the initial fifteen day announcement and response period, the complainant may be contacted and a follow-up review initiated. If, following this review, the complaint has been definitively resolved, the case is considered closed. If, however, the problem or condition still requires police attention, the complaint will be reinstituted for an additional fifteen days and may be the subject of additional, specifically tailored problem-solving measures aimed at satisfying the need for final resolution of the problem.</p>
		</div>
		
	</div>	
	
</div>		