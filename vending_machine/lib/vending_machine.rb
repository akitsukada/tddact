#!/usr/bin/env ruby
# -*- coding:UTF-8 -*-
require 'drink_stock'

class VendingMachine
    attr_reader :received_total_money

    def initialize
       @received_total_money = 0
       @accept_money_list = [10, 50, 100, 500, 1000]
       @drinkstock = DrinkStock.new
    end

    def receive(money)
        if @accept_money_list.index(money)
            @received_total_money += money
            return true
        end
        false
    end

    def refund
      return_money = @received_total_money
      @received_total_money = 0
      return_money
    end

    def buyable_items
      @drinkstock.buyable_items(@received_total_money)
    end

    def to_sale
      return true if self.buyable_items != []
      return false
    end
end
