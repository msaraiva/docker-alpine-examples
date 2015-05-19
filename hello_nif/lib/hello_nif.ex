defmodule HelloNif do

  def main(_) do
    list1 = [1.0, 2.0, 3.0]
    list2 = [5.0, 10.0, 20.0]
    
    result = HelloNif.Math.dot_product(list1, list2)
    
    IO.puts "Hello! This dot product was calculated by a NIF:"
    IO.puts "#{float_list_to_str(list1)} x #{float_list_to_str(list2)} = #{result}"
  end
  
  def float_list_to_str(list) do
    "[" <> (list |> Enum.map(&(Float.to_string(&1, [decimals: 1]))) |> Enum.join(", ")) <> "]"
  end  
  
end
