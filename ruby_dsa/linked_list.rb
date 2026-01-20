class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
      return
    end

    temp = @head
    while temp.next != nil
      temp = temp.next
    end
    temp.next = new_node
  end

  def delete(value)
    return puts "List is empty" if @head.nil?

    if @head.data == value
      @head = @head.next
      puts "#{value} deleted"
      return
    end

    prev = nil
    curr = @head

    while curr != nil && curr.data != value
      prev = curr
      curr = curr.next
    end

    if curr.nil?
      puts "#{value} not found"
    else
      prev.next = curr.next
      puts "#{value} deleted"
    end
  end

  def search(value)
    temp = @head
    pos = 0

    while temp != nil
      return "Found #{value} at position #{pos}" if temp.data == value
      temp = temp.next
      pos += 1
    end

    "#{value} not found"
  end

  def display
    if @head.nil?
      puts "List is empty"
      return
    end

    temp = @head
    while temp != nil
      print "#{temp.data} -> "
      temp = temp.next
    end
    puts "nil"
  end
end


ll = LinkedList.new

ll.append(10)
ll.append(20)
ll.append(30)
ll.display    

puts ll.search(20)   

ll.delete(10)
ll.display    
ll.delete(100)
