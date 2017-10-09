#!/usr/bin/env bash
integer_degisken=10
string_degisken="Naber"

echo $integer_degisken    # "integer_degisken" degiskenimizin icindeki degeri ekrana basar.
echo $string_degisken     # "string_degisken" degiskenimizin icindeki degeri ekrana basar.
echo ${#string_degisken}  # "integer_degisken" degiskenimizin icindeki degerin uzunlugunu ekrana basar.
                            # Klasik len() fonksiyonu gibi
