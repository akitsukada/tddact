#!/usr/bin/env ruby
# -*- coding:UTF-8 -*-

class VendingMachine

    def received_total_money
	10	 
    end

    def receive(money)
        case money
        when 10,50,100,500,1000 then
            return true
        end
        false
    end

end
