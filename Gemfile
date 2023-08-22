source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# gems
ruby "3.1.2"
gem "rails", "~> 7.0.7"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"

gem "bootstrap", "~> 5.2"
gem "autoprefixer-rails"
gem "font-awesome-sass", "~> 6.1"
gem "simple_form", github: "heartcombo/simple_form"

# own gems

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "dotenv-rails"
end

group :development do
  gem "web-console"


end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "devise"
