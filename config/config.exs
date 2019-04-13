# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :context_app,
  ecto_repos: [ContextApp.Repo]

# Configures the endpoint
config :context_app, ContextAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1gXFn+W2e5nvc5ZbULQG1+r82EzAdSrZVES0Lw2DhTkXhlW2nBIhlW8w/pncbxIs",
  render_errors: [view: ContextAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ContextApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
