<?php
/**
 * @version $Id: image.php 272 2014-05-21 10:25:49Z michal $
 * @package DJ-Catalog2
 * @copyright Copyright (C) 2012 DJ-Extensions.com LTD, All rights reserved.
 * @license http://www.gnu.org/licenses GNU/GPL
 * @author url: http://dj-extensions.com
 * @author email contact@dj-extensions.com
 * @developer Michal Olczyk - michal.olczyk@design-joomla.eu
 *
 * DJ-Catalog2 is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * DJ-Catalog2 is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with DJ-Catalog2. If not, see <http://www.gnu.org/licenses/>.
 *
 */

defined('_JEXEC') or die();

?>

<div style="clear: both"></div>

<div id="<?php echo $wrapper_id ?>" class="djc_uploader <?php echo $wrapper_class?>">
	<table class="adminlist table table-condensed table-bordered djc_uploader_table jlist-table">
		<thead>
			<tr>
				<th class="djc_uploader_img">
					<?php echo JText::_('COM_DJCATALOG2_IMAGE');?>
				</th>
				<th class="djc_uploader_caption">
					<?php echo JText::_('COM_DJCATALOG2_FILE_CAPTION_LABEL'); ?>
				</th>
				<th class="djc_uploader_exclude">
					<span class="hasTip" title="<?php echo JText::_('COM_DJCATALOG2_IMAGE_EXCLUDE');?>" rel="<?php echo JText::_('COM_DJCATALOG2_IMAGE_EXCLUDE_DESC'); ?>"><?php echo JText::_('COM_DJCATALOG2_IMAGE_EXCLUDE');?></span>
				</th>
				<th class="djc_uploader_delete">
				</th>
			</tr>
		</thead>
		
		<tfoot>
			<tr id="djc_uploader_simple_<?php echo $suffix; ?>" class="djc_uploader_item_simple" style="display: none;">
				<td colspan="4">
					<input type="file" name="<?php echo $prefix; ?>_file_upload[]" />
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<?php if ($multiple_upload) {?>
						<?php echo DJCatalog2UploadHelper::getUploader($uploader_id, $settings); ?>
					<?php } else {?>
						<button id="add_<?php echo $suffix; ?>_button" class="btn button" onclick="DJCatalog2UPAddUploader('<?php echo $suffix; ?>', '<?php echo $wrapper_id?>'); return false;"><?php echo JText::_('COM_DJCATALOG2_ADD_IMG_LINK'); ?></button>
					<?php } ?>
				</td>
			</tr>
		</tfoot>
		
		<tbody id="<?php echo $wrapper_id; ?>_items" class="djc_uploader_items"  data-limit="<?php echo (int)$limit;?>">
			<?php if(count($files)) { ?>
			<?php foreach($files as $file) { 
				?>
				<tr class="djc_uploader_item">
					<td class="center">
						<a class="modal" href="<?php echo DJCATIMGURLPATH.'/'.$file->fullpath;?>">
							<img src="<?php echo DJCATIMGURLPATH.'/'.self::addSuffix($file->fullpath, '_s'); ?>" alt="<?php echo htmlspecialchars($file->fullname); ?>" />
						</a>
						<input type="hidden" name="<?php echo $prefix?>_file_id[]" value="<?php echo (int)$file->id; ?>" />
						<input type="hidden" name="<?php echo $prefix?>_file_name[]" value="<?php echo $file->fullname; ?>" />
					</td>
					<td>
						<input type="text" name="<?php echo $prefix ?>_caption[]" value="<?php echo htmlspecialchars($file->caption); ?>" class="djc_uploader_caption inputbox input input-medium" />
					</td>
					<td class="center">
						<input type="checkbox" <?php if ((int)$file->exclude) echo 'checked="checked"; '?> onchange="DJCatalog2UPExcludeCheckbox(this);" />
						<input type="hidden" name="<?php echo $prefix?>_exclude[]" value="<?php echo (int)$file->exclude; ?>" class="djc_hiddencheckbox" />
					</td>
					<td class="center">
						<button class="button btn djc_uploader_remove_btn"><?php echo JText::_('COM_DJCATALOG2_DELETE_BTN')?></button>
					</td>
				</tr>
			<?php }?>
			<?php }?>
		</tbody>
	</table>
</div>

