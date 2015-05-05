# The prefix used to name this DMS instance
# Affects the naming of keys, S3 buckets, the control server
pre = 'nrw'
node.override['dms_controller']['prefix']         = pre

# The DNS name to use for the control server
node.override['dms_controller']['server_name']    = "#{pre}-controller.epimorphics.net"

# Set to true to enable TLS connections for the control server
node.override['dms_controller']['use_https']      = true

# The git repository containing the service configuration, scripts and UI templates
node.override['dms_controller']['conf_repo']     = "https://github.com/epimorphics/#{pre}-dms-deploy.git"

# Space separated list of names of elastic load balancers that should be monitored 
# by vacuumetrix and fed in to grpahite/carbon store
# This information won't be known until after a service has been deployed
node.override['dms_controller']['monitor_LBs']    = 'nrwbwq-producti-dataserv-LB nrwbwq-producti-presServ-LB'

# The grafana dashboards to install, each name should correspond to a file "grafana-dashboard-{name}.json"
node.override['dms_controller']['grafana_dashboards'] = ['dms', 'nrwbwq-production']

# Baseline data and media
node.override['dms_controller']['baseline']['nrwbwq']['testing_baseline_images']    = [ 'wales-baseline-2014-10-31.tgz', 'wales-baseline-2014-10-31.nq.gz' ]
node.override['dms_controller']['baseline']['nrwbwq']['testing_web_snapshot']       = 'wales-web-media-2014-10-27.tgz'
node.override['dms_controller']['baseline']['nrwbwq']['production_baseline_images'] = [ 'wales-baseline-2014-10-31.tgz', 'wales-baseline-2014-10-31.nq.gz'  ]
node.override['dms_controller']['baseline']['nrwbwq']['production_web_snapshot']    = 'wales-web-media-2014-10-27.tgz'
