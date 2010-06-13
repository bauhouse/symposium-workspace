<?php
	
	require_once EXTENSIONS . '/ds_sections/lib/class.datasource.php';
	
	Final Class DataSourceAttendee_Details extends SectionsDataSource {

		public function __construct(){
			parent::__construct();

			$this->_about = (object)array(
				'name'			=> 'Attendee Details',
				'author'		=> (object)array(
					'name'			=> 'Nils Werner',
					'website'		=> 'http://www.builderscollective.com',
					'email'			=> 'nilwerner@gmail.com'
				),
				'version'		=> '1.0',
				'release-date'	=> '2010-06-13T13:52:16+00:00'
			);
			
			$this->_parameters = (object)array(
				'root-element' => 'attendee-details',
				'limit' => '1',
				'page' => '1',
				'section' => 'attendees',
				'conditions' => array (
					),
				'filters' => array (
					  0 => 
					  array (
					    'type' => 'is',
					    'value' => '{$name}',
					    'element-name' => 'symphony-username',
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
					  0 => 'system:id',
					),
				'dependencies' => array (
					),
			);
		}

		public function allowEditorToParse() {
			return true;
		}
	}

	return 'DataSourceAttendee_Details';