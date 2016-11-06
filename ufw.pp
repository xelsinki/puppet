
class ufw {
Exec {
path => ‘/bin/:/usr/bin/:/sbin/:/usr/sbin/’,
}

exec { ‘ufw enable’:
unless => ‘sudo ufw status verbose|grep “Status: active”‘,
}

exec { ‘ufw allow 22/tcp’:
unless => ‘ufw status verbose|grep 22/tcp’,
}

}
