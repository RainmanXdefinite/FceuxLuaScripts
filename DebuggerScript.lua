emu.speedmode("normal")

-- Debugger Script written by RainmanXdefinite (C) 2021
--[[ Features:
- Frame count
- Lag frames count
- Rom filename display
- Rom base64 hash display ]]--
-- If you want, you can change some things :-)
-- Do NOT republish this script. If you give credit to me its fine. But if you dont then its not fine.

while true do
	-- Execute functions for FCEUX
	local lag = emu.lagcount()
	local frames = emu.framecount()
	local filename = rom.getfilename()
	local filehash = rom.gethash("base64")
	gui.text(2,12,"Frames: "..frames)
	gui.text(2,22,"Lag: "..lag)
	gui.text(2,32,"Rom Filename: "..filename)
	gui.text(2,42,"Rom Base64 Hash: "..filehash)
	gui.text(2,52,"Debugger Script written by RainmanXdefinite (C) 2021")
	emu.frameadvance() -- This essentially tells FCEUX to keep running
end