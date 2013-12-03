<div class="container">
				
	<div class="row">
	
		<div class="span9">
		
		   <p>Operation I.D. is a property identification program developed to aid in the prevention of crime and identification of personal property in the event that it is lost or stolen (e.g. cell phones, computers televisions, GPS, DVD headrests, car stereos, etc.).</p>

			<form name="form_operationid" id="form_operationid" action="http://dev.phillypolice.com/formtools/process.php" method="post">
               <input type="hidden" name="form_tools_form_id" value="6" />
               <input type="text" name="formname" value="OperationID" style="display: none;" />
			   <fieldset>
			   
			      <h4>Operation ID Property Identification Program</h4>
			      
			      <div class="controls-row">
			         <div class="span2">
      			      <label for="">First Name<sup>*</sup></label>
      			      <input name="firstname" type="text" placeholder="" class="input-block-level">
			         </div>
			         <div class="span3">
      			      <label for="">Last Name<sup>*</sup></label>
      			      <input name="lastname" type="text" placeholder="" class="input-block-level">
			         </div>
			      </div>
			      
			      <div class="controls-row">
			         <div class="span3">
      			      <label for="">Street Address<sup>*</sup></label>
      			      <input name="street" type="text" placeholder="" class="input-block-level">
			         </div>
			      </div>
			      
			      <div class="controls-row">
			         <div class="span2">
      			      <label for="">City<sup>*</sup></label>
      			      <input name="city" type="text" placeholder="" value="Philadelphia" class="input-block-level">
			         </div>
			         <div class="span2">
      			      <label for="">State<sup>*</sup></label>
      			      <select name="state" class="input-block-level">
                     	<option value="PA" selected>Pennsylvania</option>
                     	<option value="NJ">New Jersey</option>
                     	<option value="DE">Delaware</option>
                     	<option value=""> </option>
                     	<option value="">- - -</option>
                     	<option value=""> </option>
                     	<option value="AL">Alabama</option>
                     	<option value="AK">Alaska</option>
                     	<option value="AZ">Arizona</option>
                     	<option value="AR">Arkansas</option>
                     	<option value="CA">California</option>
                     	<option value="CO">Colorado</option>
                     	<option value="CT">Connecticut</option>
                     	<option value="DC">District of Columbia</option>
                     	<option value="FL">Florida</option>
                     	<option value="GA">Georgia</option>
                     	<option value="HI">Hawaii</option>
                     	<option value="ID">Idaho</option>
                     	<option value="IL">Illinois</option>
                     	<option value="IN">Indiana</option>
                     	<option value="IA">Iowa</option>
                     	<option value="KS">Kansas</option>
                     	<option value="KY">Kentucky</option>
                     	<option value="LA">Louisiana</option>
                     	<option value="ME">Maine</option>
                     	<option value="MD">Maryland</option>
                     	<option value="MA">Massachusetts</option>
                     	<option value="MI">Michigan</option>
                     	<option value="MN">Minnesota</option>
                     	<option value="MS">Mississippi</option>
                     	<option value="MO">Missouri</option>
                     	<option value="MT">Montana</option>
                     	<option value="NE">Nebraska</option>
                     	<option value="NV">Nevada</option>
                     	<option value="NH">New Hampshire</option>
                     	<option value="NM">New Mexico</option>
                     	<option value="NY">New York</option>
                     	<option value="NC">North Carolina</option>
                     	<option value="ND">North Dakota</option>
                     	<option value="OH">Ohio</option>
                     	<option value="OK">Oklahoma</option>
                     	<option value="OR">Oregon</option>
                     	<option value="RI">Rhode Island</option>
                     	<option value="SC">South Carolina</option>
                     	<option value="SD">South Dakota</option>
                     	<option value="TN">Tennessee</option>
                     	<option value="TX">Texas</option>
                     	<option value="UT">Utah</option>
                     	<option value="VT">Vermont</option>
                     	<option value="VA">Virginia</option>
                     	<option value="WA">Washington</option>
                     	<option value="WV">West Virginia</option>
                     	<option value="WI">Wisconsin</option>
                     	<option value="WY">Wyoming</option>
                     </select>
			         </div>
			         <div class="span1">
      			      <label for="">Zip Code<sup>*</sup></label>
      			      <input name="zipcode" type="text" placeholder="" class="input-block-level">
			         </div>
			      </div>
			         
			      <div class="controls-row">
      			   <div class="span2">  
      			      <label for="">Home Phone</label>
      			      <input name="homephone" type="tel" placeholder="" class="input-block-level">
      			   </div>
      			   <div class="span2">  
      			      <label for="">Mobile Phone</label>
      			      <input name="mobilephone" type="tel" placeholder="" class="input-block-level">
      			   </div>
			      </div>
			      
			      			      
			      <div class="controls-row">
			         <div class="span3">
      			      <label for="">Email Address<sup>*</sup></label>
      			      <input name="email" type="email" placeholder="" class="input-block-level">
			         </div>
			      </div>

               <hr class="hr30">

               <h4>Identification Labels</h4>
               
               <div class="controls-row">
      			   <div class="span4">  
      			      <label>What identifying information would you like on your labels?<sup>*</sup></label>
                     	<label class="radio"><input id="drivers-license-option" type="radio" name="idtype" value="Driver's License Number"> Driver's License/ID Card Number <em>(PREFERRED)</em></label>
                     	<label class="radio"><input id="email-phone-option" type="radio" name="idtype" value="Email and Phone"> Email Address and Phone Number</label>
      			   </div>
			      </div>

                  <div id="drivers-license-identification" style="display: none;">
                      <h5>Driver's License/ID Card Number</h5>

                      <div class="controls-row">
                         <div class="span2">
                          <label for="">State</label>
                          <select name="license_state" class="input-block-level">
                            <option value="PA" selected>Pennsylvania</option>
                            <option value="NJ">New Jersey</option>
                            <option value="DE">Delaware</option>
                            <option value=""> </option>
                            <option value="">- - -</option>
                            <option value=""> </option>
                            <option value="AL">Alabama</option>
                            <option value="AK">Alaska</option>
                            <option value="AZ">Arizona</option>
                            <option value="AR">Arkansas</option>
                            <option value="CA">California</option>
                            <option value="CO">Colorado</option>
                            <option value="CT">Connecticut</option>
                            <option value="DC">District of Columbia</option>
                            <option value="FL">Florida</option>
                            <option value="GA">Georgia</option>
                            <option value="HI">Hawaii</option>
                            <option value="ID">Idaho</option>
                            <option value="IL">Illinois</option>
                            <option value="IN">Indiana</option>
                            <option value="IA">Iowa</option>
                            <option value="KS">Kansas</option>
                            <option value="KY">Kentucky</option>
                            <option value="LA">Louisiana</option>
                            <option value="ME">Maine</option>
                            <option value="MD">Maryland</option>
                            <option value="MA">Massachusetts</option>
                            <option value="MI">Michigan</option>
                            <option value="MN">Minnesota</option>
                            <option value="MS">Mississippi</option>
                            <option value="MO">Missouri</option>
                            <option value="MT">Montana</option>
                            <option value="NE">Nebraska</option>
                            <option value="NV">Nevada</option>
                            <option value="NH">New Hampshire</option>
                            <option value="NM">New Mexico</option>
                            <option value="NY">New York</option>
                            <option value="NC">North Carolina</option>
                            <option value="ND">North Dakota</option>
                            <option value="OH">Ohio</option>
                            <option value="OK">Oklahoma</option>
                            <option value="OR">Oregon</option>
                            <option value="RI">Rhode Island</option>
                            <option value="SC">South Carolina</option>
                            <option value="SD">South Dakota</option>
                            <option value="TN">Tennessee</option>
                            <option value="TX">Texas</option>
                            <option value="UT">Utah</option>
                            <option value="VT">Vermont</option>
                            <option value="VA">Virginia</option>
                            <option value="WA">Washington</option>
                            <option value="WV">West Virginia</option>
                            <option value="WI">Wisconsin</option>
                            <option value="WY">Wyoming</option>
                         </select>
                         </div>
                         <div class="span2">
                          <label for="">Driver's License/ID Number<sup>*</sup></label>
                          <input name="license_number" type="text" placeholder="" class="input-block-level">
                         </div>
                      </div>
			      </div>

                  <div id="email-phone-identification" style="display: none;">
                      <h5>Email Address and Phone Number</h5>

                      <div class="controls-row">
                       <div class="span4">
                          <label>Which phone number would you prefer that we use?<sup>*</sup></label>
                            <label class="radio"><input type="radio" name="phone_choice" value="Home Phone"> Home Phone</label>
                            <label class="radio"><input type="radio" name="phone_choice" value="Mobile Phone"> Mobile Phone</option>
                       </div>
                      </div>
                  </div>
			      
			      <div class="row">
                  <div class="span8">
                     <div class="separator"></div>
                  </div>
               </div>
			      
			      <button type="submit" class="btn btn-success">Submit Operation ID Registration Form</button>	      
			   
			   </fieldset>
			</form>
		</div>
		
		<div class="span3">
			<div class="heading"><h3>Sidebar</h3></div>
		</div>
		
	</div>	
	
</div>		