<?php

	require_once EXTENSIONS . '/ds_dynamicxml/lib/class.datasource.php';

	Final Class DataSourceTwitter_Feed extends DynamicXMLDataSource {

			public function __construct(){
				parent::__construct();

				$this->_about = (object)array(
					'name'			=> 'Twitter Feed',
					'author'		=> (object)array(
						'name'			=> 'Michael Eichelsdörfer',
						'website'		=> 'http://builderscollective.com',
						'email'			=> 'info@michael-eichelsdoerfer.de'
					),
					'version'		=> '1.0',
					'release-date'	=> '2010-06-13T15:28:40+00:00'
				);

			$this->_parameters = (object)array(
				'timeout' => 6,
				'cache-lifetime' => 60,
				'automatically-discover-namespaces' => 'yes',
				'namespaces' => array (
					),
				'url' => 'http://search.twitter.com/search.atom?q=%23symphonycms%20%23symposium',
				'xpath' => '*',
				'root-element' => 'twitter-feed',
				'dependencies' => array (
					),
			);

		}

		public function allowEditorToParse(){
			return false;
		}

	}

	return 'DataSourceTwitter_Feed';