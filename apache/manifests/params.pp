class apache::params {
	$apache_name = $::osfamily ? {
		'RedHat'	=> 'httpd',
		'Debian'	=> 'apache2',
		'default'	=> 'apache2',
	}
	$apache_serv = $::osfamily ? {
		'RedHat'	=> 'httpd',
		'Debian'	=> 'apache2',
		'default'	=> 'apache2',
	}	
}
