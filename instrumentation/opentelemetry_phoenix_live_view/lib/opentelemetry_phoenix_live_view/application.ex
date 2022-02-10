defmodule OpentelemetryPhoenixLiveView.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      OpentelemetryPhoenixLiveView.Monitor
    ]

    opts = [strategy: :one_for_one, name: OpentelemetryPhoenixLiveView.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
