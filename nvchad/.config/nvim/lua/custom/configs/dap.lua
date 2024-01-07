
local dap = require("dap")

dap.adapters['pwa-node'] = {
  type = 'server',
  host = '127.0.0.1',
  port = '${port}',
  executable = {
    command = 'js-debug-adapter',
    args = { '${port}' },
  }
}

dap.adapters['pwa-chrome'] = {
  type = 'server',
  host = '127.0.0.1',
  port = '${port}',
  executable = {
    command = 'js-debug-adapter',
    args = { '${port}' },
  }
}

for _, language in ipairs { "typescript", "javascript", "typescriptreact" } do
  dap.configurations[language] = {
    {
      -- This is used for single file node
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
      runtimeExeccutable = "node",
    },
    {

      type = "pwa-node",
      request = "attach",
      name = "Attach",
      port = 9229,
      restart = true,
      stopOnEntry = true,
      protocol = "inspector",
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-chrome",
      request = "launch",
      name = "Start Chrome with \"localhost\"",
      url = "http://localhost:5173",
      webRoot = "${workspaceFolder}",
      userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir"
    }
  }
end
