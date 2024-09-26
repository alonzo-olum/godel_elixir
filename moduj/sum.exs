defmodule Sum do
  def sum(n) when is_integer(n) and n >= 0, do: calculate n
  def sum(n) when not is_integer(n) and n < 0, do: {:error, "invalid integer"}

  defp calculate(0), do: 0
  defp calculate(n), do: n + calculate(n-1)
end
