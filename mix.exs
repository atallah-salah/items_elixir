defmodule ItemsApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :itemsApi,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:mongodb, :mongodb_ecto, :ecto, :poolboy],
      mod: {ItemsApi.App, []}
    ]
  end

  defp deps do
    [{:mongodb, ">= 0.0.0"},
    {:mongodb_ecto, "~> 0.2.1"},
    {:ecto, "~> 2.1.0"},
    {:poolboy, ">= 0.0.0"}]
  end
end
