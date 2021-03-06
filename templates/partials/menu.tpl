			<div class="row main-bar">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
				<h1 class="logo">
					<a href="<!-- IMPORT partials/hub_url.tpl -->" class="hide-text">
						<img src="{brand:logo}" />
						{title}
					</a>
				</h1>
				
				<!--<div class="header-topic-title hidden">
					<span></span>
				</div>-->

				<ul id="meta-buttons" class="pull-left">
					<!-- IMPORT partials/menu_links.tpl -->
				</ul>

				<div class="btn-toolbar pull-right">
					<div class="btn-group">
					<!-- IF loggedIn -->
					<a class="dropdown-toggle usermenu" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
						<img id="user-header-picture" src="{user.picture}"/>
					</a>
					<ul id="user-control-list" class="dropdown-menu" aria-labelledby="user_dropdown">
						<li>
							<a id="user-profile-link" href="<!-- IMPORT partials/hub_url.tpl -->/user/profile">
								<i class="fa fa-circle status {user.status}"></i> <span id="user-header-name">{user.username}</span>
							</a>
						</li>
						<li role="presentation" class="divider"></li>
						<!-- IF isAdmin -->
						<li>
							<a href="{relative_path}/admin" title="[[global:header.admin]]" target="_top">
								<i class="fa fa-fw fa-cogs"></i><span class="visible-xs-inline"> [[global:header.admin]]</span>
							</a>
						</li>
						<!-- ENDIF isAdmin -->
						<!-- IF searchEnabled -->
						<li class="visible-xs">
							<a href="{relative_path}/search" title="[[global:header.search]]" id="mobile-search-button" >
								<i class="fa fa-search fa-fw" ></i> [[global:header.search]]
							</a>
						</li>
						<!-- ENDIF searchEnabled -->
						<!-- BEGIN navigation -->
						<li class="{navigation.class}">
							<a href="{relative_path}{navigation.route}" title="{navigation.title}">
								<!-- IF navigation.iconClass -->
								<i class="fa fa-fw {navigation.iconClass}"></i>
								<!-- ENDIF navigation.iconClass -->

								<!-- IF navigation.text -->
								<span class="{navigation.textClass}">{navigation.text}</span>
								<!-- ENDIF navigation.text -->
							</a>
						</li>
						<!-- END navigation -->
						<li role="presentation" class="divider"></li>
						<li id="logout-link">
							<a href="<!-- IMPORT partials/hub_url.tpl -->/auth/logout">[[global:logout]]</a>
						</li>
						<!--<li role="presentation" class="divider"></li>
						<li>
							<a href="#" class="user-status" data-status="online">
								<i class="fa fa-circle status online"></i><span> [[global:online]]</span>
							</a>
						</li>
						<li>
							<a href="#" class="user-status" data-status="away">
								<i class="fa fa-circle status away"></i><span> [[global:away]]</span>
							</a>
						</li>
						<li>
							<a href="#" class="user-status" data-status="dnd">
								<i class="fa fa-circle status dnd"></i><span> [[global:dnd]]</span>
							</a>
						</li>
						<li>
							<a href="#" class="user-status" data-status="offline">
								<i class="fa fa-circle status offline"></i><span> [[global:invisible]]</span>
							</a>
						</li>-->
					</ul>
					<!-- ELSE -->
					<ul id="logged-out-menu" class="nav navbar-nav navbar-right pull-right">
						<li>
							<a href="<!-- IMPORT partials/hub_url.tpl -->/auth/login">
								<i class="fa fa-sign-in visible-xs-inline"></i>
								<span>[[global:login]]</span>
							</a>
						</li>
					</ul>
					<!-- ENDIF loggedIn -->
					<!-- IF searchEnabled -->
					<ul class="nav navbar-nav navbar-right">
						<li>
							<form id="search-form" class="navbar-form navbar-right hidden-xs" role="search" method="GET" action="">
								<div class="hide" id="search-fields">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
									</div>
									<button type="submit" class="btn btn-default hide">[[global:search]]</button>
								</div>
								<button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw" title="[[global:header.search]]"></i></button>
							</form>
						</li>
					</ul>
					<!-- ENDIF searchEnabled -->

					<!--<ul class="nav navbar-nav navbar-right pull-right">
						<li>
							<a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect...">
								<i class="fa fa-check"></i>
							</a>
						</li>
					</ul>

					<ul class="nav navbar-nav navbar-right pagination-block hidden visible-lg visible-md">
						<li class="dropdown">
							<i class="fa fa-angle-double-up pointer fa-fw pagetop"></i>
							<i class="fa fa-angle-up pointer fa-fw pageup"></i>

							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<span id="pagination"></span>
							</a>

							<i class="fa fa-angle-down pointer fa-fw pagedown"></i>
							<i class="fa fa-angle-double-down pointer fa-fw pagebottom"></i>

							<div class="progress-container">
								<div class="progress-bar"></div>
							</div>

							<ul class="dropdown-menu" role="menu">
	  							<input type="text" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
	  						</ul>
						</li>
					</ul>-->

					<!--<div class="header-topic-title hidden">
						<span></span>
					</div>-->
				</div>
			</div>