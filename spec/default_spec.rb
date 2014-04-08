require 'spec_helper'

describe 'jmxtrans::default' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end
