# -*- coding:UTF-8 -*-
require 'vending_machine'

describe VendingMachine do
    before :each do
        @machine = VendingMachine.new
    end

    context "refund" do
        it "現在の投入金額を返す" do
            @machine.receive(10)
            @machine.refund.should == 10
        end

        it "返金があった場合、投入金額を０円にする" do
            @machine.receive(10)
            @machine.refund
            @machine.received_total_money.should == 0
        end
    end

    context "received_total_money" do
        it "今の金額を返す" do
            @machine.receive(10)
            @machine.received_total_money.should == 10
        end

        it "10円を二回投入した場合の総額を返す" do
            @machine.receive(10)
            @machine.receive(10)
            @machine.received_total_money.should == 20
        end
    end

    context "receive" do

        it "文字列ならfalse" do
            @machine.receive("a").should be_false
        end

        it "Arrayならfalse" do
            @machine.receive([100]).should be_false
        end

        it "nilだったらfalse" do
            @machine.receive("nil").should be_false
        end

        it "10だったらtrue" do
            @machine.receive(10).should be_true
        end

        it "50だったらtrue" do
            @machine.receive(50).should be_true
        end

        it "100だったらtrue" do
            @machine.receive(100).should be_true
        end

        it "500だったらtrue" do
            @machine.receive(500).should be_true
        end

        it "1000だったらtrue" do
            @machine.receive(1000).should be_true
        end

    end

end
