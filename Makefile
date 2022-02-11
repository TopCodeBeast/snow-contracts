all            :; build-factory build-router
build-factory  :; DAPP_SRC=src/factory DAPP_BUILD_OPTIMIZE_RUNS=200    dapp --use solc:0.5.16 build
build-router   :; DAPP_SRC=src/router  DAPP_BUILD_OPTIMIZE_RUNS=999999 dapp --use solc:0.6.6 build
build-staker   :; DAPP_SRC=src/staker  DAPP_BUILD_OPTIMIZE_RUNS=999999 dapp --use solc:0.5.16 build
build-wallet   :; DAPP_SRC=src/wallet  DAPP_BUILD_OPTIMIZE_RUNS=200    dapp --use solc:0.4.24 build
clean          :; dapp clean
test           :; dapp test
deploy-factory :; dapp create SnowFactory @fee_setter
deploy-staker  :; dapp create StakingRewardsFactory @fee_setter
deploy-router  :; dapp create SnowRouter @factory @weth
deploy-wallet  :; dapp create MultiSigWallet ["0x0f14341A7f464320319025540E8Fe48Ad0fe5aec","0x05e0375b33aeF6a5BC6c02f52E02F62aadc586FE","0x74003cbD6c4f34a8380BB6e8b07914c8f381D864"] 2

.PHONY: build-factory build-router
