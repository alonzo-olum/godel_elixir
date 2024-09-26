# sample test for a do expression
line_no = 50

if (line_no == 50) do
    IO.puts "new page\f"
    line_no = 0
end

IO.puts line_no
