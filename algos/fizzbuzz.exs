defmodule FizzBuzz do
  defp whichfizz(0, 0, _), do: "FizzBuzz"
  defp whichfizz(0,_,_),   do: "Fizz"
  defp whichfizz(_,0,_),   do: "Buzz"
  defp whichfizz(_,_,n),   do: n
  def fizzbuz(n) do
    whichfizz(rem(n, 3), rem(n, 5), n)
  end
end

