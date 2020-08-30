# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :neuranote,
  ecto_repos: [Neuranote.Repo]

# Configures the endpoint
config :neuranote, NeuranoteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7he1nq0d3iO9rUBmDS6XvXHRY9/CyPyVLmFZAFY26mLq54V34/oJ6z2zG/HRlmN2",
  render_errors: [view: NeuranoteWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Neuranote.PubSub,
  live_view: [signing_salt: "sVFm6uN+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
