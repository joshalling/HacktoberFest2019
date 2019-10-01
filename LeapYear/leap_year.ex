defmodule LeapYear do
  def next_twenty() do
    print_leap_years(Date.utc_today().year, 0)
  end

  defp print_leap_years(_year, 20), do: :ok

  defp print_leap_years(year, count) do
    if :calendar.is_leap_year(year) do
      IO.inspect(year)
      print_leap_years(year + 1, count + 1)
    else
      print_leap_years(year + 1, count)
    end
  end
end
