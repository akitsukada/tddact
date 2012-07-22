#!/usr/bin/env ruby
# -*- coding:UTF-8 -*-

class VendingMachine

    def pre_filter(money)
        return true if money == 10 
        return true if money == 100 
        false
    end

end
