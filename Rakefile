require 'puppet-lint/tasks/puppet-lint'

task :test do |t|
  sh "puppet apply --modulepath .. --noop tests/init.pp"
end

#task :lint do |t|
#  sh "puppet-lint manifests/*.pp"
#end
