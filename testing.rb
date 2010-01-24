
config.gem 'mocha'
config.gem "thoughtbot-factory_girl", :lib => "factory_girl", :source => "http://gems.github.com"

if yes?("Do you want rspec?")
  rspec = true
  plugin "rspec", :git => "git://github.com/dchelimsky/rspec.git"
  plugin "rspec-rails", :git => "git://github.com/dchelimsky/rspec-rails.git"
  generate :rspec
  run "rm -rf test"
end

if yes?("Do you want webrat?")
  config.gem "webrat"
end

if yes?("Do you want cucumber")
  config.gem "cucumber"

  generate_args = [:cucumber]
  if rspec
    generate_args << "--rspec"
  end

  generate *generate_args
end

git :add => ".", :commit => "-m 'Add testing frameworks'"
