require 'rubygems'
require 'premailer'

dirs = ['./build/nike']

# -------------------------------------------------------------------------------------
# LIST DIRS
# -------------------------------------------------------------------------------------

dirs.each do |dir|
  puts "-" * 100
  puts "Diretorio: \n#{dir}"
  puts "Conteudo"

  Dir.foreach(dir) do |item|
    next if item == '.' or item == '..' or File.directory?(dir + "/" + item)

    premailer = Premailer.new("#{dir}/#{item}", :warn_level => Premailer::Warnings::SAFE)

    # Write the HTML output
    File.open("#{dir}/#{item}", "w") do |fout|
      fout.puts premailer.to_inline_css
    end

    # Output any CSS warnings
    premailer.warnings.each do |w|
      puts "#{w[:message]} (#{w[:level]}) may not render properly in #{w[:clients]}"
    end

  end

end