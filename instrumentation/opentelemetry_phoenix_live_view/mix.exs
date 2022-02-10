defmodule OpentelemetryPhoenixLiveView.MixProject do
  use Mix.Project

  def project do
    [
      app: :opentelemetry_phoenix_live_view,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {OpentelemetryPhoenixLiveView.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:telemetry, "~> 0.4 or ~> 1.0.0"},
      {:opentelemetry_api, "~> 1.0"},
      {:opentelemetry_telemetry, "~> 1.0.0-beta.7"}
    ]
  end
end
