<?php

	require_once EXTENSIONS . '/ds_dynamicxml/lib/class.datasource.php';

	Final Class DataSourceFlickr_Group_Index extends DynamicXMLDataSource {

			public function __construct(){
				parent::__construct();

				$this->_about = (object)array(
					'name'			=> 'Flickr Group Index',
					'author'		=> (object)array(
						'name'			=> 'Nils Werner',
						'website'		=> 'http://www.builderscollective.com',
						'email'			=> 'nilwerner@gmail.com'
					),
					'version'		=> '1.0',
					'release-date'	=> '2010-06-13T15:50:23+00:00'
				);

			$this->_parameters = (object)array(
				'timeout' => 6,
				'cache-lifetime' => 60,
				'automatically-discover-namespaces' => 'yes',
				'namespaces' => array (
					),
				'url' => 'http://api.flickr.com/services/rest/?api_key=a0ad004b982ed75f670aadecb8517c62&method=flickr.groups.pools.getPhotos&group_id=11144524@N00&extras=tags&tags=symposium',
				'xpath' => '*',
				'root-element' => 'flickr-group-index',
				'dependencies' => array (
					),
			);

		}

		public function allowEditorToParse(){
			return false;
		}

	}

	return 'DataSourceFlickr_Group_Index';