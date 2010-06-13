<?php
	
	require_once EXTENSIONS . '/ds_sections/lib/class.datasource.php';
	
	Final Class DataSourcePresentation_Images extends SectionsDataSource {

		public function __construct(){
			parent::__construct();

			$this->_about = (object)array(
				'name'			=> 'Presentation Images',
				'author'		=> (object)array(
					'name'			=> 'Nils Werner',
					'website'		=> 'http://www.builderscollective.com',
					'email'			=> 'nilwerner@gmail.com'
				),
				'version'		=> '1.0',
				'release-date'	=> '2010-06-13T14:01:17+00:00'
			);
			
			$this->_parameters = (object)array(
				'root-element' => 'presentation-images',
				'limit' => '200',
				'page' => '1',
				'section' => 'images',
				'conditions' => array (
					),
				'filters' => array (
					  0 => 
					  array (
					    'type' => 'is',
					    'value' => '{$ds-presentation-details.system.id}',
					    'element-name' => 'presentation',
					  ),
					),
				'redirect-404-on-empty' => false,
				'append-pagination' => false,
				'append-sorting' => false,
				'sort-field' => 'system:id',
				'sort-order' => 'desc',
				'included-elements' => array (
					),
				'parameter-output' => array (
					),
				'dependencies' => array (
					  0 => 'presentation-details',
					),
			);
		}

		public function allowEditorToParse() {
			return true;
		}
	}

	return 'DataSourcePresentation_Images';