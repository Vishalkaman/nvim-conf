local M = {}

local enabled_path = vim.fn.stdpath("config") .. "/lua/config/plugins_enabled.lua"

function M.toggle_plugin()
  vim.ui.input({ prompt = "Plugin name: " }, function(input)
    if not input or input == "" then 
      return 
    end

    local ok, enabled = pcall(dofile, enabled_path)
    if not ok then enabled = {} end

    enabled[input] = not enabled[input]
    local file = io.open(enabled_path, "w")
    file:write("return {\n")
    for k, v in pairs(enabled) do
      file:write(string.format("  [\"%s\"] = %s,\n", k, tostring(v)))
    end
    file:write("}\n")
    file:close()

    print(input .. (enabled[input] and " enabled" or "disabled"))
    --vim.cmd("Lazy reload")
  end
  )
end

return M
