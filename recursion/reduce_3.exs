defmodule List_3 do
  def caesar(char_list, num) when is_list(char_list) and is_integer(num) do
    char_list
    |> Enum.map(fn c -> do_add(c, num) end)
  end

  # operate on uppercase chars
  defp do_add(char, num) when 64 < char and char < 91 do
    case char + num do
      new_char when new_char >  90 -> new_char - 26
      new_char when new_char <= 90 -> new_char
    end
  end
  # operate on lowercase chars
  defp do_add(char, num) when 96 < char and char < 123 do
    case char + num do
      new_char when new_char > 122 -> new_char - 26
      new_char when new_char < 123 -> new_char
    end
  end
end
