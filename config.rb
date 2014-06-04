# -----------------------------
#  Set Configurations
# -----------------------------

set :css_dir   , 'public/stylesheets/'
set :images_dir, 'public/images/'
set :layout    , 'development'

# -----------------------------
#  Activate items
# -----------------------------

activate :livereload

# -----------------------------
#  Extensions
# -----------------------------

class MinifyEmails < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
    app.after_build do |builder|
      builder.run_ruby_script './minify_emails.rb'
    end
  end
end

::Middleman::Extensions.register(:minify_emails, MinifyEmails)

# -----------------------------
#  Build Configuration
# -----------------------------

configure :build do
  activate :minify_emails
  set      :layout     , "production"
  set      :http_prefix, "url_assets"
  set      :images_dir , 'email/images/site/'
end