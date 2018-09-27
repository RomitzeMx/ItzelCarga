defmodule Itzelproyecto.User do
  use Itzelproyecto.Web, :model

  schema "users" do
    field :first_name, :string
    field :phone, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:first_name, :phone])
    |> validate_required([:first_name, :phone])
  end
end
