# ask for list of todo

# and print them back to us

# puts "what is your next todo?"

# next_todo=gets

# puts "So this is your next todo"

# puts next_todo

# puts "\n\n\n" #carriage return

# puts "[x] #{next_todo}" #String Interpolation

# "#{} this is ruby expression"

# Problem 1. Given a nested array of first names and last names, return a new array with the full names.

#  names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]

#    fill in code that will return a new array of the full names:

#     ["Jhumpa Lahiri", "J.K Rowling", ...]

# names.each{|name| puts "#{name.join(",")}"}

# FullName=names.map{|name| name.join(",")}

# puts FullName

# Problem 2. Given two arrays books and authors, merge them and print who wrote which book.

# books = ["Design as Art", "Anathem", "Shogun"]

# authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

# fill in code that will print:

#   Design As Art was written by Bruno Munari

#   Anathem was written by Neal Stephenson

# bookauthor=books.map.with_index{|book,i| "#{book} was written by #{authors[i]}"}

# puts bookauthor

# Problem 3. Print the given list of todos by category. (You haven't learned Hashes yet, so use only arrays.)

todos = [

  ['Send invoice', 'money'],

  ['Clean room', 'organize'],

  ['Pay rent', 'money'],

  ['Arrange books', 'organize'],

  ['Pay taxes', 'money'],

  ['Buy groceries', 'food']

]

# Fill in code that will print:

#   money:

#     Send invoice

#     Pay rent

#     Pay taxes

#   organize:

#     Clean room

#     Arrange books

#   food:

#     Buy groceries

# name=[]

# ans=[]

# list=todos.map{|todo| todo[1]}

#   list.uniq!

# list.each_with_index{|ls,i|

#   todoans=[]

#    todos.each_with_index{|todo,j|

#     if ls==todo[1]

# todoans.push(todo[0])

# end}

# name.push(ls)

# name.push(todoans)

# }

# ans.push(name)

# puts(ans)

# library = {

#   "rowling" => "Harry Potter",

#   "lahiri" => "Interpreter of Maladies"

# }

# puts library["lahiri"]    # This will print "Interpreter of Maladies"

# library = {}

# library["austen"] = ["Pride and Prejudice", "Sense and Sensibility"]

# library["asimov"] = ["Robots of Dawn", "I, Robot"]

# authors = library.keys

# puts "These are the authors in my catalog: #{authors.join(', ')}"

# library.each do |author, books|

#   puts "#{author.capitalize} wrote the books #{books.join(', ')}"

# end

# You shoud see this output:

#   Austen wrote the books Pride and Prejudice, Sense and Sensibility

#   Asimov wrote the books Robots of Dawn, I, Robot

# a = :name

# c = :"multiple words"  # Enclose multi-word symbols in double quotes

# # symbols are just like any other data and

# # we can put them inside arrays and hashes

# c = [:x, :y]

# library = {

#   :austen => ["a", "b"]

# }

# library[:rowling] = ["x"]

# Problem 1. Given two arrays books and authors, merge them into a single Hash. The keys of the Hash must be the lower-cased firstname of the authors, and must be symbols.

# books = ["Design as Art", "Anathem", "Shogun"]

#   authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

# fill in code that will create a Hash that looks like:

#   {

#     :bruno => "Design as Art",

#     :neal => "Anathem",

#     ...

#   }

#  name= authors.map.with_index{|auth,i| "#{auth.split(" ")[0].downcase}=>\"#{books[i]}\" "}

# name=authors.map{|auth| auth.split(" ")[0].downcase.to_sym}

# ans={};

# books.each.with_index{|book,i| ans.merge!({name[i]=>book})}

# books.each.with_index{|book,i| ans.store(name[i],book)} #both are same

# puts ans

# Problem 2. Given this list of todos, create a Hash keyed by category, whose value is an array containing all the todos in that category. The keys of the Hash must be a symbol.

