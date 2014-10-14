<div class="motd">
	<div widget-area="motd"></div>
</div>

<div class="row home" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="col-lg-16 col-md-12 col-sm-8 col-mob-4" no-widget-class="col-lg-16 col-md-12 col-sm-8 col-mob-4" no-widget-target="sidebar">
		<div class="dash-box">
			<div class="title">
				<h3>Entradas disponibles</h3>
			</div>
			<div class="content feed">
				<ul>
				<!-- BEGIN categories -->
					<li>
					<div data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
						<meta itemprop="name" content="{categories.name}">
						<div class="col-lg-12 col-md-8 col-sm-8 col-mob-4">
							<div id="category-{categories.cid}" class="img"
							title="{categories.description}"
							style="
								<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
								<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
							"></div>
							<div>
								<h4 class="category-title">
									<!-- IF categories.link -->
									<a href="{categories.link}" itemprop="url" target="_blank">
									<!-- ELSE -->
									<a href="{relative_path}/category/{categories.slug}" itemprop="url">
									<!-- ENDIF categories.link -->
									{categories.name}
									</a>
									<!-- IF !categories.link -->
									<!--<span class="badge {categories.unread-class}">{categories.topic_count} </span>-->
									<!-- ENDIF !categories.link -->
								</h4>
								<p class="text">{categories.description}</p>
							</div>
						</div>
						<!-- BEGIN posts -->
						<div class="preview col-lg-4 col-md-4 col-sm-8 col-mob-4">
							<h5>Último mensaje</h5>
							<div id="category-{categories.cid}" class="category-slider-{categories.post_count}">
								<div class="post">
									<h6>{categories.posts.user.username} <span>[{categories.posts.relativeTime}]</span></h6>
									<p class="text">{categories.posts.content}</p>
								</div>
							</div>
							<!-- IF categories.link -->
							<a href="{categories.link}" itemprop="url">
							<!-- ELSE -->
							<a href="{relative_path}/category/{categories.slug}" itemprop="url" class="go">
							<!-- ENDIF categories.link -->
								Seguir leyendo
								<svg viewBox="0 0 30 24" xml:space="preserve">
									<polygon points="16,2 25.113,11 1,11 1,13 25.137,13 16,22 17.414,23.414 29,12 17.414,0.586 		"/>
								</svg>
							</a>
						</div>
						<!-- END posts -->
					</div>
				</li>
			<!-- END categories -->
				</ul>
			</div>
		</div>
	</div>

	<div widget-area="sidebar" class="col-lg-3 col-sm-12"></div>
</div>