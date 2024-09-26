defmodule WeatherHistory do
  def for_location([]), do: []
  def for_location([ [time, _, temp, rain] | tail ]) do
    [[time, 27, temp, rain] | for_location(tail)]
  end
  def for_location([ _ | tail ]), do: for_location(tail)

  def test_data do
    [
      [1366225622, 26, 15, 0.125],
      [1366225622, 27, 16, 0.100],
      [1366225622, 28, 17, 0.15],
      [1366225622, 29, 18, 0.25],
      [1366225622, 30, 19, 0.5],
      [1366225622, 31, 20, 0.325],
    ]
  end
end
