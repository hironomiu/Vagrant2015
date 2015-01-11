# This is a basic VCL configuration file for varnish.  See the vcl(7)
# man page for details on VCL syntax and semantics.
#
# Default backend definition.  Set this to point to your content
# server.
#
backend default {
  .host = "127.0.0.1";
  .port = "8080";
}


sub vcl_recv {
  if(req.url ~ "^/"){
    return(lookup);
  }
}

#sub vcl_recv {
#  if(req.url ~ "^/exercise/part1"){
#    return(lookup);
#  } elseif (req.url ~ "^/exercise/part2"){
#    return(lookup);
#  } elseif (req.url ~ "^/exercise/part4"){
#    return(lookup);
#  } else {
#    return(pipe);
#  }
#}

#sub vcl_fetch {
#  if (req.url ~ "part4") {
#      set beresp.ttl = 0.2s;
#      set beresp.grace = 0.2s;
#  } elseif (req.url ~ "part2") {
#      set beresp.ttl = 0.2s;
#      set beresp.grace = 0.2s;
#  }
#  return (deliver);
#}
