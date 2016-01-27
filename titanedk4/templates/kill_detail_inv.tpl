{cycle reset=true print=false name=ccl values="kb-table-row-even,kb-table-row-odd"}
<div class="kl-detail-inv">
	<table class="kb-table">
		<col class="logo" />
		<col class="logo" />
		<col class="attribute-data" />
{foreach from=$involved key="key" item="i"}
		<tr class="{cycle name="ccl"}">
			<td rowspan="5" class="logo">
				<a href="{$i.pilotURL}">
					<img {if $i.finalBlow} class="finalblow" {/if} src="{$i.portrait}" alt="inv portrait" />
				</a>
			</td>
			<td rowspan="5" class="logo">
				{if $i.shipURL}<a href="{$i.shipURL}">{/if}
					<img {if $i.finalBlow} class="finalblow"{/if} src='{$i.shipImage}' alt='{$i.shipName}' title='{$i.shipName}' />
				{if $i.shipURL}</a>{/if}
			</td>
			<td><a href="{$i.pilotURL}"><font color="#BA0005"><b>{$i.pilotName}</b></font></a></td>
		</tr>
		<tr class="{cycle name="ccl"}">
			<td><a href="{$i.corpURL}"><b>{$i.corpName}</b></a> [ <i>{if $i.alliURL}<a href="{$i.alliURL}">{$i.alliName}</a>{else}{$i.alliName}{/if}</i> ]</td>
		</tr>
		<tr class="{cycle name="ccl"}">
			{if $i.shipURL}<td><a href="{$i.shipURL}">{$i.shipName}</a> ({$i.shipClass})</td>
			{else}<td>{$i.shipName}</td>{/if}
		</tr>
		<tr class="{cycle name="ccl"}">
			<td>{if $i.weaponID}<a href="{$i.weaponURL}">{$i.weaponName}</a>{else}{$i.weaponName}{/if}</td>
		</tr>
		<tr class="{cycle name="ccl"}">
			<td>Damage done: <font color="#025802">{$i.damageDone} {if $victimDamageTaken > 0}</font>({($i.damageDone/$victimDamageTaken*100)|string_format:"%.2f"}%){/if}</td>
		</tr>
{/foreach}
{if $limited}<tr class="{cycle name="ccl"}">
			<td colspan="3">{$moreInvolved} pilot{if $moreInvolved > 1}s{/if} not shown. <a href="{$unlimitURL}">Show all involved pilots</a></td>
		</tr>
{/if}
	</table>
</div>
