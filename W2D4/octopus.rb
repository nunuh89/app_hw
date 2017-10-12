fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

#Sluggish Octopus
# O(n^2)

def sluggish_find(fishes)

  fishes.each do |f1|
    bigger_than_others = false
    fishes.each do |f2|
      bigger_than_others ||= (f1 >= f2)
      return f1 if bigger_than_others
    end
  end
  nil
end

# Dominant Octopus
# O(n log n)

def dominant_find(fishes)
  prc = Proc.new { |x, y| y.length <=> x.length }
  sorted_fishes = fishes.merge_sort(&prc)
  sorted_fishes.last
end

class Array
  def merge_sort(&prc)
    return self if count <= 1
    prc ||= Proc.new { |x, y| x <=> y }
    mid = count / 2
    sorted_left = self.take(mid).merge_sort(&prc)
    sorted_right = self.drop(mid).merge_sort(&prc)
    Array.merge(sorted_left, sorted_right, &prc)
  end

  def self.merge(left, right, &prc)
    r = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        r << left.shift
      when 0
        r << left.shift
      when 1
        r << right.shift
      end
    end
    r.concat(left)
    r.concat(right)
    r
  end
end

# Clever Octopus
# O(n)

def clever_find(fishes)
  biggest_fish = ''
  fishes.each do |f|
    biggest_fish = f if biggest_fish.length < f.length
  end
  biggest_fish
end
# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir_str, tiles)
  tiles.each_with_index do |e,i|
    return i if e == dir_str
  end
  nil
end

tiles_hash = {
"up" => 1,
"right-up" => 2,
"right" => 3,
"right-down" => 4,
"down" => 5,
"left-down" => 6,
"left" => 7,
"left-up" => 8
}

def fast_dance(dir_str, tiles_hash)
  return tiles_hash[dir_str]
end
