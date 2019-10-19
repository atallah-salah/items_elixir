use Mix.Config

config :itemsApi, ItemsApi.Repo,
  adapter: Mongo.Ecto,
  username: "testDB",
  password: "p@$$w0rd",
  database: "admin",
  hostname: "localhost:27017",
  pool_size: 15
