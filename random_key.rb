def random_key
  letters = ("a".."z").to_a + ("A".."Z").to_a
  numbers = ("0".."9").to_a
  symbols =  ["!","@","#","$","%","^","&","*"]

  key = Array.new
  2.times {key << letters.shuffle.pop}
  2.times {key << numbers.shuffle.pop}
  key << symbols.shuffle.pop


  key.shuffle!
  first = Array.new
  first << letters.shuffle.pop.upcase
  random = first << key
  random = random.flatten.join
end

alphabet = []
26.times {alphabet << random_key}

all_letters = ("a".."z").to_a

decoder = Hash[all_letters.zip(alphabet)]

p decoder



