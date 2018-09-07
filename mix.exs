defmodule ScenicClock.MixProject do
  use Mix.Project

  def project do
    [
      app: :scenic_clock,
      version: "0.7.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:scenic, "~> <%= @scenic_version %>"},
      {:scenic, git: "git@github.com:boydm/scenic.git"},
      {:timex, "~> 3.3"},

      {:ex_doc, ">= 0.0.0", only: [:dev, :docs]},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
