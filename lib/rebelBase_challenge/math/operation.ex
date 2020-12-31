defmodule RebelBaseChallenge.Math.Operation do
    def sum(list) do
        String.split(list, ",")
        |>Enum.map(&String.to_integer/1)
        |>Enum.sum
    end

    def reduce([], value,_func), do: value
  
    def reduce([head | tail], value, func), do: reduce(tail, func.(head, value), func)

    def max([x]), do: x

    def max([head | tail]), do: reduce(tail, head, &check_big/2)

    def check_big(a,b) when a > b, do: a
    
    def check_big(a,b) when a <= b, do: b
    
    def check_small(a,b) when a < b, do: a
    
    def check_small(a,b) when a >= b, do: b

    def min([head | tail]), do: reduce(tail, head, &check_small/2)

    def largest(list) do
        String.split(list, ",")
        |>Enum.map(&String.to_integer/1)
        |>max
    end

    def smallest(list) do
        String.split(list, ",")
        |>Enum.map(&String.to_integer/1)
        |>min
    end

    def sort(list) do
        String.split(list, ",")
        |>Enum.map(&String.to_integer/1)
        |>Enum.sort
    end
end