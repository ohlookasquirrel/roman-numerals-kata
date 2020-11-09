defmodule ROMANNUMERALS do
  import String, only: [replace: 3]
  @moduledoc """
  Documentation for ROMANNUMERALS.

  """
   @romannumerals [{100, "C"}, {50, "L"}, {40, "XL"}, {10, "X"}, {9, "IX"}, {5, "V"}, {4, "IV"}, {1, "I"}]
  
  def to_roman(input) do
     Enum.reduce(@romannumerals, {"", input}, &to_roman/2) |> elem(0)
  end

  def to_roman({k, v}, {str, arabic}) do
     {str <> String.duplicate(v, div(arabic, k)), rem(arabic, k)}
  end

  @decimalConversionTable [{40, "XL"}, {9, "IX"}, {4, "IV"}, {100, "C"}, {50, "L"}, {10, "X"}, {5, "V"}, {1, "I"}]

  def to_decimal(input), do: Enum.reduce(@decimalConversionTable, {0, input}, &calculate_value/2) |> elem(0)
  
  defp calculate_value({decimal,roman_numeral}, {acc, input}) do
     { acc + num_of_occurrences(roman_numeral, input) * decimal, replace(input, roman_numeral, "")}
  end
  defp num_of_occurrences(roman_numeral, input) do
    length_minus_occurences_of_roman_numeral = replace(input, roman_numeral, "") |> String.length()
    difference = String.length(input) - length_minus_occurences_of_roman_numeral
    div(difference, String.length(roman_numeral))
  end
end
