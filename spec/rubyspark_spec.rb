require 'spec_helper'

describe "#new" do
    it "takes any number of agruements and return a spark graph" do
      expect { Rubyspark::Spark.new([1,5,22,13,53]) }.to output("▁▁▃▂▇\n").to_stdout
    end
end