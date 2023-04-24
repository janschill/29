source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

gem "rails", github: "rails/rails", branch: "main"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  gem "mrsk"
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

gem "ulid", "~> 1.4"
gem "importmap-rails", "~> 1.1"
gem "hotwire-rails"
gem "redis"

