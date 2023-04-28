defmodule UsersApixWeb.Api.PersonController do
  use UsersApixWeb, :controller

  alias UsersApix.Persons

  def index(conn, _params) do
    persons = Persons.list_persons()
    render(conn, :index, persons: persons)
  end

  def show(conn, %{"id" => id}) do
    person = Persons.get_person!(id)
    render(conn, :show, person: person)
  end
end
