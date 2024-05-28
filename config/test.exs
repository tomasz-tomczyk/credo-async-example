import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :example_web, ExampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Jm3GBHNHF1DisanUg2t2tKZItXXBtc8eZrMaeT7cIyoTVtlYxSp+Hdwo05UGtBqv",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# In test we don't send emails.
config :example, Example.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
