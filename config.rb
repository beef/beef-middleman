### 
# Compass
###


# Change Compass configuration
compass_config do |config|
  config.output_style = :expanded
  config.sass_options = {:debug_info => true}
end

# Compass Options
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

# Clean URLs
activate :directory_indexes

# LiveReload
activate :livereload

# Sprockets Fingerprint
activate :asset_hash


# Build-specific configuration
configure :build do

  compass_config do |config|
    config.sass_options = {:debug_info => false}
    config.sass_options = {:line_comments => false}
    config.output_style = :compressed
  end

  activate :minify_css

  

end