def unique_names(names_list1, names_list2)
  concat_arrays(names_list1, names_list2)
end

def concat_arrays(array1, array2)
  array = []
  array.concat(array1, array2).uniq
end

names_list1 = %w(Ava Emma Olivia)
names_list2 = %w(Olivia Sophia Emma)

puts unique_names(names_list1, names_list2)