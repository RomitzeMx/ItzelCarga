defmodule Itzelproyecto.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :phone, :string

      timestamps()
    end
  end
end
