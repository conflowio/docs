.DEFAULT_GOAL := help

HUGO_VERSION = 0.88.1
HUGO_OS ?= macOS
HUGO_ARCH?= 64bit

.PHONY: help
help: ## Show help
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: dev
dev: bin/hugo-${HUGO_VERSION} ## Run the hugo server locally
	bin/hugo server

bin/hugo-${HUGO_VERSION}:
	@echo "Downloading Hugo ${HUGO_VERSION}"
	@mkdir -p bin
	@curl -sSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_${HUGO_OS}-${HUGO_ARCH}.tar.gz" -o "bin/hugo-${HUGO_VERSION}.tgz"
	@tar xzf "bin/hugo-${HUGO_VERSION}.tgz" -C bin hugo
	@rm -f "bin/hugo-${HUGO_VERSION}.tgz"
	@mv bin/hugo bin/hugo-${HUGO_VERSION}
	@chmod +x "bin/hugo-${HUGO_VERSION}"
	@ln -sf hugo-${HUGO_VERSION} bin/hugo
	@bin/hugo-${HUGO_VERSION} version
