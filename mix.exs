defmodule DoorSkill.Mixfile do
  use Mix.Project

  def project do
    [app: :door_skill,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "Hands over control of the door (and security of the office) to Alexa",
     package: package,
     deps: deps]
  end

  def package do
    [
      maintainers: ["Colin Harris", "Daniel Lee"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://bitbucket.org/Col/door_skill"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :alexa]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:alexa, "~> 0.1.11"},
      {:poison, "~> 2.0"},
      {:inflex, "~> 1.5.0"},
      {:pavlov, git: "https://github.com/sproutapp/pavlov", only: :test}
    ]
  end
end
