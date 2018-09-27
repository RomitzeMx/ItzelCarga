defmodule Itzelproyecto.Repo.Migrations.CreateNombre do
  use Ecto.Migration

  def change do
    create table(:telefono) do

      timestamps()
    end
  end
end
