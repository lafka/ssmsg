defmodule SsmsgWeb.Router do
  use SsmsgWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SsmsgWeb do
    pipe_through :api
  end
end
