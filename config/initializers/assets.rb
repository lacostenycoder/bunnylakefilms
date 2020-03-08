# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.1'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( .svg .eot .woff .ttf .otf)
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/
# HTML5 Shiv
# Rails.application.config.assets.precompile += %w( html5shiv.js )

# Jquery Extensions
# Rails.application.config.assets.precompile += %w( jquery.easing-1.3.js )

# Vendor Images
Rails.application.config.assets.precompile += Dir.glob File.join(Rails.root,'vendor/**/**/*.gif')
Rails.application.config.assets.precompile += Dir.glob File.join(Rails.root,'vendor/**/**/*.png')
Rails.application.config.assets.precompile += Dir.glob File.join(Rails.root,'vendor/**/**/*.svg')
Rails.application.config.assets.precompile += Dir.glob File.join(Rails.root,'vendor/**/**/*.swf')
Rails.application.config.assets.precompile += Dir.glob File.join(Rails.root,'vendor/**/**/*.xap')
Rails.application.config.assets.precompile += Dir.glob File.join(Rails.root,'vendor/**/**/*.xap')

# Alternate CSS Manifest Files
Rails.application.config.assets.precompile += %w( admin.css )
