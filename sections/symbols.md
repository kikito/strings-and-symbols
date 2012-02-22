<!SLIDE subsection>
 
# Symbols #

<!SLIDE execute>
    @@@ ruby
    # Always the same object #

    a = :hello
    b = :hello
    a.object_id == b.object_id # true

<!SLIDE command>
#String#to_sym#

<!SLIDE execute>
    @@@ ruby
    # Always the same object #

    a = :hello
    b = "hello".to_sym
    a.object_id == b.object_id # true

<!SLIDE execute>
    @@@ ruby
    # Always the same object #

    a = :hello
    b = ("hel" + "lo").to_sym
    a.object_id == b.object_id # true

<!SLIDE>
# Alternative notation #

<!SLIDE execute>
    @@@ ruby
    # Alernative notation #

    a = :hello
    b = :"hello"
    a.object_id == b.object_id # true

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


<!SLIDE bullets>
# Immutability #

* Can't Modify
* Can't GC


