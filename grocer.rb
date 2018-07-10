require 'pry'

def consolidate_cart(cart)
  consolidated_cart = {}
  cart.each do |hash|
    hash.each do |key, value_hash|
      consolidated_cart[key] = value_hash
      # value_hash[:count] = cart.count(hash)
    end
  end
  consolidated_cart.each do |key, value_hash|
      # binding.pry

    consolidated_cart[key][:count] = cart.count({key => value_hash})
  end

  # binding.pry
  consolidated_cart
end

def apply_coupons(cart, coupons)
  # code here
  # consolidated_cart = consolidate_cart(cart)
  coupons.each do |coupon|
    # binding.pry
    if cart.keys.include?(coupon[:item])
      cart["#{coupon[:item]} W/COUPON"] = {
        :price => coupon[:cost], :clearance => cart[coupon[:item]][:clearance], :count => coupons.count(coupon)
      }
      cart[coupon[:item]][:count] -= coupon[:num]
    end
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
