<?php

	require_once EXTENSIONS . '/ds_dynamicxml/lib/class.datasource.php';

	Final Class DataSourceFlickr_From_User extends DynamicXMLDataSource {

			public function __construct(){
				parent::__construct();

				$this->_about = (object)array(
					'name'			=> 'Flickr From User',
					'author'		=> (object)array(
						'name'			=> 'Nils Werner',
						'website'		=> 'http://www.builderscollective.com',
						'email'			=> 'nilwerner@gmail.com'
					),
					'version'		=> '1.0',
					'release-date'	=> '2010-06-13T15:51:02+00:00'
				);

			$this->_parameters = (object)array(
				'timeout' => 6,
				'cache-lifetime' => 60,
				'automatically-discover-namespaces' => 'yes',
				'namespaces' => array (
					),
				'url' => 'http://api.flickr.com/services/rest/?method=flickr.groups.pools.getPhotos&api_key=a0ad004b982ed75f670aadecb8517c62&group_id=11144524%40N00&extras=tags&tags={$name}',
				'xpath' => '*',
				'root-element' => 'flickr-from-user'
			);

		}

		public function allowEditorToParse(){
			return true;
		}

	}

	return 'DataSourceFlickr_From_User';