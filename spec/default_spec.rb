require 'spec_helper'

describe 'jmxtrans::default' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
  it 'creates configuration template' do
    expect(chef_run).to create_template('/etc/default/jmxtrans')
  end
  it 'renders configuration file' do
    expect(chef_run).to render_file('/etc/default/jmxtrans').with_content(/export JAR_FILE=.*jmxtrans-all\.jar/)
  end
  it 'creates server queries template' do
    expect(chef_run).to create_template('set1.json')
  end
  it 'renders server queries' do
    expect(chef_run).to render_file("#{chef_run.node['jmxtrans']['home']}/json/set1.json").with_content(/\{.*"servers":.*\[.*\].*\}/m)
  end
  it 'starts jmxtrans' do
    expect(chef_run).to start_service('jmxtrans')
  end
  it 'notifies restart' do
    resource = chef_run.template('/etc/default/jmxtrans')
    expect(resource).to notify('service[jmxtrans]').to(:restart).delayed
  end
end
