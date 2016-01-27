<!-- pilot_detail_stats -->
<div class="stats pilot-detail">
	<table class='kb-table'>
		<col class="logo" />
		<col class="attribute-name" />
		<col class="attribute-data" />
		<tr class='kb-table-row-even'>
			<td rowspan='7'><img src="{$portrait_URL}" alt="portrait" /></td>
			<td>&nbsp;&nbsp;&nbsp;Corporation:</td>
			<td><a href="{$kb_host}/?a=corp_detail&amp;crp_id={$corp_id}">{$corp_name}</a></td>
		</tr>
		<tr class='kb-table-row-even'>
			<td>&nbsp;&nbsp;&nbsp;Alliance:</td>
			<td><a href="{$kb_host}/?a=alliance_detail&amp;all_id={$all_id}">{$all_name}</a></td>
		</tr>
		<tr class='kb-table-row-even'>
			<td>&nbsp;&nbsp;&nbsp;Kills:</td>
			<td class='kl-kill'>{$klist_count}</td>
		</tr>
		<tr class='kb-table-row-even'>
			<td>&nbsp;&nbsp;&nbsp;Real kills:</td>
			<td class='kl-kill'>{$klist_real_count}</td>
		</tr>
		<tr class='kb-table-row-even'>
			<td>&nbsp;&nbsp;&nbsp;Losses:</td>
			<td class='kl-loss'>{$llist_count}</td>
		</tr>
		<tr class='kb-table-row-even'>
			<td>&nbsp;&nbsp;&nbsp;ISK destroyed:</td>
			<td class='kl-kill'>{$klist_isk_B}B</td>
		</tr>
		<tr class='kb-table-row-even'>
			<td>&nbsp;&nbsp;&nbsp;ISK lost:</td>
			<td class='kl-loss'>{$llist_isk_B}B</td>
		</tr>
		<tr class='kb-table-row-even'>
			<td rowspan="2">
			<td>&nbsp;&nbsp;&nbsp;Chance of enemy survival:</td>
			<td><span style="color:{if $pilot_survival >= 50}#00AA00{else}#AA0000{/if};">{$pilot_survival}%</span></td>
		</tr>
		<tr class='kb-table-row-even'>
			<td>&nbsp;&nbsp;&nbsp;Pilot Efficiency (ISK):</td>
			<td><span style="color:{if $pilot_efficiency >= 50}#00AA00{else}#AA0000{/if};">{$pilot_efficiency}%</span></td>
		</tr>
	</table>
</div>
<!-- /pilot_detail_stats -->