# -----------------------------
#  Set Configurations
# -----------------------------

set :css_dir   , 'public/stylesheets/'
set :images_dir, 'public/images/'
set :layout    , 'development_nike'

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
  set      :layout     , "production_nike"
  set      :http_prefix, "http://www.casafenomenal.com.br"
  set      :images_dir , 'email/images/site/'
end