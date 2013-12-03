<div class="container">
				
	<div class="row">
	
		<div class="span9">
		
		   <p>S.A.V.E. (Stolen Auto Verification Effort) is an effort in which citizens register their vehicles with the police department for the application of a special decal to their car window. Enrollment in the program permits officers to stop their vehicles and conduct an ownership investigation when the vehicle is being operated on the streets of Philadelphia between the hours of 12:00 AM and 6:00 AM, seven days a week.</p>

			<form name="from_save" id="from_save" action="http://dev.phillypolice.com/formtools/process.php" method="post">
               <input type="hidden" name="form_tools_form_id" value="8" />
               <input type="text" name="formname" value="SAVE" style="display: none;" />

			   <fieldset>
			   
			      <h4>Project S.A.V.E. Registration</h4>
               
               <div class="controls-row">
			         <div class="span2">
      			      <label for="">First Name<sup>*</sup></label>
      			      <input name="first_name" type="text" placeholder="" class="input-block-level">
			         </div>
			         <div class="span3">
      			      <label for="">Last Name<sup>*</sup></label>
      			      <input name="last_name" type="text" placeholder="" class="input-block-level">
			         </div>
			      </div>
               
               <div class="controls controls-row">
                  <div class="span4">
                     <label for="">Street Address<sup>*</sup></label>
                     <input name="street" type="text" placeholder="" class="input-block-level" required>
                  </div>
               </div>
			      
               <div class="controls-row">
			         <div class="span2">
      			      <label for="">Email Address<sup>*</sup></label>
      			      <input name="email" type="email" placeholder="" class="input-block-level">
			         </div>
      			   <div class="span2">  
      			      <label for="">Phone Number<sup>*</sup></label>
      			      <input name="phone" type="tel" placeholder="(XXX) XXX - XXXX" class="input-block-level">
      			   </div>
			      </div>
               
               
               
			      <hr class="hr30">
			      
			      
			      
			      <h4>Vehicle Information</h4>
			      
			      <p>I am the registered owner of the following vehicle:</p>

			      <div class="controls-row">
			         <div class="span1">
      			      <label for="">Year<sup>*</sup></label>
      			      <input name="vehicle_yyyy" type="text" placeholder="YYYY" class="input-block-level">
			         </div>
                  <div class="span2">
      			      <label for="">Make<sup>*</sup></label>
      			      <input name="vehicle_make" type="text" placeholder="e.g. - Ford" class="input-block-level">
			         </div>
			         <div class="span2">
      			      <label for="">Model<sup>*</sup></label>
      			      <input name="vehicle_model" type="text" placeholder="e.g. - Fusion" class="input-block-level">
			         </div>
			         <div class="span2">
      			      <label for="">Color<sup>*</sup></label>
      			      <input name="vehicle_color" type="text" placeholder="" class="input-block-level">
			         </div>
			      </div>
			      
			      <div class="controls-row">
			         <div class="span2">
      			      <label for="">State<sup>*</sup></label>
      			      <select name="vehicle_state" class="input-block-level">
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
      			      <label for="">License Plate<sup>*</sup></label>
      			      <input name="vehicle_plate" type="text" placeholder="" class="input-block-level">
			         </div>
			         <div class="span3">
      			      <label for="">Vehicle Identification Number (VIN)<sup>*</sup></label>
      			      <input name="vehicle_vin" type="text" placeholder="" class="input-block-level">
			         </div>
			      </div>
			      
			      
			      
			      <hr class="hr30">
			      
			      
			      
			      <h4>Authorized Drivers</h4>
			      
			      <div class="controls-row">
      			   <div class="span3">  
      			      <label for="">Authorized Driver 1 - Full Name<sup>*</sup></label>
      			      <input name="auth_driver1_name" type="text" placeholder="" class="input-block-level">
      			   </div>
      			   <div class="span3">  
      			      <label for="">Authorized Driver 2 - Full Name</label>
      			      <input name="auth_driver2_name" type="text" placeholder="" class="input-block-level">
      			   </div>
			      </div>
			      
			      
			      <hr class="hr30">
			      
			      
			      <h4>Waiver Details</h4>
			      
			      <div class="row">
			         <div class="span7">
                     <p>I voluntarily participate in PROJECT S.A.V.E., a program being conducted by the Philadelphia Police Department to decrease the rate of auto theft.</p>
                     
                     <p>Decals will be placed on the vehicle described above the right and left rear side windows, and on the rear bumper. This program has been explained to me, and I have received information from the Police Department about this project and understand how Project S.A.V.E. operates. By participating in this program I am stating to the Philadelphia Police Department that my vehicle is not usually operated between the hours of 12:00 AM and 6:00 AM.</p>
                     
                     <p>If the police should observe a person operating my vehicle between the hours of 12:00 AM and 6:00 AM, they will reasonable suspect the person operating the vehicle is doing so without my permission. Under these conditions, I want the police to make an Investigation Stop of the vehicle to check for ownership.</p>
                     
                     <p>I also realize that the persons operating my vehicle during the stated hours <em>with my permission</em> are subject to being stopped by the police for investigation. It is my responsibility to warn these individuals prior to giving them my vehicle, "That the police may stop the vehicle." In these instances, police action will include the necessary precautions taken to protect officers when approaching a potential stolen vehicle with occupants.</p>
                     
                     <p>In the event an unauthorized user is operating the vehicle during the S.A.V.E. hours, the Philadelphia Police Department will secure your vehicle and make every attempt to notify the authorized owner of the vehicle.</p>
                     
                     <p>I also understand that I must remove the decals if I withdraw from the program, or prior to the sale or transfer of the vehicle. I will also notify my police district of any changes. Further, I will notify my police district of any change of address or phone number while a participant in this program.</p>
                     
                     <p>I understand the advantages and disadvantages of volunteering to participate in the S.A.V.E. program.</p>
			      
			      
               <hr class="hr30">
               
               
               <h4>Signature</h4>
			      
			      <div class="row">
			         <div class="span7">
                     <p>I hereby consent and agree to the above procedures, and I have fully read and understand all of the information in this waiver and agree to abide by the procedures contained therein.</p>
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
			      
			      <button type="submit" class="btn btn-success">Submit S.A.V.E. Registration Form</button>	      
			   
			   </fieldset>
			</form>
		</div>
		
		

		<div class="span3">
			<div class="heading"><h3>Sidebar</h3></div>
		</div>
		
	</div>	
	
</div>		