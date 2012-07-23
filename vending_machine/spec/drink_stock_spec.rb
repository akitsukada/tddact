# -*- coding:UTF-8 -*-
require 'drink_stock'

describe DrinkStock do
  before :each do
    @drinkstock = DrinkStock.new
  end

  context "buyable_items" do
    it "120円で購入可能な商品を返す" do
      @drinkstock.buyable_items(120).should == [:coke]
    end
  end
  context "stockhash" do
    it "初期在庫表示" do
      @drinkstock.stockhash[:coke][:name].should == "コーラ"
      @drinkstock.stockhash[:coke][:price].should == 120
      @drinkstock.stockhash[:coke][:amount].should == 5
    end

    it "商品を指定すると価格が取得できます！" do
      @drinkstock.drink_price(:coke).should == 120
    end

    it "商品を指定すると在庫数が取得できます！" do
      @drinkstock.drink_amount(:coke).should == 5
    end

    it "商品を指定すると名前が取得できます！" do
      @drinkstock.drink_name(:coke).should == "コーラ"
    end

  end

end
