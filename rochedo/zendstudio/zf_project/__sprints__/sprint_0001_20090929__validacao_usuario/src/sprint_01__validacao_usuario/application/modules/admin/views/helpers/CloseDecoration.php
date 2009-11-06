<?php
class Zend_View_Helper_CloseDecoration
{
    public function closeDecoration()
    {
        return "
		</td>
		<td class='wrapper' width='24' background='/public/admin/img/cen_rig.gif'><img src='/public/admin/img/cen_rig.gif' width='24' height='11'></td>
	</tr>
	<tr>
		<td class='wrapper' width='16'><img src='/public/admin/img/bot_lef.gif' width='16'></td>
		<td class='wrapper' background='/public/admin/img/bot_mid.gif'></td>
		<td class='wrapper' width='24' height='16'><img src='/public/admin/img/bot_rig.gif' width='24' ></td>
	</tr>
</table>";
    }
}