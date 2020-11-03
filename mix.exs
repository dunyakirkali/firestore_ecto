defmodule FirestoreEcto.MixProject do
  use Mix.Project

  def project do
    [
      app: :firestore_ecto,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:firestore, path: "../firestore"},
      {:goth, "~> 1.2.0"},
      {:db_connection, "~> 2.0.6"}
    ]
  end
end
