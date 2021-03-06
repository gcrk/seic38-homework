
class SinglyLinkedList

include Enumerable

  class Node
    attr_accessor :value, :next

    def initialize(value)
      @value = value
      @next = nil
    end
  end

  attr_accessor :head

  def initialize(value=nil)
    @head = Node.new(value) unless value.nil?
  end

  def prepend(value)
    node = Node.new
    node.next = @head
    @head = node
  end

  def append(value)
    last.next = Node.new value
  end

  def last
    current_node = @head
    while current_node && current_node.next
      current_node = current_node.next
    end
    current_node
  end

  def remove
    current_node = @head
    while current_node.next && current_node.next.next
      current_node = current_node.next
    end
    node_to_remove = current_node.next
    current_node.next = nil
    node_to_remove
  end

  def insert_after(node, new_value)
    current_node = @head
    index = 0
    while index < node
      current_node = current_node.next
      index += 1
    end
    end_of_list = current_node
    current_node = Node.new new_value
    current_node.next = end_of_list
    @head
  end

  def find(needle)

  end

  def reverse # non destructive
    reversed_list = SinglyLinkedList.new
    current_node = @head
    while current_node
      reversed_list.prepend(current_node.value)
      current_node = current_node.next
    end
    reversed_list
  end

  def reverse! # destructive
    @head = self.reverse.head
  end

  def each
    current_node = @head
    while current_node
      yield(current_node.value) if block_given?
      current_node = current_node.next
    end
  end

  def map

  end


end










bros = SinglyLinkedList.new
bros.prepend 'Harpo'
bros.prepend 'Groucho'
bros.prepend 'Chico'

require 'pry'
binding.pry



# SinglyLinkedList::Node.new
