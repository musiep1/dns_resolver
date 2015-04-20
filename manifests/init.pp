class dns_resolver {

  if $::hostname =~ /^(?i:in)\d+.*$/ {
     # FWA DC (case insensitive:  ?i )
     dns_resolv_conf { "FWA_DC_dns_resolver_config":
       searchpath  => [ 'lnc.com', 'us.ad.lfg.com' ],
       nameservers => ['10.54.50.90', '10.64.50.31.'],
     }
  }
  else {
     # any other DC
     dns_resolv_conf { "dns_resolver_config":
       searchpath  => [ 'lnc.com', 'us.ad.lfg.com' ],
       nameservers => ['10.64.50.31', '10.54.50.90.'],
     }
  }

}
