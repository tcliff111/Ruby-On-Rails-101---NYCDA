

#Takes in a first name, last name, and title and returns
#a name string that is an appropriate form based on which
#of the three are defined and which are nil
def full_name(first_name, last_name, title)
  # Example comment line

  #Declares a variable named "name", but gives it no value (well a nil value technically)
  name = nil

  #If title, first_name, and last_name are defined (and not nil) then name would be
  # in the form "Title First Last".
  if title && first_name && last_name
    name = title + " " + first_name + " " + last_name
  #If not then we check if title and last_name are not nil.  If so we set name to the form
  # "Title Last"
  elsif title && last_name
    name = title + " " + last_name
  #If not then we check if first_name and last_name are not nil.  If so the name would be in the
  #form "First Last".
  elsif first_name && last_name
    name = first_name + " " + last_name
  #If not then we check if first_name is not nil.  (So this will run if first is defined
  #and last is nil, regardless of whether title is nil or not).  If this is the case, name would
  # be set to the form "First".
  elsif first_name
    name = first_name
  #Else we throw an exception which prints out "Oh no, that doesn't look like a name" and
  # terminates the program.  This only runs if first_name is nil and at least one of the others
  # is nil.
  else
    raise "Oh no, that doesn't look like a name"
  #We end the if-else block
  end
  #We return the name variable which is set to some form above based on which parameters are nil
  return name
#We end the defined method
end

#1
def add(x, y)
  x + y
end

#2
numb = add(4, 7)
puts numb

#3
def join_strings(x, y)
  str = add(x, " ")
  add(str, y)
end

puts join_strings("Goodbye", "World")

#4
#puts prints a value to the terminal and a new line character
#returning a value is what you would do sometimes at the end of a method.  It doesn't
#print the value to the terminal, it simply allows you access to a value upon calling
#that method which you could use right away (ex. printing it with puts) or save it
#into a variable


