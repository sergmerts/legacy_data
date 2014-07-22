def convert_legacy(hash)
    new_hash = {}
    hash.each do |key, value|
      value.each do |x|
        new_hash[x] = key
    end
  end
  new_hash
end
puts convert_legacy({ 1  => ["B", "C"], 2 => ["F"]})
