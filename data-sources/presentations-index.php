<?php
	
	require_once EXTENSIONS . '/ds_sections/lib/class.datasource.php';
	
	Final Class DataSourcePresentations_Index extends SectionsDataSource {

		public function __construct(){
			parent::__construct();

			$this->_about = (object)array(
				'name'			=> 'Presentations Index',
				'author'		=> (object)array(
					'name'			=> 'Nils Werner',
					'website'		=> 'http://www.builderscollective.com',
					'email'			=> 'nilwerner@gmail.com'
				),
				'version'		=> '1.0',
				'release-date'	=> '2010-06-13T13:55:22+00:00'
			);
			
			$this->_parameters = (object)array(
				'root-element' => 'presentations-index',
				'limit' => '20',
				'page' => '1',
				'section' => 'presentation',
				'conditions' => array (
					),
				'filters' => array (
					),
				'redirect-404-on-empty' => false,
				'append-pagination' => false,
				'append-sorting' => false,
				'sort-field' => 'system:id',
				'sort-order' => 'desc',
				'included-elements' => array (
					  0 => 'topic: unformatted',
					  1 => 'attendee',
					),
				'parameter-output' => array (
					),
				'dependencies' => array (
					),
			);
		}

		public function allowEditorToParse() {
			return true;
		}
	}

	return 'DataSourcePresentations_Index';