require_relative 'lib/look_and_say'

# Output:
#
# 1
# 11
# 21
# 1211
# 111221
# 312211
# 13112221
# 1113213211
# 31131211131221
# 13211311123113112211

LookAndSay.new.take(10).each do |value|
  puts value
end
