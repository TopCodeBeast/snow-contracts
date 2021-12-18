all            :; build-factory build-router
build-factory  :; DAPP_SRC=src/factory DAPP_BUILD_OPTIMIZE_RUNS=200    dapp --use solc:0.5.16 build
build-router   :; DAPP_SRC=src/router  DAPP_BUILD_OPTIMIZE_RUNS=999999 dapp --use solc:0.6.6 build
clean          :; dapp clean
test           :; dapp test
deploy-factory :; dapp create SnowFactory @fee_setter
deploy-router  :; dapp create SnowRouter @factory @weth

.PHONY: build-factory build-router
