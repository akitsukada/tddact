# -*- coding:UTF-8 -*-
require 'vending_machine'

describe VendingMachine do

    context "pre_filter" do

        before :each do
            @machine = VendingMachine.new
        end

        it "int以外ならfalse(文字列ならfalese)" do
            @machine.pre_filter("a").should be_false
        end

        it "nilだったらfalse" do
            @machine.pre_filter("nil").should be_false
        end

        it "10円だったらtrue" do
            @machine.pre_filter(10).should be_true
        end

        it "50円だったらtrue" do
            @machine.pre_filter(50).should be_true
        end

        it "100円だったらtrue" do
            @machine.pre_filter(100).should be_true
        end

        it "500円だったらtrue" do
            @machine.pre_filter(500).should be_true
        end

        it "1000円だったらtrue" do
            @machine.pre_filter(1000).should be_true
        end

    end

end
