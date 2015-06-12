# SUMMARY

[![Gem Version](https://badge.fury.io/rb/h2ocube_rails_sunspot.png)](http://badge.fury.io/rb/h2ocube_rails_sunspot)

This is a plugin to add some useful tasks to rails.

## Installation

Add this line to your application's Gemfile:

    gem 'h2ocube_rails_sunspot'

And then execute:

    $ bundle

    $ rails g h2ocube_rails_sunspot

Add sunspot to spec/spec_helper.rb

    config.before(:all, search: true) do
      SunspotTest.setup_solr
      Sunspot.remove_all!
      Sunspot.commit
    end

Add sunspot to Capfile

    require 'capistrano/sunspot'

Sunspot tasks for Capistrano v3:

    cap sunspot:setup_solr_data_dir
    cap sunspot:link_to_solr_shared_dirs
    cap sunspot:start
    cap sunspot:stop
    cap sunspot:reindex

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
