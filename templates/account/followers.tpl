
<!-- IMPORT partials/account_menu.tpl -->

<div class="users account">
	<div>
		<!-- BEGIN followers -->
		<div class="users-box">
			<a href="{relative_path}/user/{followers.userslug}"><img src="{followers.picture}" class="img-thumbnail"/></a>
			<br/>
			<div class="user-info">
				<a href="{relative_path}/user/{followers.userslug}">{followers.username}</a>
				<br/>
				<div title="reputation" class="reputation">
					<i class='fa fa-star'></i>
					<span class='formatted-number'>{followers.reputation}</span>
				</div>
				<div title="post count" class="post-count">
					<i class='fa fa-pencil'></i>
					<span class='formatted-number'>{followers.postcount}</span>
				</div>
			</div>
		</div>
		<!-- END followers -->
	</div>
	<div id="no-followers-notice" class="alert alert-warning hide">[[user:has_no_follower]]</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-variable="followersCount" value="{followersCount}" />
