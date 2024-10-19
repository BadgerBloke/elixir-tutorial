defmodule Tutorials.Recursion.PrintDigits do
  def upto(0), do: 0

  def upto(nums) do
    IO.puts(nums)
    upto(nums - 1)
  end

  def to(0), do: 0

  def to(nums) do
    to(nums - 1)
    IO.puts(nums)
  end
end
