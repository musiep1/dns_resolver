define dns_resolver::dns_resolv_conf($searchpath, $nameservers) {
        file { "/etc/resolv.conf":
                owner   => root,
                group   => root,
                mode    => 644,
                content => template("dns_resolver/resolv.conf.erb"),
        }
}
