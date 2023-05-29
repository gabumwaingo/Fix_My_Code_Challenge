###
#
#  Sort integer arguments (ascending) 
#
###


result = []

ARGV.each do |arg|
    # skip if not an integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i

    # insert result at the right position
    is_inserted = false
    i = 0
    while !is_inserted do
        if i == result.size || result[i] > i_arg
            result.insert(i, i_arg)
            is_inserted = true
        end
        i += 1
    end
end

puts result.join("\n")

