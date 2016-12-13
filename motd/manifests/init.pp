class motd {
	file { "motd":
	name	=> '/etc/motd',
	mode	=> '0664',
	owner	=> 'root',
	group	=> 'root',
	ensure	=> 'file',
	content	=> template("motd/motd_template.erb");
	}
}
