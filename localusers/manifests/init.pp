class localusers {
	user { 'bob':
		ensure		=> present,
		shell		=> '/bin/bash',
		home		=> '/home/bob',
		gid		=> 'wheel',
		managehome	=> true,
		password	=> '$1$34k8YQWG$bdEZOUAKHSlUe18dr5fWu.', 
	}
        user { 'jeff':
                ensure          => present,
                shell           => '/bin/bash',
                home            => '/home/jeff',
                groups          => ['wheel','apple'],
                managehome      => true,
                password        => '$1$34k8YQWG$bdEZOUAKHSlUe18dr5fWu.',
	}
}
