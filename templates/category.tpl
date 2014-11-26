
<input type="hidden" template-variable="category_id" value="{cid}" />
<input type="hidden" template-variable="category_name" value="{name}" />
<input type="hidden" template-variable="topic_count" value="{topic_count}" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="pageCount" value="{pageCount}" />

<ol class="breadcrumb">
	<!-- IF parent -->
	<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="{relative_path}/category/{parent.slug}" itemprop="url"><span itemprop="title">{parent.name}</span></a>
	</li>
	<!-- ENDIF parent -->
	<li class="active" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<span itemprop="title">{name} <!-- IF !feeds:disableRSS --><a target="_blank" href="{relative_path}/category/{cid}.rss"> <i class="fa fa-rss-square"></i></a><!-- ENDIF !feeds:disableRSS --></span>
	</li>
</ol>

<div class="subcategories">
	<!-- BEGIN children -->
	<!-- IMPORT partials/category_child.tpl -->
	<!-- END children -->
</div>

<div class="category row">
	<div class="col-lg-16 col-md-12 col-sm-8 col-mob-4 {topic_row_size}" no-widget-class="col-lg-16 col-md-12 col-sm-8 col-mob-4" no-widget-target="sidebar">
		<div class="dash-box">
			<div class="title">
				<h3 class="pull-left">{name}</h3>
				<div class="header category-tools">
					<span class="pull-right">
						<!-- IF privileges.topics:create -->
						<button id="new_post" class="btn squared">[[category:new_topic_button]]</button>
						<!-- ENDIF privileges.topics:create -->
						<button type="button" class="btn watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored -->"><i class="fa fa-eye"></i> [[topic:watch]]</button>
						<button type="button" class="btn ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored -->"><i class="fa fa-eye-slash"></i> [[category:ignore]]</button>
						<!-- IMPORT partials/category_tools.tpl -->

						<div class="dropdown share-dropdown inline-block">
							<button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
								[[topic:share]] <span class="caret"></span>
							</button>

							<!-- IMPORT partials/share_dropdown.tpl -->
						</div>
					</span>

				</div>
			</div>
			<div class="content feed">
				<!-- IF !topics.length -->
				<div class="alert alert-warning" id="category-no-topics">
					[[category:no_topics]]
				</div>
				<!-- ENDIF !topics.length -->

				<ul id="topics-container" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
					<meta itemprop="itemListOrder" content="descending">
					<!-- BEGIN topics -->
					<li class="category-item<!-- IF topics.locked --> locked<!-- ENDIF topics.locked --><!-- IF topics.pinned --> pinned<!-- ENDIF topics.pinned --><!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread -->" itemprop="itemListElement" data-tid="{topics.tid}" data-index="{topics.index}">
						<div>
							<div class="col-lg-12 col-md-8 col-sm-8 col-mob-4">
								<!-- IF privileges.editable -->
									<i class="fa fa-fw fa-square-o pull-left select pointer"></i>
								<!-- ENDIF privileges.editable -->

								<h4>
									<a href="{relative_path}/topic/{topics.slug}" itemprop="url">
										<meta itemprop="name" content="{topics.title}">

										<strong><i class="fa fa-thumb-tack<!-- IF !topics.pinned --> hide<!-- ENDIF !topics.pinned -->"></i> <i class="fa fa-lock<!-- IF !topics.locked --> hide<!-- ENDIF !topics.locked -->"></i></strong>
										<span class="topic-title">{topics.title}</span>
									</a>
								</h4>

								<div class="pull-right">
									<span class="topic-stats">
										<svg viewBox="0 0 22 22"  xml:space="preserve">
											<path d="M1,1v14h10l6,6v-6h4V1H1z"/>
										</svg>
										<strong class="human-readable-number" title="{topics.postcount}">{topics.postcount}</strong>
									</span>
									<!--|
									<span class="topic-stats">
										[[global:views]]
										<strong class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</strong>
									</span>
									|-->
									<!--<span>
										[[global:posted_ago, <span class="timeago" title="{topics.relativeTime}"></span>]]
									</span>-->

									<!-- noIMPORT partials/category_tags.tpl -->
								</div>
							</div>
							<div class="preview col-lg-4 col-md-4 col-sm-8 col-mob-4">
								<!-- IF topics.unreplied -->
								<h5>[[category:no_replies]]</h5>
								<!-- ELSE -->
								<h5>[[nodebb-theme-openmooc:Last message]]</h5>
								<h6>
									{topics.teaser.user.username}
									[[global:replied_ago, <span class="timeago" title="{topics.teaser.timestamp}"></span>]]
								</h6>
								<a href="{relative_path}/topic/{topics.slug}/{topics.teaser.index}">
									
								</a>
								<!-- ENDIF topics.unreplied -->
							</div>
						</div>
					</li>
					<!-- END topics -->
				</ul>
				<!-- IF config.usePagination -->
				<div class="text-center">
					<ul class="pagination">
						<li class="previous pull-left"><a href="#"><i class="fa fa-chevron-left"></i> [[global:previouspage]]</a></li>
						<li class="next pull-right"><a href="#">[[global:nextpage]] <i class="fa fa-chevron-right"></i></a></li>
					</ul>
				</div>
				<!-- ENDIF config.usePagination -->
			</div>
		</div>
	</div>

	<!-- IF topics.length -->
	<div widget-area="sidebar" class="col-md-3 col-xs-12 category-sidebar"></div>
	<!-- ENDIF topics.length -->

	<span class="hidden" id="csrf" data-csrf="{csrf}"></span>
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->
<!-- IMPORT partials/noscript/paginator.tpl -->