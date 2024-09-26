defmodule List_ do
  def reduce([], value, _func), do: value
  def reduce([head|tail], value, func), do: reduce(tail, func.(head, value), func)

  def mapsum(list, func) when is_list(list) and is_function(func) do list
  |> Enum.map(func)
  |> Enum.sum
  end

  def maxlist([head]),     do: head
  def maxlist([head|tail]) do
    max head, maxlist(tail)
  end
end
