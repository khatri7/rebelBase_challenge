defmodule RebelBaseChallengeWeb.OperationController do
    use RebelBaseChallengeWeb, :controller

    alias RebelBaseChallenge.Math.Operation

    def sum(conn, %{"list" => list}) do
        json(conn, %{sum: Operation.sum(list)})
    end

    def largest(conn, %{"list" => list}) do
        json(conn, %{largest: Operation.largest(list)})
    end 
    
    def smallest(conn, %{"list" => list}) do
        json(conn, %{smallest: Operation.smallest(list)})
    end 
    
    def sort(conn, %{"list" => list}) do
        json(conn, %{sorted_list: Operation.sort(list)})
    end 
  end