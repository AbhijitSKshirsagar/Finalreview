#Help user find degF or degC based on their Conversion Selection. Use
#Case Statement and ensure that the inputs are within the Freezing Point (
#0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
#a. degF = (degC * 9/5) + 32
#b. degC = (degF – 32) * 5/9






#!/bin/bash -x

read -p "Enter the number, feet-meter, inch-feet meter-feet: " unit;

case $unit in
     feet-inch)
              read -p "Enter feet value: " x;
              y=12; # 1 feet = 12 inch
              a=feet;
              b=inch;
              ;;

     feet-meter)
              read -p "Enter feet value: " x;
              y=0.3048; # 1 feet = 0.3048 meter
              a=feet;
              b=meter;
              ;;

      inch-feet)
              read -p "Enter inch value: " x;
              y=0.0833333; # 1 inch = 0.0833333 feet
              a=inch;
              b=feet;
              ;;

     meter-feet)
              read -p "Enter inch value: " x;
              y=3.28084; # 1 meter = 3.28084 feet
              a=meter;
              b=feet;
              ;;

             *)
              echo "ERROR check again "
              ;;
esac

    result=`echo $x $y | awk '{print $1 * $2}'`
    echo "$x $a is equal to $result $b."
