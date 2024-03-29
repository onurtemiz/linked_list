class LinkedList
  attr_accessor :head, :tail
  def initialize(head = nil, tail = nil)
    @head = head
    @tail = tail
  end 

  def append (node)
    new_node = Node.new(node)
    if @head == nil
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def prepend(node)
    new_node = Node.new(node)
    if @head == nil
      @head = new_node
      @tail = new_node
    else
      next_node = @head
      @head = new_node
      new_node.next_node = next_node
      
    end
  end

  def pop
    if @head != nil
    previous = nil
    current = @head
    until current == @tail
      temp = current
      current = current.next_node
      previous = temp
    end
    @tail = previous
    previous.next_node = nil
  end
  end


  def at(index)
    return nil if self.size > index || index < 0
    if @head == nil
      return nil
    else
      current = @head
    end
    (index).times do ||
      current = current.next_node
    end
    current.value


  end

  def find(data)
    if contains?(data) == false
      nil
    else
      index = 0
      current = @head
      until current.value == data
        index += 1
        current = current.next_node
      end
      index
    end
  end

  def contains?(val)
    index = 0
    contain = false
    current = @head
    until current == nil
      if current.value == val
        contain = true
      end
      current = current.next_node
      index += 1
    end
    contain
  end

  def size
    total = 0
    current = @head
    until current == nil
      total += 1
      current = current.next_node
    end
    total
  end

  def head
    @head == nil ? nil : @head.value
  end

  def tail
    @tail == nil ? nil : @tail.value
  end

  def to_s
    str = ''
    current = @head
    until current == nil
      str += "(#{current.value}) => "
      current = current.next_node
    end
    str += 'nil' 
    str
  end
end

class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

list = LinkedList.new
p list.size
p list.head
p list.tail
p list.at(5)
p list.pop
p list.contains?(7)
p list.find(6)
puts list
list.append(5)
list.append(6)
list.append(4)
list.prepend(9)
p list.size
p list.head
p list.tail
p list.at(5)
p list.pop
p list.contains?(7)
p list.find(6)
puts list