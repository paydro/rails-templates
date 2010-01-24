# Clear out README
run "echo '' > README"

gem 'mislav-will_paginate', :lib => 'will_paginate'

git :init

file ".gitignore", <<-END
.DS_Store
log/*.log
tmp/**/*
tmp/*
config/database.yml
db/*.sqlite3
END

run "touch tmp/.gitignore log/.gitignore vendor/.gitignore"
run "cp config/database.yml config/example_database.yml"

git :add => ".",
git :commit => "-m 'initial commit'"

