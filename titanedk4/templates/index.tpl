<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta name="description" content="EDK Killboard - {$config->get('cfg_kbtitle')}" />
	<meta name="keywords" content="EDK, killboard, {$config->get('cfg_kbtitle')}, {if $kb_owner}{$kb_owner}, {/if}Eve-Online, killmail" />
	<title>{$kb_title}</title>
	{if isset($style)}<link rel="stylesheet" type="text/css" href="{$theme_url}/{$style}.css" />{/if}
{$page_headerlines}
	<script type="text/javascript" src="{$kb_host}/themes/generic.js"></script>
</head>
<body {if isset($on_load)}{$on_load}{/if}>
{$page_bodylines}
	<div id="popup"></div>
	<div id="stuff1"></div>
	<div id="stuff2"></div>
	<div id="stuff3"></div>
	<div id="stuff4"></div>
<div id="wrapper">
	<div id="header">

			<div id="logo">
				<a href="{if $banner_link}{$banner_link}{else}?a=home{/if}">
			<img src="{$kb_host}/banner/{$banner}" border="0" alt="Banner" {if $banner_x && $banner_y}width = "{$banner_x}" height="110px"{/if} />
		</a>
			</div>

	</div>

<div id="nav">
		<!-- max nav items is 9 (<li>...</li> x9) -->

				<ul>
		{section name=item loop=$menu}
					<li><a class="link" href="{$menu[item].link}">{$menu[item].text}</a></li>
		{/section}
				</ul>
	</div>


	<div id="main">


					{if isset($message)}
		<div id="boardmessage">{$message}</div>
{/if}
		<div id="page-title">{$page_title}</div>



		<div id="content">
{$content_html}
		</div>
{if $context_html}
		<div id="context">
{section name=item loop=$context_divs}
		<div class="context_element" id="context_{$smarty.section.item.index}">{$context_divs[item]}</div>
{/section}
		</div>
{/if}
{if $profile}
		<div id="profile"><!-- profile -->{$profile_sql} queries{if $profile_sql_cached} (+{$profile_sql_cached} cached) {/if} SQL time {$sql_time}s, Total time {$profile_time}s<!-- /profile --></div>
{/if}
		<div class="counter"></div>

<div id="footer">
		
		<div id="credits">
			
		</div>
		
		<div id="copyright">
			TITAN Theme by <a href="http://gate.eveonline.com/profile/vecati">Vecati</a>
		</div>
		<!-- / DO NOT REMOVE -->
	</div>


	</div>
<br><br>
	</div>
</body>
</html>
