
load_file "http://github.com/paydro/rails-templates/raw/master/testing.rb"

gem "rspec", :lib => false
gem "rspec-rails", :lib => false
gem "cucumber"

rake "gems:install", :sudo => true

generate :rspec
generate :cucumber, "--rspec"

git :rm => "-r test"

git :add => "."
git :commit => "-m 'Add testing frameworks'"
