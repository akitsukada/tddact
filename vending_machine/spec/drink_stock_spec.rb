# -*- coding:UTF-8 -*-
require 'drink_stock'

describe DrinkStock do
    before :each do
        @drinkstock = DrinkStock.new
    end

    context "初期在庫の確認" do
        it "初期在庫表示" do
            @drinkstock.stockhash[:coke][:name].should == "コーラ"
            @drinkstock.stockhash[:coke][:price].should == 120
            @drinkstock.stockhash[:coke][:amount].should == 5
        end
    end

end
