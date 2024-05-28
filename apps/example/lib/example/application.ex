defmodule Example.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {DNSCluster, query: Application.get_env(:example, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Example.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Example.Finch}
      # Start a worker by calling: Example.Worker.start_link(arg)
      # {Example.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Example.Supervisor)
  end
end
