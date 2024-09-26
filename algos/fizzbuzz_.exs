# distil individual digit to fizz, buzz, fizzbuzz or the digit
# depends on pattern matched arguments
whichfizz = fn
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (0, 0, _) -> "FizzBuzz"
  (_, _, n) -> n
end

# anonymous function takes rem of n div by 3, 5 and n as last argument returns whichfizz 
fizzbuzz = fn n -> whichfizz.(rem(n, 3), rem(n, 5), n) end


#fizzbuzz = &(whichfizz.(rem(&1, 3), rem(&1, 5), &1))
#10..20 |> Enum.to_list |> Enum.map(&(fizzbuzz.(&1)))

IO.inspect Enum.map 10..20, fizzbuzz
