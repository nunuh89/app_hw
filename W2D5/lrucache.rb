class LRUCache
    def initialize(size)
      @cache = []
      @size = size
    end

    def count
      # returns number of elements currently in cache
      @cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      # if include; delete first
      if @cache.include?(el)
        @cache.delete(el)
      # if cache is full, remove first element
      elsif @cache.count == @size
        @cache.shift
      end
      #always add new element to the end
      @cache << el
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @cache
    end

    private
    # helper methods go here!

  end
