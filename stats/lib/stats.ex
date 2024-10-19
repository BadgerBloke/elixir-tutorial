defmodule Stats do
  alias Stats.CentralTendency.Mode
  alias Stats.CentralTendency.Median
  alias Stats.CentralTendency.Mean

  defdelegate population_mean(nums), to: Mean
  defdelegate sample_mean(nums), to: Mean

  defdelegate median(num_list), to: Median

  defdelegate mode(nums), to: Mode
end
