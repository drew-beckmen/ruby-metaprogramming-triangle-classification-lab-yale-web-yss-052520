require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
  end 

  def kind 
    # If any of these conditions are met, it is not a valid triangle.
    if @side1 == 0 || @side2 == 0 || @side3 == 0 || @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
      raise TriangleError # just wants you to raise error - no need to do any sort of error handling in this lab.
    
    else 
      if @side1 == @side2 && @side1 == @side3 && @side2 == @side3
        return :equilateral 
      elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3 
        return :isosceles
      else 
        return :scalene
      end 
    end 
  end 
  
  
  # Custom error to ensure valid triangles are created
  class TriangleError < StandardError 
    # def message     Only need this custom message if you are doing error handling. Here, we just want our own custom error. 
    #   "Not a valid triangle"
    # end 
  end 
end