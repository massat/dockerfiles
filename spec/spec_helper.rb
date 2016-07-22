require 'docker'
require 'serverspec'

set :backend, :docker
set :docker_url, ENV['DOCKER_HOST']

# Workaround needed for circleCI
if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={}); end
    alias_method :delete, :remove
  end
end

Excon.defaults[:ssl_verify_peer] = false
