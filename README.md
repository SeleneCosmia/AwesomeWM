# awesome-code-doc

Code annotation for [Awesome](https://github.com/awesomeWM/awesome) window manager. The annotations are supported by [lua-language-server](https://github.com/LuaLS/lua-language-server/).

For more information about annotations see the [wiki](https://github.com/LuaLS/lua-language-server/wiki/Annotations).

# Installation

Clone this repository:

    $ git clone https://github.com/kosorin/awesome-code-doc

# Setup

## VS Code ([Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) extension)

Add the path to the cloned repository to the `Lua.workspace.library` setting:

```json
{
  "Lua.workspace.library": ["/home/user/path/to/awesome-code-doc"]
}
```

## Neovim ([nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) plugin)

Add the path to the cloned repository to `settings.Lua.workspace.library` setting:

```lua
require("lspconfig")["lua_ls"].setup({
  settings = {
    Lua = {
      workspace = {
        library = {
          -- other library definition...
          ["/path/to/awesome-code-doc"] = true
        }
      }
    }
  }
})
```

> **_NOTE:_** There are several ways to define the settings. See the extension [wiki](https://github.com/LuaLS/lua-language-server/wiki/Configuration-File) for more information.
