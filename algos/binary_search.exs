defmodule BinarySearch do
  defp middle(range) do
      min..max = range
      max - div((max - min + 1), 2)
  end

  def search(actual, range) when is_integer(actual) do
      if actual not in range, do: raise RuntimeError, "invalid integer"

      mid = middle range
      IO.puts "Is it #{mid}"
      partition(actual, mid, range)
  end

  defp partition(actual, mid, range) when actual < mid, do: (
      min.._max = range
      new_max = mid
      search(actual, min..new_max)
  )

  defp partition(actual, mid, range) when actual > mid, do: (
      _min..max = range
      new_min = mid
      search(actual, new_min..max)
  )

  defp partition(actual, mid, _range) when actual == mid, do: mid

end
