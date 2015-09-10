require "rubygems"
require "bundler/setup"

require "pry-byebug" # binding.pry to debug!

# Coverage
require "codeclimate-test-reporter"
ENV['CODECLIMATE_REPO_TOKEN'] = ""
CodeClimate::TestReporter.start

require 'rspec/autorun'

# This Gem
require "spring_to_csharp"

Dir[File.dirname(__FILE__) + '/support/**/*.rb'].each {|file|
  require file
}

# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
