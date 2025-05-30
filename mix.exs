defmodule TelegramBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :telegram_bot,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {TelegramBot.Application, []}
    ]
  end

  defp deps do
    [
      {:telegex, "~> 0.0.10"},
      {:jason, "~> 1.4"}
    ]
  end
end
