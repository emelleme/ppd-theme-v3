<div class="container">
				
	<div class="row">
	
		<div class="span9">
		
		   <p style="color: red;"><strong>Description about process involved with B.O.N.D. Program.</strong> Quisque risus erat, commodo eget sagittis eget, congue ac velit. Cras pharetra tincidunt elementum. Vivamus malesuada elit in metus eleifend et fermentum arcu malesuada. In hac habitasse platea dictumst. Quisque ullamcorper iaculis metus ac ultricies. Aenean ultrices pulvinar congue. Cras faucibus dui sit amet dolor fringilla condimentum quis et lectus. Phasellus et consectetur felis. Ut id velit in massa vehicula vehicula commodo nec justo. Aenean ac arcu nec magna viverra rhoncus.</p>

			<form name="form_bond" id="form_bond" action="http://dev.phillypolice.com/formtools/process.php" method="post">
               <input type="hidden" name="form_tools_form_id" value="7" />
               <input type="text" name="formname" value="BOND" style="display: none;" />
			   <fieldset>
			   
			      <h4>BOND Program Registration</h4>
               
               <div class="controls-row">
			         <div class="span3">
      			      <label for="">Business Name<sup>*</sup></label>
      			      <input name="business_name" type="text" placeholder="" class="input-block-level" required>
			         </div>
			         <div class="span2">
      			      <label for="">Type of Business<sup>*</sup></label>
      			      <input name="business_type" type="text" placeholder="" class="input-block-level" required>
			         </div>
               </div>
               
               <div class="controls controls-row">
                  <div class="span4">
                     <label for="">Street Address<sup>*</sup></label>
                     <input name="street" type="text" placeholder="" class="input-block-level" required>
                     <p class="muted">Address will be verified</p>
                  </div>
               </div>
			      
               <div class="controls-row">
			         <div class="span3">
      			      <label for="">Email Address<sup>*</sup></label>
      			      <input name="email" type="email" placeholder="" class="input-block-level">
			         </div>
      			   <div class="span2">  
      			      <label for="">Phone Number<sup>*</sup></label>
      			      <input name="phone" type="tel" placeholder="(XXX) XXX - XXXX" class="input-block-level">
      			   </div>
			      </div>
               
               
               
			      <hr class="hr30">
			      
			      
			      
			      <h4>Contacts</h4>
			      
			      <div class="controls-row">
			         <div class="span4">
      			      <label for="">How many contacts would you like to register?</label>
      			      <select name="num_contacts" class="input-small" id="num-contacts-for-bond">
      			         <option value="1" selected>1</option>
      			         <option value="2">2</option>
      			         <option value="3">3</option>
      			      </select>
			         </div>
			      </div>
			      <div id="contact-blocks">

                      <div class="contact-block">
                          <h5>Contact 1</h5>

                          <div class="controls-row">
                             <div class="span2">
                              <label for="">Full Name<sup>*</sup></label>
                              <input name="contact1_name" type="text" placeholder="" class="input-block-level">
                             </div>
                             <div class="span2">
                              <label for="">Phone Number<sup>*</sup></label>
                              <input name="contact1_phone" type="tel" placeholder="Mobile Preferred" class="input-block-level">
                           </div>
                          </div>

                          <div class="controls-row">
                             <div class="span4">
                              <label for="">Address<sup>*</sup></label>
                              <input name="contact1_address" type="text" placeholder="Street Address, City, State Zip" class="input-block-level">
                             </div>
                          </div>
                      </div>


                      <div class="contact-block" style="display: none;">
                          <h5>Contact 2</h5>

                          <div class="controls-row">
                             <div class="span2">
                              <label for="">Full Name</label>
                              <input name="contact2_name" type="text" placeholder="" class="input-block-level">
                             </div>
                             <div class="span2">
                              <label for="">Phone Number</label>
                              <input name="contact2_phone" type="tel" placeholder="Mobile Preferred" class="input-block-level">
                           </div>
                          </div>

                          <div class="controls-row">
                             <div class="span4">
                              <label for="">Address</label>
                              <input name="contact2_address" type="text" placeholder="Street Address, City, State Zip" class="input-block-level">
                             </div>
                          </div>
                      </div>

                      <div class="contact-block" style="display: none;">
                          <h5>Contact 3</h5>

                          <div class="controls-row">
                             <div class="span2">
                              <label for="">Full Name</label>
                              <input name="contact3_name" type="text" placeholder="" class="input-block-level">
                             </div>
                             <div class="span2">
                              <label for="">Phone Number</label>
                              <input name="contact3_phone" type="tel" placeholder="Mobile Preferred" class="input-block-level">
                           </div>
                          </div>

                          <div class="controls-row">
                             <div class="span4">
                              <label for="">Address</label>
                              <input name="contact3_address" type="text" placeholder="Street Address, City, State Zip" class="input-block-level">
                             </div>
                          </div>
                      </div>

                  </div>
			      
			      <hr class="hr30">

			      <h4>Alarm Details</h4>
			      
			      <div class="controls-row" id="alarm-option">
      			   <div class="span4">  
      			      <label>Does your business have an alarm?<sup>*</sup></label>
                     	<label class="radio"><input type="radio" name="has_alarm" value="yes"> Yes</label>
                     	<label class="radio"><input type="radio" name="has_alarm" value="no"> No</label>
      			   </div>
			      </div>

                  <div id="alarm-details" style="display: none;">
                      <div class="controls-row">
                       <div class="span3">
                          <label for="">Name of Alarm Company<sup>*</sup></label>
                          <input name="alarm_company_name" type="text" placeholder="" class="input-block-level">
                       </div>
                       <div class="span2">
                          <label for="">Alarm Co. Phone Number<sup>*</sup></label>
                          <input name="alarm_company_phone" type="text" placeholder="" class="input-block-level">
                       </div>
                      </div>
                  </div>
			      
			      
               <hr class="hr30">
               
               
               <h4>Signature</h4>
			      
			      <div class="row">
			         <div class="span7">
                     <p>By participating in the BOND Program, you are letting the Police know that your business is registered and if anything happens at your establishment (such as a burglar alarm of vandalism to the property) your above listed contact person can be notified.</p>
			         </div>
			      </div>
			      
			      <div class="controls-row">
      			   <div class="span3">  
      			      <label for="">Signed<sup>*</sup></label>
      			      <input name="sign_name" type="text" placeholder="Type your full name" class="input-block-level">
      			   </div>
      			   <div class="span2">  
      			      <label for="">Date<sup>*</sup></label>
      			      <input name="sign_date" type="text" placeholder="" class="input-block-level" id="current-date">
      			   </div>
			      </div>
               
               <div class="row">
                  <div class="span7">
                     <div class="separator"></div>
                  </div>
               </div>
			      
			      <button type="submit" class="btn btn-success">Submit BOND Registration Form</button>	      
			   
			   </fieldset>
			</form>
		</div>
		
		<div class="span3">
			<div class="heading"><h3>Sidebar</h3></div>
		</div>
		
	</div>	
	
</div>		