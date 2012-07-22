# -*- coding:UTF-8 -*-
require 'vending_machine'

describe VendingMachine do

    context "receive" do

        before :each do
            @machine = VendingMachine.new
        end

        it "int以外ならfalse(文字列ならfalese)" do
            @machine.receive("a").should be_false
        end

        it "nilだったらfalse" do
            @machine.receive("nil").should be_false
        end

        it "10円だったらtrue" do
            @machine.receive(10).should be_true
        end

        it "50円だったらtrue" do
            @machine.receive(50).should be_true
        end

        it "100円だったらtrue" do
            @machine.receive(100).should be_true
        end

        it "500円だったらtrue" do
            @machine.receive(500).should be_true
        end

        it "1000円だったらtrue" do
            @machine.receive(1000).should be_true
        end

    end

end
