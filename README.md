# Linked Lists in Ruby

This project creates a Ruby LinkedList class to mimic the behavior of the linked list data structures found in other programming languages. [This project](https://www.theodinproject.com/courses/ruby-programming/lessons/linked-lists) is part of the [The Odin Project](https://www.theodinproject.com) curriculum.

A **linked list** is a linear collection of data elements, where each element contains some sort of data or value and a pointer to the next element in the list. In the list, "head" refers to the first element, and "tail" refers to the last element. 

[ NODE (head) ] -> [ NODE ] -> [ NODE ] -> [ NODE (tail) ] -> nil

Along with the Node class, the LinkedList class contains the following functionality:

1. `#append` adds a new node to the end of the list.
2. `#prepend` adds a new node to the start of the list.
3. `#size` returns the total number of nodes in the list.
4. `#head` returns the first node in the list.
5. `#tail` returns the last node in the list.
6. `#at(index)` returns the node at the given index.
7. `#pop` removes the last element from the list.
8. `#contains?(value)` returns true if the passed in value is in the list and returns false otherwise.
9. `#find(value)` returns the index of the node containing the given value or `nil` if the value is not found.
10. `#to_s` represents the LinkedList object as a string so that they can be printed out and previewed in the console. The format of this string is, "( data ) -> ( data ) -> ( data ) -> nil".

## Development versions
 - Ruby 2.5.3
 - RSpec 3.8

## Using this code

1. Fork this repository on GitHub.
2. Clone your forked reposity onto your local computer.
3. To run the tests, `cd` into the main directory and then run `rspec`.
