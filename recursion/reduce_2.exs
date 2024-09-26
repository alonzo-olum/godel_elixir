defmodule List_2 do
  def max(items) when is_list(items) do
    do_max(items)
  end

  defp do_max([head|tail]), do: do_max(tail, head)
  defp do_max([head|tail], curr_max) when head > curr_max, do: do_max(tail, head)
  defp do_max([head|tail], curr_max) when head <= curr_max, do: do_max(tail, curr_max)
  defp do_max([], curr_max), do: curr_max
end
