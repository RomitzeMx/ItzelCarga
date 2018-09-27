defmodule Slax.UserController do
    use Itzelproyecto.Web, :controller
    alias Itzelproyecto.User 
  
    def create(conn, %{"user" => user_params}) do
      case User.create(user_params) do
        {:ok, user} ->
          conn
          |> put_status(:created)
          |> render("user.json", user: user)
        {:error, changeset} ->
          conn
          |> put_status(:bad_request)
          |> json(%{error: "error creating user"})
      end
    end
end