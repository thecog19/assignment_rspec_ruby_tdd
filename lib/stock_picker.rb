 class WarmUps
   def stock_picker(stocks)
      raise "Please enter an array of numbers" unless stocks.is_a?(Array)
      stocks.all?{|element|}
   end

end


#stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])