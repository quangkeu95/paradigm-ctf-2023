set dotenv-load

ETH_RPC_URL := env_var("ETH_RPC_URL")

start-node:
	anvil --fork-url "$ETH_RPC_URL" --auto-impersonate