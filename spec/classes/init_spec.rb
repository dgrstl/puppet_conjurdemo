require 'spec_helper'
describe 'puppet_conjurdemo' do

  context 'with defaults for all parameters' do
    it { should contain_class('puppet_conjurdemo') }
  end
end
