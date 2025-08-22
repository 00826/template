--- ### init.server.luau
---
--- one-time ordered require
workspace:SetAttribute("initserver", (function()
	local start = os.clock()
	for _, module in ipairs{
		
	} do
		if module:IsA("ModuleScript") then
			local s, e = pcall(require, module)
			if s then
				
			else
				warn(`initserver error [{module.Name}]: {e}`)
			end
		end
	end
	return os.clock() - start
end)())