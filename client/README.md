## Setup

**Install yarn package manager for your system**  
_Windows_

1. Install Choco (will need local admin)
2. Install yarn: `Choco install yarn`

_Linux_

1. Check your system's package manager, yarn should be available
2. `yarn <cmd>` (to run stuff)

**Install the parcel module bundler**

```bash
yarn global add parcel-bundler
```

**Install `elm` command-line tools**

```bash
yarn global add elm
```

**Run the project**

```bash
yarn start
```

## Elm-Format

Add the following to your (vscode) editor settings:

```json
// windows uses '\\'
"elm.formatCommand": ".\\node_modules\\.bin\\elm-format",
"[elm]": {
    "editor.formatOnSave": true
}
```
