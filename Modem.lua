-- Modem --

local c = require("component")
local event = require("event")
local m = c.modem
local port = 123

m.open(port) -- Open port for send and read.

if m.isOpen(port) -- Check for open port.
  print("Port:" .. port .. " is open!")

m.broadcast(123, "Your text.") -- Send message.

local _, _, _, port, _, message = event.pull("modem_message") -- Read port.
print(tostring(message)) -- Print message.

