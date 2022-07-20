# macOS with ethernet
LAN_HOST = $(shell ipconfig getifaddr en0)

local-up:
	LAN_HOST=$(LAN_HOST) docker-compose -f docker-compose.local.yml up -d
local-down:
	LAN_HOST=$(LAN_HOST) docker-compose -f docker-compose.local.yml down
