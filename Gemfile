source "https://rubygems.org"
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "config"
gem "coffee-rails", "~> 4.2"
gem "bcrypt", "3.1.11"
gem "bootstrap-sass", "3.3.7"
gem "faker", "1.7.3"
gem "jbuilder", "~> 2.5"
gem "mysql2", "~> 0.4.10"
gem "puma", "~> 3.7"
gem "rails", "~> 5.1.4"
gem "sass-rails", "~> 5.0"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "will_paginate", "3.1.5"
gem "bootstrap-will_paginate", "1.0.0"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end
group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "pry-rails", "~> 0.3.4"
gem "rubocop", require: false
gem "autoprefixer-rails"
gem "elasticsearch-model"
gem "elasticsearch-rails"
