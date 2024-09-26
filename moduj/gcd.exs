defmodule Gcd do
  def calculate(x, y) when is_integer(x) and is_integer(y) and x >= 0 and y >= 0, do: gcd(x,y)
  def calculate(x, y) when not is_integer(x) or not is_integer(y) or x < 0 and y < 0, do: {:error, "Expected two positive integers."}

  defp gcd(x, 0), do: x
  defp gcd(x, y), do: gcd(y, rem(x,y))
end
 
