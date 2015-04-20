require 'spec_helper'
describe 'dns_resolver' do

  context 'with defaults for all parameters' do
    it { should contain_class('dns_resolver') }
  end
end
