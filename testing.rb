
gem 'mocha'
gem "thoughtbot-factory_girl", :lib => "factory_girl", :source => "http://gems.github.com"
gem "webrat"
gem "rspec", :lib => false
gem "rspec-rails", :lib => false
gem "cucumber"

rake "gems:install", :sudo => true

generate :rspec
generate :cucumber, "--rspec"

git :rm => "-r test"

git :add => "."
git :commit => "-m 'Add testing frameworks'"
