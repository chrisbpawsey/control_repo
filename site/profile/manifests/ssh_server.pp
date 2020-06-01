class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDzAy9nET6O8jsBHtS4TdK4qr+1Iifvk7mY9BYtcGxjbb0GLBh6y0YzCHEpaRyt6biK4HV2pxEOQl99Y84SwIeQGYDcxsRCvlZEkvY9dPzSgwLddjFsVIv+fHWuYUNb4u1y4fOZKT87B0aE4lQbkRUYZl67alzvtSIZJ1BrGlg4OKvRzOi2m4lurLJen7DCxKQ78UYniJAYDYkAwg/TRd/pXQUK9qXMRDkzFFJtgn3Ge3QNQ7G97waAvACralXpBEK7TJhp94dR0RRo0CwrNnDHHiMvD+fFReOf146wxpY+Hs6mjVPj8UiQ7NgBcCcbgoKUJkzqPkfZCieJS3FARtn7',
	}  
}
