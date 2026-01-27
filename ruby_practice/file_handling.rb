file = File.new("ruby_practice/file.txt", "w+")
file.write("""Appended line1.
Appended line2.
Appended line3.
Appended line4.
Appended line5.""")
file.rewind
content = file.read
file.close
puts content