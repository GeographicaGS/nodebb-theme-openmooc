<input type="hidden" template-variable="topic_id" value="{tid}" />
<input type="hidden" template-variable="topic_slug" value="{slug}" />
<input type="hidden" template-variable="category_id" value="{category.cid}" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="pageCount" value="{pageCount}" />
<input type="hidden" template-variable="locked" template-type="boolean" value="{locked}" />
<input type="hidden" template-variable="deleted" template-type="boolean" value="{deleted}" />
<input type="hidden" template-variable="pinned" template-type="boolean" value="{pinned}" />
<input type="hidden" template-variable="topic_name" value="{title}" />
<input type="hidden" template-variable="postcount" value="{postcount}" />
<input type="hidden" template-variable="viewcount" value="{viewcount}" />

<div class="topic">
	<ol class="breadcrumb">
		<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<a href="{relative_path}/category/{category.slug}" itemprop="url"><span itemprop="title">{category.name}</span></a>
		</li>
		<li class="active" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<span itemprop="title">{title} <!-- IF !feeds:disableRSS --><a target="_blank" href="{relative_path}/topic/{tid}.rss"> <i class="fa fa-rss-square"></i></a><!-- ENDIF !feeds:disableRSS --></span>
		</li>
		<div class="loading-indicator pull-right" done="0" style="display:none;">
			<i class="fa fa-refresh fa-spin"></i>
		</div>
	</ol>

	<ul id="post-container" class="posts dash-box" data-tid="{tid}">
		<div class="title">
			<h3 id="topic_title_{posts.pid}" class="main-post topic-title" itemprop="name">{title}</h3>
			<div class="header category-tools">
				<span class="pull-right">
					<!-- IMPORT partials/thread_sort.tpl -->
					<!-- IMPORT partials/thread_tools.tpl -->
				</span>
			</div>
		</div>
		<!-- BEGIN posts -->
			<li class="post-row<!-- IF posts.deleted --> deleted<!-- ENDIF posts.deleted -->" data-pid="{posts.pid}" data-uid="{posts.uid}" data-username="{posts.user.username}" data-userslug="{posts.user.userslug}" data-index="{posts.index}" data-timestamp="{posts.timestamp}" data-votes="{posts.votes}" data-replyto="{posts.toPid}" itemscope itemtype="http://schema.org/Comment">
				<a id="post_anchor_{posts.index}" name="{posts.index}"></a>

				<!--<meta itemprop="datePublished" content="{posts.relativeTime}">
				<meta itemprop="dateModified" content="{posts.relativeEditTime}">-->

				<div class="panel panel-default post-block topic-item">

					<a class="main-post avatar" href="<!-- IMPORT partials/hub_url.tpl -->/user/profile/{posts.user.username}">
						<img itemprop="image" src="{posts.user.picture}" align="left" class="img-thumbnail" />
						<!-- IF posts.user.banned -->
						<span class="label label-danger">[[topic:banned]]</span>
						<!-- ENDIF posts.user.banned -->
					</a>

					<div id="content_{posts.pid}" class="post-content" itemprop="text">
						<h4>{posts.user.username}</h4>
						{posts.content}
					</div>
					<!-- IF posts.user.signature -->
					<div class="post-signature">{posts.user.signature}</div>
					<!-- ENDIF posts.user.signature -->

					<div class="topic-buttons">
						<!-- IF privileges.topics:reply -->
						<div class="btn-group">
							<button class="btn post_reply" type="button">
								<object type="image/svg+xml" data="/plugins/nodebb-theme-openmooc/img/ECO_icon_responder.svg"></object>
								[[topic:reply]]
							</button>
						</div>
						<!-- ENDIF privileges.topics:reply -->

						<!-- IF !reputation:disabled -->
						<div class="btn-group">
							<!-- IF posts.upvoted -->
							<object type="image/svg+xml" data="/plugins/nodebb-theme-openmooc/img/ECO_icon_karma_up.svg"></object>
							<!-- ELSE -->
							<!-- IF posts.downvoted -->
							<object type="image/svg+xml" data="/plugins/nodebb-theme-openmooc/img/ECO_icon_karma_down.svg"></object>
							<!-- ELSE -->
							<object type="image/svg+xml" data="/images/themes/ECO_icon_karma.svg"></object>
							<!-- ENDIF posts.downvoted -->
							<!-- ENDIF posts.upvoted -->
							<span class="votes" data-votes="{posts.votes}">{posts.votes}</span>
							<button class="upvote btn no-hover">
								<i class="fa fa-chevron-up"></i>
							</button>
							<!-- IF !downvote:disabled -->
							<button class="downvote btn no-hover">
								<i class="fa fa-chevron-down"></i>
							</button>
							<!-- ENDIF !downvote:disabled -->
						</div>
						<!-- ENDIF !reputation:disabled -->

						<div class="btn-group no-hover">
							<!-- IF !posts.selfPost -->
							<button class="btn chat">
								<object type="image/svg+xml" data="/plugins/nodebb-theme-openmooc/img/ECO_icon_chat.svg"></object>
								Chat
							</button>
							<!-- ENDIF !posts.selfPost -->
						</div>

						<!-- IF privileges.topics:reply -->
						<div class="btn-group no-hover">
							<button class="btn quote" type="button">
								<object type="image/svg+xml" data="/plugins/nodebb-theme-openmooc/img/ECO_icon_citar.svg"></object>
								[[topic:quote]]
							</button>
						</div>
						<!-- ENDIF privileges.topics:reply -->

						<!-- IF !posts.selfPost -->
						<div class="btn-group no-hover">
							<button class="btn flag" type="button" title="[[topic:flag_title]]">
								<object type="image/svg+xml" data="/plugins/nodebb-theme-openmooc/img/ECO_icon_moderar.svg"></object>
								[[topic:flag]]
							</button>
						</div>
						<!-- ENDIF !posts.selfPost -->

						<div class="pull-right no-hover">
							<!-- IF posts.display_moderator_tools -->
							<div class="btn-group post-tools">
								<div class="dropdown">
									<button title="[[topic:tools]]" class="btn" data-toggle="dropdown" href="#"><i class="fa fa-gear"></i></button>
									<ul class="dropdown-menu text-center pull-right" role="menu" aria-labelledby="dLabel">
										<button class="btn btn-sm btn-default edit" type="button" title="[[topic:edit]]"><i class="fa fa-pencil"></i></button>
										<button class="btn btn-sm btn-default delete" type="button" title="[[topic:delete]]"><i class="fa fa-trash-o"></i></button>
										<button class="btn btn-sm btn-default purge <!-- IF !posts.deleted -->none<!-- ENDIF !posts.deleted -->" type="button" title="[[topic:purge]]"><i class="fa fa-eraser"></i></button>

										<!-- IF posts.display_move_tools -->
										<button class="btn btn-sm btn-default move" type="button" title="[[topic:move]]"><i class="fa fa-arrows"></i></button>
										<!-- ENDIF posts.display_move_tools -->
									</ul>
								</div>
							</div>
							<!-- ENDIF posts.display_moderator_tools -->
						</div>
					</div>
				</div>
				<div style="clear:both;"></div>
			</li>
		<!-- END posts -->
	</ul>

	<div class="well post-bar bottom-post-bar hide">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IF config.usePagination -->
	<div class="text-center">
		<ul class="pagination">
			<li class="previous pull-left"><a href="#"><i class="fa fa-chevron-left"></i> [[global:previouspage]]</a></li>
			<li class="next pull-right"><a href="#">[[global:nextpage]] <i class="fa fa-chevron-right"></i></a></li>
		</ul>
	</div>
	<!-- ENDIF config.usePagination -->

	<!-- IMPORT partials/move_thread_modal.tpl -->
	<!-- IMPORT partials/fork_thread_modal.tpl -->
	<!-- IMPORT partials/move_post_modal.tpl -->
	<span class="hidden" id="csrf" data-csrf="{csrf}"></span>
</div>

<div widget-area="footer" class="col-xs-12"></div>

<!-- IMPORT partials/noscript/paginator.tpl -->