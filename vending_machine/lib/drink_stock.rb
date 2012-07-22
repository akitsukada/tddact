# -*- coding:UTF-8 -*-

class DrinkStock
  attr_accessor :stockhash

  def initialize
    @stockhash =  {
      coke:{price:120, amount:5, name:"コーラ"}
    }
  end

end
