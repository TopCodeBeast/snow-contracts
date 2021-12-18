all           :; build-factory build-router
build-factory :; DAPP_SRC=src/factory dapp --use solc:0.5.16 build
build-router  :; dapp --use solc:0.6.6 build
clean         :; dapp clean
test          :; dapp test
deploy        :; dapp create SnowContracts

.PHONY: build-factory build-router
