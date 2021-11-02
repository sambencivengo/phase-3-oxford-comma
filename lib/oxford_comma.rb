require "pry"

def oxford_comma(array)
  if array.length == 1
    array.join
    elsif array.length == 2
      array.join(" and ")
      elsif array.length >= 3
        # remove last element, store as variable
        last_el = array.pop
        # interpolate last element to include ", and ", store as variable
        and_el = ", and #{last_el}"
        # join mutated array with commas
        joined = array.join(", ")
        # concat new strings and return result
        oxford = joined + and_el
        oxford
    end
end



puts oxford_comma ["fiddleheads", "okra", "kohlrabi", "something", "something else"]
