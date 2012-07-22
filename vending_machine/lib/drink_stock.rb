# -*- coding:UTF-8 -*-

class DrinkStock
  attr_accessor :stockhash

  def initialize
    @stockhash =  {
      coke:{price:120, amount:5, name:"コーラ"}
    }
  end

  def buyable_items(money)
    [:coke]  
  end

  def drink_price(drink_id)
    @stockhash[drink_id][:price]
  end

  def drink_amount(drink_id)
    @stockhash[drink_id][:amount]
  end

  def drink_name(drink_id)
    @stockhash[drink_id][:name]
  end
end
