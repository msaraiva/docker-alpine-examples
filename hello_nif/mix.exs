defmodule Mix.Tasks.Compile.Math do
  @shortdoc "Compiles math.so"
  def run(_) do
    if Mix.shell.cmd("make priv/math.so") != 0 do
      raise Mix.Error, message: "Could not run make. Make sure you have make and gcc installed."
    end
  end
end

defmodule HelloNif.Mixfile do
  use Mix.Project

  def project do
    [app: :hello_nif,
     version: "0.0.1",
     elixir: "~> 1.0.4",
     escript: [main_module: HelloNif],
     compilers: [:math, :elixir, :app],
     deps: deps]
  end

  def application do
    [ applications: [] ]
  end

  defp deps do
    []
  end
end
