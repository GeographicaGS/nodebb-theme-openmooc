
<!-- IMPORT partials/account_menu.tpl -->

<div class="account">
	<div class="row">
		<div class="col-md-2" style="text-align: center; margin-bottom:20px;">
			<div class="account-picture-block text-center">
				<img id="user-current-picture" class="user-profile-picture img-thumbnail" src="{picture}" /><br /><br />
				<a id="changePictureBtn" href="#" class="btn btn-primary">[[user:change_picture]]</a>
				<br/><br/>
				<!-- IF config.allowAccountDelete -->
				<!-- IF isSelf -->
				<a id="deleteAccountBtn" href="#" class="btn btn-danger">[[user:delete_account]]</a>
				<!-- ENDIF isSelf -->
				<!-- ENDIF config.allowAccountDelete -->
				<!-- IF config.requireEmailConfirmation -->
				<!-- IF email -->
				<!-- IF email:confirmed -->
				<a id="confirm-email" href="#" class="btn btn-warning hide">[[user:confirm_email]]</a>
				<!-- ELSE -->
				<a id="confirm-email" href="#" class="btn btn-warning">[[user:confirm_email]]</a>
				<!-- ENDIF email:confirmed -->
				<!-- ENDIF email -->
				<!-- ENDIF config.requireEmailConfirmation -->
			</div>
		</div>

		<div class="col-md-5">
			<div>
				<form class='form-horizontal'>

					<div class="control-group">
						<label class="control-label" for="inputUsername">[[user:username]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputUsername" placeholder="[[user:username]]" value="{username}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputEmail">[[user:email]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputEmail" placeholder="[[user:email]]" value="{email}">
						</div>

					</div>

					<div class="control-group">
						<label class="control-label" for="inputFullname">[[user:fullname]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputFullname" placeholder="[[user:fullname]]" value="{fullname}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputWebsite">[[user:website]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputWebsite" placeholder="http://..." value="{website}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputLocation">[[user:location]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputLocation" placeholder="[[user:location]]" value="{location}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputBirthday">[[user:birthday]]</label>
						<div class="controls">
							<input class="form-control" id="inputBirthday" value="{birthday}" placeholder="yyyy-mm-dd">
						</div>
					</div>

					<!-- IF !disableSignatures -->
					<div class="control-group">
						<label class="control-label" for="inputSignature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
						<div class="controls">
							<textarea class="form-control" id="inputSignature" rows="5">{signature}</textarea>
						</div>
					</div>
					<!-- ENDIF !disableSignatures -->

					<input type="hidden" id="inputUID" value="{uid}"><br />

					<div class="form-actions">
						<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
					</div>

				</form>
			</div>

			<hr class="visible-xs visible-sm"/>
		</div>

		<div class="col-md-5">
			<div style="vertical-align:top;">
				<form class='form-horizontal'>
					<div class="control-group">
						<label class="control-label" for="inputCurrentPassword">[[user:current_password]]</label>
						<div class="controls">
							<input class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword-->>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputNewPassword">[[user:password]]</label>
						<div class="input-group">
							<input class="form-control" type="password" id="inputNewPassword" placeholder="[[user:password]]" value="">
							<span class="input-group-addon">
								<span id="password-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputNewPasswordAgain">[[user:confirm_password]]</label>
						<div class="input-group">
							<input class="form-control" type="password" id="inputNewPasswordAgain" placeholder="[[user:confirm_password]]" value="">
							<span class="input-group-addon">
								<span id="password-confirm-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
					<br/>
					<div class="form-actions">
						<a id="changePasswordBtn" href="#" class="btn btn-primary">[[user:change_password]]</a>
					</div>

				</form>
			</div>
		</div>
	</div>

	<!-- IMPORT partials/modals/change_picture_modal.tpl -->
	<!-- IMPORT partials/modals/upload_picture_from_url_modal.tpl -->
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-variable="userslug" value="{userslug}" />
<input type="hidden" template-variable="gravatarpicture" value="{gravatarpicture}" />
<input type="hidden" template-variable="uploadedpicture" value="{uploadedpicture}" />

<span class="hidden" id="csrf" data-csrf="{csrf}"></span>