todos = [

  ['Send invoice', 'money'],

  ['Clean room', 'organize'],

  ['Pay rent', 'money'],

  ['Arrange books', 'organize'],

  ['Pay taxes', 'money'],

  ['Buy groceries', 'food']

]

# Fill in code that will create a Hash that looks like:

#   {

#     :money =>

#       ["Send invoice", "Pay rent", ...],

#     ...

#   }

# ans={}

# list=todos.map{|todo| todo[1]}

#   list.uniq!

# list.each{|ls|

#   name=[]

# todos.each{|todo|

# if ls==todo[1]

# name.push(todo[0])

# end

# }

# ans[ls]=name

# }

# puts ans

#  recipients = [

#     ["Srinath"],

#     ["Jadeja", "Kambli"],

#     ["Sachin", "Sidhu", "Kumble"]

#   ]

#   emails = recipients[0]

#   if emails.length == 1

#     puts "Hello #{emails[0]}!"

#   elsif emails.length == 2

#     puts "Hello #{emails[0]} and #{emails[1]}!"

#   elsif emails.length > 2

#     puts "Hello #{emails[0..-2].join(', ')}, and #{emails.last}!"

#   end

#   emails = recipients[1]

#   if emails.length == 1

#     puts "Hello #{emails[0]}!"

#   elsif emails.length == 2

#     puts "Hello #{emails[0]} and #{emails[1]}!"

#   elsif emails.length > 2

#     puts "Hello #{emails[0..-2].join(', ')}, and #{emails.last}!"

#   end

#   emails = recipients[2]

#   if emails.length == 1

#     puts "Hello #{emails[0]}!"

#   elsif emails.length == 2

#     puts "Hello #{emails[0]} and #{emails[1]}!"

#   elsif emails.length > 2

#     puts "Hello #{emails[0..-2].join(', ')}, and #{emails.last}!"

#   end

recipients = [

  ['Srinath'],

  %w[Jadeja Kambli],

  %w[Sachin Sidhu Kumble]

]

# recipients.each do |emails|

#   if emails.length == 1

#     puts "Hello #{emails[0]}!"

#   elsif emails.length == 2

#     puts "Hello #{emails[0]} and #{emails[1]}!"

#   elsif emails.length > 2

#     puts "Hello #{emails[0..-2].join(', ')}, and #{emails.last}!"

#   end

# endrecipients = [

#   ["Srinath"],

#   ["Jadeja", "Kambli"],

#   ["Sachin", "Sidhu", "Kumble"]

# ]

# recipients.each do |emails|

#   if emails.length == 1

#     puts "Hello #{emails[0]}!"

#   elsif emails.length == 2

#     puts "Hello #{emails[0]} and #{emails[1]}!"

#   elsif emails.length > 2

#     puts "Hello #{emails[0..-2].join(', ')}, and #{emails.last}!"

#   end

# end

#   def generate_salutation(emails)

#   if emails.length == 1

#     "Hello #{emails[0]}!"

#   elsif emails.length == 2

#     "Hello #{emails[0]} and #{emails[1]}!"

#   elsif emails.length > 2

#     "Hello #{emails[0..-2].join(', ')}, and #{emails.last}!"

#   end

# end

# recipients = [

#   ["Srinath"],

#   ["Jadeja", "Kambli"],

#   ["Sachin", "Sidhu", "Kumble"]

# ]

# recipients.each do |emails|

#   puts generate_salutation(emails)

# end

# def avg(nums)

#   return nums.sum / nums.length.to_f

# end

# write code so the program prints:

#   Hello Mr. Mandela

#   Welcome Mr. Turing

# def salute(s1,s2)

#   s1=s1.split(" ")[2]

#     return s2.capitalize+" Mr. "+s1

# end

# puts salute("Nelson Rolihlahla Mandela", "hello")

# puts salute("Sir Alan Turing", "welcome")

def wrap_div
  "<div>#{yield}</div>"
end

puts wrap_div { 'hello!' }

# <div>hello!</div>
