class Stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def add(el)
    # adds an element to the stack
    @stack << el
  end

  def remove
    # removes the last element from the stack
    @stack.pop
  end

  def show
    # return a copy of the stack
    @stack.dup
  end
end

class Queue
  def initialize
    # create ivar to store queue
    @queue = []
  end

  def enqueue(el)
    # adds an element to the queue
    @queue << el
  end

  def dequeue
    # removes the first element from the queue
    @queue.shift
  end

  def show
    # return a copy of the queue
    @queue.dup
  end

end

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    remove(key)
    @map << [key, value]
  end

  def lookup(key)
    pair = @map.select { |k, v| k == key }
    return pair[0][1] unless pair.length == 0
    nil
  end

  def remove(key)
    @map.reject! { |k, v| k == key }
  end

  def show
    # need to be deep copy of map,
    # otherwise if assign it to another var the original will also change
    # following code won't work
    # duplicate = self.dup
    # duplicate
    @map.deep_dup
  end

end

class Array
  def deep_dup
    result = []
    self.each do |i|
      if i.is_a?(Array)
        result << i.deep_dup
      else
        result << i
      end
    end
    result
  end
end
