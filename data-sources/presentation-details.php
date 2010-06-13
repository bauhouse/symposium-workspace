<?php
	
	require_once EXTENSIONS . '/ds_sections/lib/class.datasource.php';
	
	Final Class DataSourcePresentation_Details extends SectionsDataSource {

		public function __construct(){
			parent::__construct();

			$this->_about = (object)array(
				'name'			=> 'Presentation Details',
				'author'		=> (object)array(
					'name'			=> 'Nils Werner',
					'website'		=> 'http://www.builderscollective.com',
					'email'			=> 'nilwerner@gmail.com'
				),
				'version'		=> '1.0',
				'release-date'	=> '2010-06-13T13:52:51+00:00'
			);
			
			$this->_parameters = (object)array(
				'root-element' => 'presentation-details',
				'limit' => '1',
				'page' => '1',
				'section' => 'presentation',
				'conditions' => array (
					),
				'filters' => array (
					  0 => 
					  array (
					    'type' => 'is',
					    'value' => '{$ds-attendee-details.system.id}',
					    'element-name' => 'attendee',
					  ),
					),
				'redirect-404-on-empty' => false,
				'append-pagination' => false,
				'append-sorting' => false,
				'sort-field' => 'system:id',
				'sort-order' => 'desc',
				'included-elements' => array (
					  0 => 'topic: unformatted',
					  1 => 'summary: formatted',
					  2 => 'file',
					  3 => 'order: unformatted',
					),
				'parameter-output' => array (
					),
				'dependencies' => array (
					  0 => 'attendee-details',
					),
			);
		}

		public function allowEditorToParse() {
			return true;
		}
	}

	return 'DataSourcePresentation_Details';