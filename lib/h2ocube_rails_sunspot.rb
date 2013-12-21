require 'sunspot_rails'
require 'sunspot_solr'

module ZfbenRailsRake
  class Railtie < Rails::Railtie
    railtie_name :h2ocube_rails_sunspot
  end
end
