defmodule UsersApix.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      UsersApixWeb.Telemetry,
      # Start the Ecto repository
      UsersApix.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: UsersApix.PubSub},
      # Start Finch
      {Finch, name: UsersApix.Finch},
      # Start the Endpoint (http/https)
      UsersApixWeb.Endpoint
      # Start a worker by calling: UsersApix.Worker.start_link(arg)
      # {UsersApix.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: UsersApix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    UsersApixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
