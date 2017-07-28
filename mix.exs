defmodule TestKafka.Mixfile do
  use Mix.Project

  def project do
    [app: :test_kafka,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # mod: {TestKafka, []},
    # [applications: [:kafka_ex]],
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :kafka_ex]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      # add to your existing deps
      {:kafka_ex, "~> 0.7.0"},
      # if using snappy compression
      {:snappy, git: "https://github.com/fdmanana/snappy-erlang-nif"}
    ]
  end
end
