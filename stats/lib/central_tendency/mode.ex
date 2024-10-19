defmodule Stats.CentralTendency.Mode do
  alias Stats.Errors
  alias Stats.Validators

  @spec mode([number()]) :: [number()] | {atom(), String.t()}
  def mode(nums) when is_list(nums) do
    with {true, _} <- Validators.validate_num_list(nums) do
      ranked_map = nums |> Enum.frequencies()
      ranked_map |> Map.values() |> Enum.max() |> mode_fucn(ranked_map)
    else
      _ -> Errors.invalid_data()
    end
  end

  defp mode_fucn(1, _ranked_map), do: nil

  defp mode_fucn(max, ranked_map) do
    ranked_map |> Map.filter(fn {_key, value} -> value === max end) |> Map.keys()
  end
end
