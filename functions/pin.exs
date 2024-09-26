defmodule Greeter do
    def for(name, greeting) do
        fn
            (^name) -> "#{greeting} #{name}"
            (_)     -> "I don't know you"
        end
    end
end

mr_olum = Greeter.for("Olum", "Hi")

IO.puts mr_olum.("Olum")
IO.puts mr_olum.("Dave")
