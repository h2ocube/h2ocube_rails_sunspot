class H2ocubeRailsSunspotGenerator < Rails::Generators::Base
  source_root File.expand_path('../source', __FILE__)

  desc 'Creates config/sunspot.yml and spec/support/sunspot.rb.'

  def copy_config_sunspot_rb
    template 'sunspot.yml.erb', 'config/sunspot.yml'
  end
  
  def copy_spec_support_sunspot_yml
    template 'sunspot.rb.erb', 'spec/support/sunspot.rb'
  end
  
  private
  
  def app_name
    Rails.application.class.to_s.split('::').first.underscore
  end
end
