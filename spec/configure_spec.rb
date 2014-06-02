require 'spec_helper'

describe 'jmxtrans::_configure' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set[:jmxtrans] = jmxtrans_attributes
    end.converge(described_recipe)
  end

  let :jmxtrans_attributes do
    {}
  end

  describe 'jmxtrans configuration file' do
    let :path do
      '/etc/default/jmxtrans'
    end

    it 'creates configuration template' do
      expect(chef_run).to create_template(path).with({
        owner: 'root',
	group: 'root',
	mode:  '0644'
      })
    end

    it 'notifies restart' do
      resource = chef_run.template(path)
      expect(resource).to notify('service[jmxtrans]').to(:restart).delayed
    end

    context 'default configuration' do

      it 'sets JAR_FILE' do
        expect(chef_run).to render_file(path).with_content(/export JAR_FILE=.*jmxtrans-all\.jar/)
      end

    end

  end

  it 'starts jmxtrans' do
    expect(chef_run).to start_service('jmxtrans')
  end

  it 'restarts with new json' do
      service = chef_run.service('jmxtrans')
      expect(service).to subscribe_to('template[set1.json]').on(:restart).delayed
  end

end
