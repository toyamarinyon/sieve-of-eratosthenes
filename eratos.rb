#!/usr/bin/env ruby

x = ARGV[0].to_i

# Step 1
search_list = [*2..x]
primzahlen_list = []


# Step 3
while search_list[0] < Math.sqrt(x) do
  # Step 2
  primzahlen = search_list.shift
  primzahlen_list << primzahlen
  search_list.delete_if {|i| i % primzahlen == 0}
end

# Step 4
primzahlen_list.concat(search_list)

p primzahlen_list
