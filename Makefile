compile:
	cd uniswap-lib && yarn compile
	cd uniswap-v2-core && yarn compile
	cd uniswap-v2-periphery && yarn compile

test: compile
	cd uniswap-lib && yarn test
	cd uniswap-v2-core && yarn test
	cd uniswap-v2-periphery && yarn test