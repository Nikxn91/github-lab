data "terraform_remote_state" "base" {
  backend = "pg"

  config = {
    conn_str = "postgres://tfstate:tfstate@localhost/base?sslmode=disable"
  }
}
