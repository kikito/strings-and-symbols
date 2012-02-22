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

<!SLIDE command>
#Object#to_s#

<!SLIDE execute>
    @@@ ruby
    # On strings, it returns a reference to self
    a = "hello"
    b = b.to_s
    a.object_id == b.object_id # true

<!SLIDE execute>
    @@@ ruby
    # Nearly everywhere else, it returns a new string
    a = "hello"
    b = :hello.to_s
    a.object_id == b.object_id # FALSE

<!SLIDE bullets>

# Implicit calls to to_s #

* puts
* string interpolation/addition




    
