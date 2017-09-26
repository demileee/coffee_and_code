movie_array = [
  ['Alfonso Cuaron', 'Gravity'],
  ['Spike Jonze', 'Her'],
  ['Martin Scorsese', 'The Wolf of Wall Street']
]

pets = [
  { type: "dog", number: 12 },
  { type: "cat", number: 15 },
  { type: "fish", number: 23 }
]

def hash(array)
  return array.inject({}) {|r, (k, v)| r[k] = v; r }
end

puts hash(movie_array)

def totalpets(array)
  count = []
  array.each { |hash|
    hash.inject(count) {|k, v|
      if k == :number
        count << v
      end
    }
  }
  return count.inject {|sum, n| sum + n}
end

puts totalpets(pets).inspect
