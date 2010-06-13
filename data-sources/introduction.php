<?php
	
	require_once EXTENSIONS . '/ds_sections/lib/class.datasource.php';
	
	Final Class DataSourceIntroduction extends SectionsDataSource {

		public function __construct(){
			parent::__construct();

			$this->_about = (object)array(
				'name'			=> 'Introduction',
				'author'		=> (object)array(
					'name'			=> 'Nils Werner',
					'website'		=> 'http://www.builderscollective.com',
					'email'			=> 'nilwerner@gmail.com'
				),
				'version'		=> '1.0',
				'release-date'	=> '2010-06-13T16:46:46+00:00'
			);
			
			$this->_parameters = (object)array(
				'root-element' => 'introduction',
				'limit' => '20',
				'page' => '1',
				'section' => 'introduction',
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
					  0 => 'title: unformatted',
					  1 => 'body: formatted',
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

	return 'DataSourceIntroduction';