# Elixir version
#
# elixir look_and_say.exs

defmodule LookAndSay do
  def next(previous) do
    previous
      |> Enum.chunk_by(&(&1))
      |> Enum.flat_map(&([length(&1), Enum.at(&1, 0)]))
  end

  def next_string(previous_string) do
    previous_string
      |> String.codepoints
      |> Enum.map(&String.to_integer/1)
      |> next
      |> Enum.join
  end
end

Stream.iterate("1", &LookAndSay.next_string/1)
  |> Enum.take(10)
  |> Enum.each(&IO.puts/1)
