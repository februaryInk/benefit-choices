source 'https://rubygems.org'

# The essential Rails gem.
gem 'rails', '~> 5.X'

# Add browser-specific CSS prefixes automatically.
gem 'autoprefixer-rails'

# Import the Font Awesome icons.
gem 'font-awesome-rails'

# Use HAML markup.
gem 'haml-rails', '~> 0.9'

# Use normalize.css to standardize how browsers render elements.
gem 'normalize-rails'

# Use the PostgreSQL database gem.
gem 'pg', '0.18.4'

# Use stylesheets to style emails rather than having to write everything inline.
gem 'premailer-rails'

# Use SCSS for stylesheets.
gem 'sass-rails', '~> 5.0'

# Make navigating the application faster.
gem 'turbolinks', '~> 5.x'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

source 'https://rails-assets.org' do
  # Import the lightweight Unsemantic CSS grid.
  gem 'rails-assets-unsemantic'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console.
  gem 'byebug', platform: :mri
  
  # Listen to file modifications.
  gem 'listen', '~> 3.0.5'
end

group :development do
  # Load environment variables from .env.
  gem 'dotenv-rails'
  
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
end

group :production do
  # Compress assets on Heroku.
  gem 'heroku-deflater'
  
  # Use Puma as the web server for Heroku.
  gem 'puma'

  # Compile static assets in Heroku with Rails 12 Factor.
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem.
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
