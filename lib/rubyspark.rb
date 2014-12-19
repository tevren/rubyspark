require 'rubyspark/version'
module Rubyspark
  class Spark
    def initialize data = []
      @data = []
      data.cycle(1) { |x| @data.push(x.to_f) }
      graphit
    end

    def compute x, distance
      (x / distance).round - 1
    end

    def graphit
      ticks = %w(▁ ▂ ▃ ▄ ▅ ▆ ▇)
      distance = @data.max.to_f / ticks.size
      puts @data.map { |x| compute(x, distance) <= 0 ? ticks[0] : ticks[compute(x, distance)] }.join('')
    end
  end
end
