begin
  raise "Error occurred"
rescue Exception => e
  puts "Rescued: #{e.message}"
else
  puts "No exceptions raised."
ensure
  puts "This will always execute."
end