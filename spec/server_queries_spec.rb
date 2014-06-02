require 'spec_helper'

describe 'jmxtrans::server_queries' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set[:jmxtrans] = jmxtrans_attributes
    end.converge(described_recipe)
  end

  let :jmxtrans_attributes do
    {}
  end

  describe 'jmxtrans server queries file' do

    it 'creates json template' do
      expect(chef_run).to create_template('set1.json').with({
        owner: 'jmxtrans',
        group: 'jmxtrans',
        mode:  '0755'
      })
    end

    context 'default queries' do

      it 'renders server queries' do
        expect(chef_run).to render_file("#{chef_run.node['jmxtrans']['home']}/json/set1.json").with_content(/\{.*"servers":.*\[.*\].*\}/m)
      end

    end

  end
end
