<?php
class Zend_View_Helper_OpenDecoration
{
    public function openDecoration()
    {
        return "<table class='wrapper' cellspacing='0px' cellpadding='0px'>
	<tr>
		<td class='wrapper' width='16'><img src='/public/admin/img/top_lef.gif' width='16'/></td>
		<td class='wrapper' background='/public/admin/img/top_mid.gif'></td>
		<td class='wrapper' width='24'><img src='/public/admin/img/top_rig.gif' width='24'/></td>
	</tr>
	<tr>
		<td class='wrapper' width='16' style='background-image:url(/public/admin/img/cen_lef.gif)'></td>
		<td class='wrapper' bgcolor='#F7F8FB'>";
    }
}