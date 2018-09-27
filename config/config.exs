# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :itzelproyecto,
  ecto_repos: [Itzelproyecto.Repo]

# Configures the endpoint
config :itzelproyecto, Itzelproyecto.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MTcGa0y9N670cEY1az8IKkq3d0igDjOnr14bqXAbL70g4p76oaOU9eVVD+4vIbMI",
  render_errors: [view: Itzelproyecto.ErrorView, accepts: ~w(json)],
  pubsub: [name: Itzelproyecto.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
