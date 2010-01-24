
load_template "http://github.com/paydro/rails-templates/raw/master/testing.rb"

gem "rspec", :lib => false
gem "rspec-rails", :lib => false
gem "cucumber"

rake "gems:install", :sudo => true

generate :rspec
generate :cucumber, "--rspec"

git :rm => "-r test"
run "rm -rf test" # Make sure it gets removed

git :add => "."
git :commit => "-m 'Add testing frameworks'"
