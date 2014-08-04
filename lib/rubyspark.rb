require "rubyspark/version"
module Rubyspark
  class Spark

    def initialize(data=[])
      @data = []
      data.cycle(1) {|x| @data.push(x.to_i)}
      graphit
    end

    def graphit
     ticks=%w[▁ ▂ ▃ ▄ ▅ ▆ ▇]

      distance = @data.compact.max.to_f / ticks.size

      graph = ''
      @data.each do |x|
        tick = (x/distance).round - 1
        if tick <= 0 
          graph << ticks[0]
        else
          graph << ticks[tick]
        end
      end
      puts graph
    end

  end
end
