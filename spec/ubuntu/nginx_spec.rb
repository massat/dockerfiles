require 'spec_helper'

set :docker_image, 'massat/ubuntu-nginx'

describe 'nginx' do
  describe package('nginx') do
    it { should be_installed }
  end
end
