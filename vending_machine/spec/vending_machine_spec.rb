# -*- coding:UTF-8 -*-
require 'vending_machine'

describe VendingMachine do

    context "pre_filter" do

        before :each do
            @machine = VendingMachine.new
        end

        it "int以外ならfalse" do
            @machine.pre_filter("a").should be_false
        end

    end

end
