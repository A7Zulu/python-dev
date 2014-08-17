
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

class python {
	package {
	[ "python", "python-setuptools", "python-dev", "python-pip",
	  "python-matplotlib", "python-imaging", "python-numpy", "python-scipy",
	  "python-software-properties", "idle", "python-qt4", "python-wsgtk2.8",
	  "boto", "paho-mqtt", "mosquitto"
	]:
	ensure => ["installed"],
	require => Exec['apt-update']
	}

}


include core
