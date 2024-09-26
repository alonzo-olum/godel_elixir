defmodule Chop do
  defp select_range_low_guess(range, guess) do
    _low..high = range
    new_low = guess+1
    new_low..high
  end

  defp select_range_high_guess(range, guess) do
    low.._high = range
    new_high = guess-1
    low..new_high
  end
    
  defp get_middle(%Range{} = range) do
      low..high = range
      high - div((high-low+1), 2)
  end

  defp do_guess(actual, _range, guess) when guess == actual do
    IO.puts "Is it #{guess}"
    guess
  end

  defp do_guess(actual, range, guess) when guess < actual do
    IO.puts "Is it #{guess}"
    nu_range = select_range_low_guess range, guess
    guess = get_middle nu_range 
    do_guess(actual, nu_range, guess)
  end

  defp do_guess(actual, range, guess) when guess > actual do
    IO.puts "Is it #{guess}"
    nu_range = select_range_high_guess range, guess
    guess = get_middle nu_range
    do_guess(actual, nu_range, guess)
  end

  def guess(actual, %Range{} = range) when is_integer(actual) do
    if actual not in range do
      raise RuntimeError, message: "integer out of bounds"
    end

    guess = get_middle range
    do_guess(actual, range, guess)
  end

  def guess(actual, _range) when not is_integer(actual), do: {:error, "expected an integer and a range"}

end
