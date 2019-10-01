defmodule Sum do
  def sum(numbers) do
    perform_sum(numbers, 0)
  end

  defp perform_sum([head | tail], acc) do
    perform_sum(tail, acc + head)
  end

  defp perform_sum([], acc) do
    acc
  end
end
