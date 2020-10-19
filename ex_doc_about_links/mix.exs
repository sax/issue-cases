defmodule ExDocAboutLinks.MixProject do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :ex_doc_about_links,
      deps: deps(),
      docs: docs(),
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      version: @version
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
      {:ex_doc, "0.23.0", runtime: false}
    ]
  end

  defp docs() do
    [
      assets: "guides/assets",
      extra_section: "GUIDES",
      extras: doc_files(),
      formatters: ["html"],
      source_ref: "v#{@version}",
      main: "overview"
    ]
  end

  defp doc_files() do
    ~w{
      guides/overview.md
    }
  end
end
