def change_code_to_ausschreiben_verboten
  code = <<~RUBY
    puts "Ausschreiben verboten!"
  RUBY

  File.open(__FILE__, 'w') do |file|
    file.puts(code)
  end
end

if File.basename(__FILE__) == "exotic.rb"
  if File.read(__FILE__) == "Ausschreiben verboten!\n"
    puts "Code has already been changed!"
  else
    change_code_to_ausschreiben_verboten
    eval(File.read(__FILE__))
  end
else
  puts "This code is not intended for this filename."
end
