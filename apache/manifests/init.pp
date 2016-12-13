class apache {

	package { 'apache_package':
		name	=> $apache::params::apache_name,
		ensure	=> installed,
	}

	file { 'index.html':
		name	=> '/var/www/html/index.html',
		ensure	=> file,
		owner	=> root,
		group	=> root,
		mode	=> 0644,
		source	=> "puppet:///modules/apache/index.html",
		require	=> Package['apache_package'],
	}

	service { 'apache_service':
		name		=> $apache::params::apache_serv,
		ensure		=> running,
		enable		=> true,
		require		=> Package['apache_package'],
		subscribe	=> File['index.html'], 
	}	
}
