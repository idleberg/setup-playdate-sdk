# setup-playdate-sdk

> A GitHub action that installs the Playdate SDK.

[![License](https://flat.badgen.net/github/license/idleberg/setup-playdate-sdk)](LICENSE)
[![Version](https://flat.badgen.net/github/release/idleberg/setup-playdate-sdk)](https://github.com/idleberg/setup-playdate-sdk/releases)
[![Status](https://flat.badgen.net/github/checks/idleberg/setup-playdate-sdk/)](https://github.com/idleberg/setup-playdate-sdk/actions)

## Usage

Configure a step that adds the `idleberg/setup-playdate-sdk` action to your workflow. Optionally, you can pass arguments to the action.

**Example**

```yaml
jobs:
  steps:
    - uses: idleberg/setup-playdate-sdk@v0.2.0
      with: 
        sdk-version: '1.11.1'
```

Also check the [real-world examples](https://github.com/idleberg/setup-playdate-sdk/tree/main/.github/workflows) used for this project.

## All options

### List of input options

Every argument is optional.

| Input         | Description                                   | Default  |
| ------------- | ----------------------------------------------| -------- |
| `install-sdk` | Installs Playdate SDK                         | `true`   |
| `sdk-version` | Specifies the version of the SDK              | `latest` |
| `set-env-var` | Sets `PLAYDATE_SDK_PATH` environment variable | `true`   |
| `update-path` | Updates `PATH` environment variable           | `true`   |

## License

This work is licensed under [The MIT License](LICENSE).
