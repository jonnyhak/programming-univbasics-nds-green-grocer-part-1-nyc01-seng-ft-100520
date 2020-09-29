def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |item|
    item.each do |k, v|
      if v == name
        return item
      end
    end
  end
  nil 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  arr = []
  cart.each_with_index do |item, i|
    new_cart_item = find_item_by_name_in_collection(cart[i][:item], arr)
    if !(new_cart_item) 
      new_cart_item = {
        :item => cart[i][:item],
        :price => cart[i][:price],
        :clearance => cart[i][:clearance],
        :count => 1
      }
      arr << new_cart_item
    else
      new_cart_item[:count] += 1
    end
  end
  
  arr 
end


  