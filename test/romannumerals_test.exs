defmodule ROMANNUMERALSTest do
  use ExUnit.Case
  doctest ROMANNUMERALS
  import ROMANNUMERALS
  describe "Decimal to Roman" do
    test "1 should return I" do
      assert to_roman(1) == "I"
    end

    test "2 should return II" do
      assert to_roman(2) == "II"
    end

    test "3 should return III" do
      assert to_roman(3) == "III"
    end

    test "4 should return IV" do
      assert to_roman(4) == "IV"
    end

    test "5 should return V" do
      assert to_roman(5) == "V"
    end

    test "10 should return X" do 
      assert to_roman(10) == "X"
    end

    test "20 should return XX" do
      assert to_roman(20) == "XX"
    end

    test "50 should return L" do
      assert to_roman(50) == "L"
    end

    test "6 should return VI" do
      assert to_roman(6) == "VI"
    end

    test "7 should return VII" do
      assert to_roman(7) == "VII"
    end

    test "8 should return VIII" do
      assert to_roman(8) == "VIII"
    end

    test "15 should return XV" do
      assert to_roman(15) == "XV"
    end

    test "9 should return IX" do
      assert to_roman(9) == "IX"
    end

    test "14 should return XIV" do
      assert to_roman(14) == "XIV"
    end

    test "29 should return IXXX" do
      assert to_roman(29) == "XXIX"
    end

    test "24 should return XXIV" do
      assert to_roman(24) == "XXIV"
    end

    test "54 should return LIV" do
      assert to_roman(54) == "LIV"
    end

    test "100 should return C" do
      assert to_roman(100) == "C"
    end

    test "30 should return XXX" do
      assert to_roman(30) == "XXX"
    end

    test "40 should return XL" do
      assert to_roman(40) == "XL"
    end

    test "89 should return LXXXIX" do
      assert to_roman(89) == "LXXXIX"
    end
  end

  describe "Roman to Decimal" do
    test "I should return 1" do
      assert to_decimal("I") == 1
    end

    test "II should return 2" do
      assert to_decimal("II") == 2
    end

    test "V should return 5" do
      assert to_decimal("V") == 5
    end

    test "IV should return 4" do
      assert to_decimal("IV") == 4
    end

    test "X should return 10" do
      assert to_decimal("X") == 10
    end

    test "IX should return 9" do
      assert to_decimal("IX") == 9
    end

    test "XV should return 15" do
      assert to_decimal("XV") == 15
    end

    test "XX should return 20" do
      assert to_decimal("XX") == 20
    end

    test "C should return 100" do
      assert to_decimal("C") == 100
    end

    test "L should return 50" do
      assert to_decimal("L") == 50
    end

    test "XL should return 40" do
      assert to_decimal("XL") == 40
    end

    test "LXXXIX should return 89" do
      assert to_decimal("LXXXIX") == 89
    end
    
  end
end
