-- A few things to think about:

-* What is the return value of yielding a character to a block?
-* How can you ensure your .select method can respond appropriately to being passed an argument of an empty collection?

def my_select(collection)
  if block_given?
    i = 0  
    new_collection = []
    
  while i < collection.length 
    new_collection << yield(collection[i].select { |var| block }
    i += 1 
      
  else
    puts "Hey! No block was given!"
  end
end
