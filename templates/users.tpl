<div class="users">
	<ul class="nav nav-pills">
		<li class=''><a href='{relative_path}/users/online'>[[global:online]]</a></li>
		<li class=''><a href='{relative_path}/users/latest'>[[users:latest_users]]</a></li>
		<li class=''><a href='{relative_path}/users/sort-posts'>[[users:top_posters]]</a></li>
		<li class=''><a href='{relative_path}/users/sort-reputation'>[[users:most_reputation]]</a></li>
		<li class=''><a href='{relative_path}/users/search'>[[users:search]]</a></li>
	</ul>

	<br />

	<div class="search {search_display} well">
		<div class="input-group">
			<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
			<span class="input-group-addon">
				<span id="user-notfound-notify"><i class="fa fa-search"></i></span>
			</span>
		</div>
	</div>

	<ul id="users-container" class="users-container">
		<!-- BEGIN users -->
		<li class="users-box registered-user" data-uid="{users.uid}">
			<a href="{relative_path}/user/{users.userslug}"><img src="{users.picture}" class="img-thumbnail"/></a>
			<br/>
			<div class="user-info">
				<span>
					<i class="fa fa-circle status {users.status}" title="[[global:{users.status}]]"></i>
					<a href="{relative_path}/user/{users.userslug}">{users.username}</a>
				</span>
				<br/>
				<div title="reputation" class="reputation">
					<i class='fa fa-star'></i>
					<span class='formatted-number'>{users.reputation}</span>
				</div>
				<div title="post count" class="post-count">
					<i class='fa fa-pencil'></i>
					<span class='formatted-number'>{users.postcount}</span>
				</div>
			</div>
		</li>
		<!-- END users -->
		<li class="users-box {show_anon} anon-user">
			<img src="https://secure.gravatar.com/avatar/" class="img-thumbnail"/>
			<br/>
			<div class="user-info">
				<span id="online_anon_count">{anonymousUserCount}</span>
				<span>[[global:guests]]</span>
			</div>
		</li>

	</ul>

	<div class="text-center {loadmore_display}">
		<button id="load-more-users-btn" class="btn btn-primary">[[users:load_more]]</button>
	</div>
</div>
