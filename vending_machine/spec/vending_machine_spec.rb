# -*- coding:UTF-8 -*-
require 'vending_machine'

describe VendingMachine do

    context "receive" do

        before :each do
            @machine = VendingMachine.new
        end

        it "文字列ならfalse" do
            @machine.receive("a").should be_false
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
