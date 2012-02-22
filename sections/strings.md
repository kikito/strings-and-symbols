<!SLIDE subsection> 
# Strings #


<!SLIDE execute>
    @@@ ruby
    # Same object by reference #
    a = "hello"
    b = a
    a.object_id == b.object_id # true

<!SLIDE execute>
    @@@ ruby
    # Two literals are not the same object #
    a = "hello"
    b = "hello"
    a.object_id == b.object_id # FALSE

<!SLIDE execute>
#Mutability#

<!SLIDE>
    @@@ ruby
    # Plenty of ways of modifying a string
    a = "hello"
    a.upcase!
    a == "HELLO" # true

<!SLIDE command>
#Object#to_s#

<!SLIDE execute>
    @@@ ruby
    # On strings, to_s returns self
    a = "hello"
    b = b.to_s
    a.object_id == b.object_id # true

<!SLIDE execute>
    @@@ ruby
    # In general, it returns a new object
    a = "hello"
    b = :hello.to_s
    a.object_id == b.object_id # FALSE

<!SLIDE bullets>

# Implicit calls to to_s #

* string interpolation: `"{a} {b}"`
* rendering - views, JSON ...
* etc.


<!SLIDE bullets>

# `Symbol#to_s` #

* Creates a new string, every time it's called

<!SLIDE execute>
    @@@ ruby
    a = :hello
    puts a -- creates one string

<!SLIDE execute>
    @@@ ruby
    a = :hello
    1000.times{ puts a } # creates 1000 

<!SLIDE>
# Conclusions #

<!SLIDE bullets>
# Pro: Mutability #

* LOTS of methods

<!SLIDE bullets>
# Con: Complexity #

* LOTS of methods

<!SLIDE bullets>
# Pro: GC #

* Unlike symbols, they get GC'ed

<!SLIDE bullets>
# Con: Memory #

* Easy to generate too many objects

<!SLIDE bullets>
# String Concatenation #

<!SLIDE execute>
    @@@ ruby
    # Lots of intermediate strings
    a = "h" + "e" + "l" + "l" + "o"

    # Equivalent to:
    s1 = "h" + "e"
    s2 =  s1 + "l"
    s3 =  s2 + "l"
    a  =  s3 + "o"

<!SLIDE execute>
    @@@ ruby
    # Less intermediate strings
    a = "#{'h'} #{'e'} #{'l'} #{'l'} #{'o'}"

    # Doesn't scale:
    # * recursive methods
    # * loops

<!SLIDE execute>
    @@@ ruby
    # StringIO works in all cases

    require 'stringio'

    b = StringIO.new
    b << "h" << "e" << "l" << "l" << "o"
    a = b.string

    # Uglier syntax


<!SLIDE execute>
    @@@ ruby
    # Array#join also works

    b = [ "h", "e", "l", "l", "o" ]
    a = b.join

    # A bit more overhead than StringIO

<!SLIDE>
# That `%w` thing ... #

<!SLIDE execute>
    @@@ ruby
    # That %w thing ... #

    b = %w[ h e l l o ]
    a = b.join

<!SLIDE execute>
    @@@ ruby
    # That %w thing ... #

    a = %w[ h e l l o ].join

<!SLIDE execute>
    @@@ ruby
    # That %w thing ... #

    a = %w( h e l l o ).join

<!SLIDE execute>
    @@@ ruby
    # That %w thing ... #

    a = %w{ h e l l o }.join
 
<!SLIDE execute>
    @@@ ruby
    # That %w thing ... #

    a = %w+ h e l l o +.join

<!SLIDE execute>
    @@@ ruby
    # That %w thing ... #

    a = %w~ h e l l o ~.join

<!SLIDE execute>
    @@@ ruby
    # That %w thing ... #

    a = %w# h e l l o #.join

<!SLIDE execute>
    @@@ ruby
    # That %w thing ... #

    a = %w. h e l l o ..join


<!SLIDE execute>
    @@@ ruby
    # That %w thing ... #

    a = %w.foo bar baz

    1..join.size

<!SLIDE bullets>
# Other operators #

*  % %q %Q %W %r %s %x
* ... but no way of making an array of symbols
