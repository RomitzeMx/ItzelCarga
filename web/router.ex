defmodule Itzelproyecto.Router do
  use Itzelproyecto.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Itzelproyecto do
    pipe_through :api
    
    post "/users", UserController, :authenticate
    resources "/users", UserController, except: [:new, :edit]

  end
end
