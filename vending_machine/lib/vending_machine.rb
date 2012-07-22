#!/usr/bin/env ruby
# -*- coding:UTF-8 -*-

class VendingMachine
    attr_reader :received_total_money

    def initialize
       @received_total_money = 0
    end

    def receive(money)
        case money
        when 10,50,100,500,1000 then
            @received_total_money += money
            return true
        end
        false
    end

    def refund
      @received_total_money
    end

end
