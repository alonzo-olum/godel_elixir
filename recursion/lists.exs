defmodule Lists do
  def easy_span(from, to) when is_integer(from) and is_integer(to) and from < to do
    :lists.seq from, to
  end

  def easy_span_range(from, to) when is_integer(from) and is_integer(to) and from < to do
    from..to
    |> Enum.to_list
  end

  def span(from, to) when is_integer(from) and is_integer(to) and from < to do
    do_span(from, to, [])
  end

  defp do_span(current, last, acc) when current != last do
    do_span(current+1, last, [current|acc])
  end

  defp do_span(current, last, acc) when current == last do
    Enum.reverse(acc)
  end
end
