#!/usr/bin/env ruby
#
# 以下のページで紹介されているアルゴリズムを実装。
# <https://ja.wikipedia.org/wiki/エラトステネスの篩>
#

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
