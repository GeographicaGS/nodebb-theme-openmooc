<!-- IMPORT partials/account_menu.tpl -->

<div class="favourites">

	<!-- IF !posts.length -->
		<div class="alert alert-warning">[[topic:favourites.has_no_favourites]]</div>
	<!-- ENDIF !posts.length -->

	<div class="row">
		<div class="col-md-12 user-favourite-posts" data-nextstart="{nextStart}">
			<!-- BEGIN posts -->
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-body">
					<a href="<!-- IMPORT partials/hub_url.tpl -->/user/profile/{post.user.username}">
						<img title="{posts.user.username}" class="img-rounded user-img" src="{posts.user.picture}">
					</a>

					<a href="<!-- IMPORT partials/hub_url.tpl -->/user/profile/{post.user.username}">
						<strong><span>{posts.user.username}</span></strong>
					</a>

					<div class="content">
						{posts.content}
						<p class="fade-out"></p>
					</div>

					<small>
						<span class="pull-right footer">
							[[global:posted_in_ago, <a href="{relative_path}/category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]] &bull;
							<a href="{relative_path}/topic/{posts.topic.slug}/{posts.index}">[[global:read_more]]</a>
						</span>
					</small>
				</div>
			</div>
			<!-- END posts -->
		</div>
	</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />