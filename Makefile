-include .env

deploy-anvil: 
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(RPC_URL) --account defaultKey 
	--sender 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266 --broadcast -vvvv
deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --account SepoliaKey 
	--sender 0xec743a224f2ca53c6ee748809ff30ffc40ab93b7 --broadcast -vvvv
#defaultKey address// 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
#SepoliaKey address// 0xec743a224f2ca53c6ee748809ff30ffc40ab93b7
# cast wallet list
# cast wallet import (key name) --interactive
# mkdir (folder name)
# forge init
# code (folder name)
# forge build
# Cntr + Shift + J to format JS file
# Cntr + Shift + V preview README file
