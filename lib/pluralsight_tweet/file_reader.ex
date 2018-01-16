defmodule PluralsightTweeter.FileReader do

  def get_strings_to_tweet(path) do
    File.read!(path)
    |> String.split("\n")
    |> Enum.filter(&Enum.member?(1..140, String.length(&1)))
    |> Enum.random()
  end
end
