defmodule Slax.UserView do
    use Itzelproyecto.Web, :view
    
    def render("user.json", %{user: user}) do
      %{
       
        first_name: user.first_name,
        phone: user.phone
      }
    end
  end