# This prints each character and teh equivalent ASCII based on the chr method
File.open("testfile.txt") do |file|
  file.each_byte.with_index do |ch, index|
    print "#{ch.chr}:#{ch} "
    break if index > 10
  end
end
