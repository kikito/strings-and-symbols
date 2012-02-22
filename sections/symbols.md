<!SLIDE subsection>
 
# Symbols #

<!SLIDE>
#Immutability#

* Write only-once to memory

<!SLIDE command>
#String#to_sym#

<!SLIDE execute>
    @@@ ruby
    a = "hello".to_sym
    b = ("hel" + "lo").to_sym
<!SLIDE>

<!SLIDE command>
#Object#object_id#

<!SLIDE execute>
    @@@ ruby
    # Always the same object #

    a = :hello
    b = ("hel" + "lo").to_sym
    a.object_id == b.object_id # true

<!SLIDE execute>
    @@@ ruby
    # Always the same object #

    a = :hello
    b = :hello
    a.object_id == b.object_id # true

<!SLIDE>
# Conclusions #

<!SLIDE>
# Pro: Convenient hash key

* Basically just do `object_id`

<!SLIDE bullets>

# Con: Immutability #

* Can't Modify

<!SLIDE bullets>

# Con: No GC #

* Never collected


<!SLIDE>
# Alternative notation #

<!SLIDE execute>
    @@@ ruby
    # Symbols with spaces #

    a = "hello madrid-rb".to_sym

<!SLIDE execute>
    @@@ ruby
    # Alernative notation - spaces and hyphens #

    a = "hello madrid-rb".to_sym
    b = :"hello madrid-rb"
    a.object_id == b.object_id # true

<!SLIDE execute>
    @@@ ruby
    # Alernative notation - newlines #

    a = "hello\nmadrid-rb".to_sym
    b = :"hello\nmadrid-rb"
    a.object_id == b.object_id # true

<!SLIDE execute>
    @@@ ruby
    # Alernative notation - wtf! #

    a = "hello
    madrid-rb".to_sym
    b = :"hello
    madrid-rb"
    a.object_id == b.object_id # true

