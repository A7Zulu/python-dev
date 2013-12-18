
class core {
	exec { "apt-update":
		command => "/usr/bin/sudo apt-get -y update"
	}

	package {
		["vim", "git-core", "build-essential" ]:
			ensure => ["installed"],
			require => Exec['apt-update']

	}
}

include core
