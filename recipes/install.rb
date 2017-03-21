direnv = ::File.join('/usr', 'local', 'bin', 'direnv')

remote_file direnv do
  source node['sprout']['direnv']['url']
  mode   '0755'
  not_if { `#{direnv} version`.strip == node['sprout']['direnv']['version'] }
end