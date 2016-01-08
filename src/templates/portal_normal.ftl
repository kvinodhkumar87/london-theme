<!DOCTYPE html>

<#include init>
<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	${theme.include(top_head_include)}
</head>

<body class="${css_class}">

<@liferay.quick_access content_id="#main-content" />

${theme.include(body_top_include)}

<@liferay.product_menu_sidebar state="${liferay_product_menu_state}" />

<@liferay.control_menu />

	<div class="container-fluid" id="wrapper">

		<div class="tertiary-background-color">

			<header id="banner" role="banner">
				<div id="heading">
					<h1 class="site-title">

						<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />
							<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
						</a>

						<#if show_site_name>
							<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />
								${site_name}
							</span>
						</#if>

					</h1>
				</div>

				<#if !is_signed_in>
					<a data-redirect="${is_login_redirect_required}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
				</#if>

				<#if has_navigation && is_setup_complete>
					<#include full_templates_path + "/navigation.ftl">
				</#if>

			</header>

			<main id="content" role="main">
				<h1 class="hide-accessible">${the_title}</h1>

				<!-- PROMO PRINCIPAL -->
				<div class="background-image jumbotron" style="background-image: url(${images_folder}/content/primary-background.jpg)">
					<section class="container">
						<div class="col-sm-8">
							<h2 class="h1">Siente, escucha, disfruta...</h2>
							<p class="lead">Descubriendo otras formas de emocionarte con la radio.</p>
							<p>Play free or subscribe to 1975 LONDON Premium.</p>
							<p><a class="btn btn-default btn-theme-default btn-xl" href="#">Play free</a>  or  <a class="btn btn-primary btn-theme-primary btn-xl" href="#">Download</a></p>
						</div>
					</section>
				</div>

				<div class="col-no-padding jumbotron">

					<div class="col-md-4">
						<a href="#">
							<img alt="[Insert alternative description here]" class="center-block img-responsive" src="${images_folder}/content/640x480_1.jpg" />
						</a>
					</div>
					<div class="col-md-4">
						<a href="#">
							<img alt="[Insert alternative description here]" class="center-block img-responsive" src="${images_folder}/content/640x480_2.jpg" />
						</a>
					</div>
					<div class="col-md-4">
						<a href="#">
							<img alt="[Insert alternative description here]" class="center-block img-responsive" src="${images_folder}/content/640x480_3.jpg" />
						</a>
					</div>

				</div>

				<div class="background-image jumbotron" style="background-image: url(${images_folder}/content/secondary-background.jpg)">
					<section class="container">
						<div class="col-sm-8">
							<h2 class="h1">1975LONDON comparte tus recuerdos</h2>
							<p class="lead">Él aprende de tus selecciones, de tus búsquedas, de las reproducciones de tus amigos.</p>
							<p class="lead">El desarrollo se centra en ti, no en una lista de funcionalidades, para hacer frente a este o a ese otro. Tú y solo tú.</p>
							<p></p>
						</div>
					</section>
				</div>

				<#if selectable>
					${theme.include(content_include)}
				<#else>
					${portletDisplay.recycle()}
					${portletDisplay.setTitle(the_title)}
					${theme.wrapPortlet("portlet.ftl", content_include)}
				</#if>

				</main>

			</div>

		<#include full_templates_path + "/footer.ftl">
	</div>

${theme.include(body_bottom_include)}

${theme.include(bottom_include)}

</body>

</html>