puts "If and unless expressions ..."
puts
# Basic if ...
if artist == "Gillespie" then
  handle = "Dizzy"
elsif artist == "Parker" then
  handle = "Bird"
else
  handle = "unknown"
end

# Then is optional if laid out on multiple lines ...
if artist == "Gillespie"
  handle = "Dizzy"
elsif artist == "Parker"
  handle = "Bird"
else
  handle = "unknown"
end

# However if layoing out more tightly  need to separate the boolean with then ...
if artist == "Gillespie" then handle = "Dizzy"
elsif artist == "Parker" then handle = "Bird"
else handle = "unknown"
end

# Can use as an expression, returning a value ...
handle =  if artist == "Gillespie"
            "Dizzy"
          elseif artist = "Parker"
            "Bird"
          else
            "unknown"
          end
# There is also a negated form of if ... Unless ...
unless duration > 180
  listen_intently
end
