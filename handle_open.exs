# sample example showcasing anonymous function
# also pattern matching of the anonymous fn parameters

handle_open = fn
    {:ok, file} -> "First line: #{IO.read(file, :line)}"
    {_, error}  -> "Error: #{:file.format_error(error)}"
end
IO.puts handle_open.(File.open("with-match.exs"))
IO.puts handle_open.(File.open("Nonexistent"))
