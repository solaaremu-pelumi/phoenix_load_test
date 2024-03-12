defmodule PhoenixLoadTestWeb.TestController do
  @moduledoc false
  use PhoenixLoadTestWeb, :controller

  def ping(conn, _params) do
    send_resp(conn, 200, "pong")
  end

  def factorial(conn, _params) do
    send_resp(conn, 200, Integer.to_string(calc_factorial()))
  end

  defp calc_factorial(n \\ 10)
  defp calc_factorial(0), do: 1
  defp calc_factorial(n), do: n * calc_factorial(n - 1)
end
