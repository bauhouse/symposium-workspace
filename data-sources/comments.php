<?php

	require_once EXTENSIONS . '/ds_dynamicxml/lib/class.datasource.php';

	Final Class DataSourceComments extends DynamicXMLDataSource {

			public function __construct(){
				parent::__construct();

				$this->_about = (object)array(
					'name'			=> 'Comments',
					'author'		=> (object)array(
						'name'			=> 'Michael Eichelsdörfer',
						'website'		=> 'http://builderscollective.com',
						'email'			=> 'info@michael-eichelsdoerfer.de'
					),
					'version'		=> '1.0',
					'release-date'	=> '2010-06-13T14:27:48+00:00'
				);

			$this->_parameters = (object)array(
				'timeout' => 6,
				'cache-lifetime' => 60,
				'automatically-discover-namespaces' => 'yes',
				'namespaces' => array (
					),
				'url' => 'http://symphony-cms.com:80/get-involved/feeds/blog/comments/join-us-in-london-for-symposium-2010/',
				'xpath' => '*',
				'root-element' => 'comments',
				'dependencies' => array (
					),
			);

		}

		public function allowEditorToParse(){
			return false;
		}

	}

	return 'DataSourceComments';