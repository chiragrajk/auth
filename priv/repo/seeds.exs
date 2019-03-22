# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Auth.Repo.insert!(%Auth.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Auth.Accounts

{:ok, _user} = Accounts.create_user(%{
  username: "writer",
  password: "password",
  permissions: %{default: [:read_users, :write_users]}
})

{:ok, _user} = Accounts.create_user(%{
  username: "reader",
  password: "password",
  permissions: %{default: [:read_users]}
})

{:ok, _user} = Accounts.create_user(%{
  username: "rubbish",
  password: "password",
  permissions: %{default: []}
})