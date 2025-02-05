# [LuaLS](https://github.com/luals/lua-language-server) Definitions for [AwesomeWM](https://github.com/awesomeWM/awesome)

Code annotation for [Awesome](https://github.com/awesomeWM/awesome) window manager.

For more information about annotations see the [LuaLS website](https://luals.github.io/wiki/annotations/).

# Installation


1. Clone this repository:

    ```
    git clone https://github.com/SeleneCosmia/AwesomeWM
    ```

2. Add this repository as a [git submodule](https://git-scm.com/docs/git-submodule) by running the following command
   in your config directory:

   ```
   git submodule add https://github.com/SeleneCosmia/AwesomeWM
   ```

> [!TIP]
> You can optionally choose the path to clone the git submodule into by
> adding a path to the end of the above command. For example:
> ```
> git submodule add https://github.com/SeleneCosmia/AwesomeWM library/awesome
> ```
> This will clone the repo into a directory named 'awesome' inside of the
> library directory which is in the root of your git repository.

# Setup

> [!TIP]
> There are several ways to define the settings. See the [wiki](https://luals.github.io/wiki/configuration/) for more information.


## .luarc.json ([lua-ls](https://github.com/LuaLS/lua-language-server/wiki/Libraries#placing-in-your-workspace))

Add a .luarc.json file to your config directory.
In it, add the path to the cloned repository to the `workspace.library` setting:

```json
{
    "workspace.library": [
        "/path/to/this-repo"
    ]
}
```

## VS Code ([Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) extension)

Add the path to the cloned repository to the `Lua.workspace.library` setting:

```json
{
  "Lua.workspace.library": ["/home/user/path/to/this-repo"]
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
          ["/path/to/this-repo"] = true
        }
      }
    }
  }
})
```

## Lite-XL ([lite-xl-lsp](https://github.com/lite-xl/lite-xl-lsp) plugin)

Add the path to the cloned repository to `settings.Lua.workspace.library` setting:

```lua
require("plugins.lsp").add_server {
    name = "lua-language-server",
    language = "lua",
    file_patterns = { "%.lua$" },
    command = { 'lua-language-server' },
    verbose = false,
    settings = {
        Lua = {
            workspace = {
                library = {
                    ["/path/to/this-repo"] = true
                }
            }
        }
    }
]
```
