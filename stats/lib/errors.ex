defmodule Stats.Errors do
  @spec invalid_data() :: {atom(), String.t()}
  def invalid_data(), do: {:error, "Invalid data"}

  @spec invalid_data_type() :: {atom(), String.t()}
  def invalid_data_type(), do: {:error, "Invalid data type"}
end
