require 'rubyspark/version'
module Rubyspark
  class Spark
    # a new instance of RubySpark::Spark
    #
    # @param data [Array] An array of numbers to build the graph from
    def initialize data = []
      @data = []
      data.cycle(1) { |x| @data.push(x.to_f) }
      graphit
    end

    # Compute x's location in relation to the max
    #
    # @param x [Fixnum] data point from input array
    # @param distance [Fixnum] the max/size of ticks array
    def compute x, distance
      (x / distance).round - 1
    end

    # Graphs data, takes data and maps it against flat map of ticks
    def graphit
      ticks = %w(▁ ▂ ▃ ▄ ▅ ▆ ▇)
      distance = @data.max.to_f / ticks.size
      puts @data.map { |x| compute(x, distance) <= 0 ? ticks[0] : ticks[compute(x, distance)] }.join('')
    end
  end
end
