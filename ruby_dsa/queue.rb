class Queue
  def initialize(max_size = 5)
    @queue = []
    @max_size = max_size
  end

  def enqueue(item)
    if is_full?
      puts "Queue overflow"
    else
      puts "Pushed #{item}"
      @queue.push(item)
    end
  end

  def dequeue
    if is_empty?
      puts "Queue underflow"
    else
      item = @queue.shift
      puts "Removed #{item}"
    end
  end

  def is_empty?
    @queue.empty?
  end

  def is_full?
    @queue.size == @max_size
  end

  def display
    if is_empty?
      puts "Queue is empty"
    else
      puts "Queue: #{@queue.join(' -> ')}"
    end
  end

end

q = Queue.new(3)
q.enqueue(1)
q.enqueue(2)
q.enqueue(3)
q.enqueue(4)

q.display

q.dequeue
q.dequeue