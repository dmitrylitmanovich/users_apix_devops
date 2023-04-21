defmodule UsersApix.PersonsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `UsersApix.Persons` context.
  """

  @doc """
  Generate a person.
  """
  def person_fixture(attrs \\ %{}) do
    {:ok, person} =
      attrs
      |> Enum.into(%{
        email: "some email",
        full_name: "some full_name"
      })
      |> UsersApix.Persons.create_person()

    person
  end
end
