require 'spec_helper'

describe 'jmxtrans::default' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set[:jmxtrans][:install_method] = install_method
    end.converge(described_recipe)
  end

  let :install_method do
    'zip'
  end

  shared_examples_for 'a valid install method' do
    it 'includes jmxtrans::_setup' do
      expect(chef_run).to include_recipe('jmxtrans::_setup')
    end

    it 'includes jmxtrans::install_method recipe' do
      expect(chef_run).to include_recipe(%(jmxtrans::#{install_method}))
    end

    it 'includes jmxtrans::server_queries' do
      expect(chef_run).to include_recipe('jmxtrans::server_queries')
    end

    it 'includes jmxtrans::_configure' do
      expect(chef_run).to include_recipe('jmxtrans::_configure')
    end
  end

  context 'install_methods' do
    context 'when install_method is :zip' do
      it_behaves_like 'a valid install method' do
        let :install_method do
          :zip
        end
      end
    end

    context 'when install_method is \'zip\'' do
      it_behaves_like 'a valid install method' do
        let :install_method do
          'zip'
        end
      end
    end

    context 'when install_method is :dpkg' do
      it_behaves_like 'a valid install method' do
        let :install_method do
          :dpkg
        end
      end
    end

    context 'when install_method is \'dpkg\'' do
      it_behaves_like 'a valid install method' do
        let :install_method do
          'dpkg'
        end
      end
    end

  end

end
