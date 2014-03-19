require 'spec_helper'

describe 'exampleservice' do
  let(:params) {{ 
  }}

  let(:title) { 'exampleservice' }
  let(:firewall_params) { {
    'action' => 'accept',
    'port'   => [ 8000 ],
    'proto'  => 'tcp'
  } }

  it { should contain_firewall('102 allow exampleservice').with(firewall_params) }

  it { should contain_package('python').with_ensure('present') }
  it { should contain_package('myapp').with_ensure('latest') }

  it { should contain_service('myapp').with_ensure('running').with_enable('true').with_hasrestart('true').with_hasstatus('true').with_require('Package[myapp]') }
end
