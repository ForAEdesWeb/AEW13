<?php
/**
 * @version $Id: view.html.php 272 2014-05-21 10:25:49Z michal $
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

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.view');

class Djcatalog2ViewTaxrules extends JViewLegacy
{
	protected $items;
	protected $pagination;
	protected $state;

	public function display($tpl = null)
	{
		$this->items		= $this->get('Items');
		$this->pagination	= $this->get('Pagination');
		$this->state		= $this->get('State');
		
		$this->tax_rate		= $this->get('Parent');

		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		$this->addToolbar();
		$version = new JVersion;
		if (version_compare($version->getShortVersion(), '3.0.0', '<')) {
			$tpl = 'legacy';
		}		
		if (class_exists('JHtmlSidebar')){
            $this->sidebar = JHtmlSidebar::render();
        }
		parent::display($tpl);
	}

	protected function addToolbar()
	{
		$title = (!empty($this->tax_rate)) ? JText::_('COM_DJCATALOG2_TAX_RULES').' ['.$this->tax_rate->name.']' : JText::_('COM_DJCATALOG2_TAX_RULES');
		JToolBarHelper::title($title, 'generic.png');
		JToolBarHelper::back('JTOOLBAR_BACK', 'index.php?option=com_djcatalog2&view=taxrates');
		JToolBarHelper::addNew('taxrule.add','JTOOLBAR_NEW');
		JToolBarHelper::editList('taxrule.edit','JTOOLBAR_EDIT');
		JToolBarHelper::deleteList('', 'taxrules.delete','JTOOLBAR_DELETE');
		JToolBarHelper::divider();
		JToolBarHelper::preferences('com_djcatalog2', '450', '900');
		JToolBarHelper::divider();
	}
}
