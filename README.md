# FirestoreEcto

## How to use FirestoreEcto.Proxy

```elixir
{:ok, pid} = FirestoreEcto.Proxy.start_link(project: "firestore-37c38", database: "(default)")

FirestoreEcto.Proxy.query(pid, "get Countries")

FirestoreEcto.Proxy.stop(pid)
```

## How to use DBConnection

```elixir
{:ok, conn} = DBConnection.start_link(FirestoreEcto.Protocol, project: "firestore-37c38", database: "(default)")

DBConnection.execute(conn, %FirestoreEcto.Query{statement: "get Countries"}, [])
```

## How to use the Ecto Adapter

```eixir
FirestoreEctoTest.Repo.all(FirestoreEcto.Country)
```