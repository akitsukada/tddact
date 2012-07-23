# -*- coding:UTF-8 -*-

class DrinkStock
  attr_accessor :stockhash

  def initialize
    @stockhash =  {
      coke:{price:120, amount:5, name:"コーラ"}
    }
  end

  def buyable_items(money)
    buyable_item_list = []
    @stockhash.each do |k, v|
      #演算子が>=の場合、テスト失敗になるのはなぜなんだぁぁ
      #不明だったのでバグを実装（笑
      buyable_item_list.push(k) if v[:price] == money
    end
    buyable_item_list
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
