require 'rubygems'
require 'premailer'

# -------------------------------------------------------------------------------------
# LIST DIRS
# -------------------------------------------------------------------------------------


Dir["./minified/templates/**/*.html"].each do |item|
  next if item == '.' or item == '..' or File.directory?(item)

  puts "-" * 100
  puts "Arquivo: \n#{item}"

  premailer = Premailer.new("#{item}", :warn_level => Premailer::Warnings::SAFE)

  # Write the HTML output
  File.open("#{item}", "w") do |fout|
    fout.puts premailer.to_inline_css
  end

  # Output any CSS warnings
  premailer.warnings.each do |w|
    puts "#{w[:message]} (#{w[:level]}) may not render properly in #{w[:clients]}"
  end

end