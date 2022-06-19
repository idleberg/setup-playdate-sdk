# setup-playdate-sdk

> A GitHub action that installs the Playdate SDK.

[![License](https://img.shields.io/github/license/idleberg/setup-playdate-sdk?style=for-the-badge)](LICENSE)
[![Version](https://img.shields.io/github/v/tag/idleberg/setup-playdate-sdk?style=for-the-badge)](https://github.com/idleberg/setup-playdate-sdk/releases)
[![Status](https://img.shields.io/github/workflow/status/idleberg/setup-playdate-sdk/Tests?style=for-the-badge&label=tests)](https://github.com/idleberg/setup-playdate-sdk/actions)

## Usage

Configure a step that adds the `idleberg/setup-playdate-sdk` action to your workflow. Optionally, you can pass arguments to the action.

**Example**

```yaml
jobs:
  steps:
    - uses: idleberg/setup-playdate-sdk@v1.0.0
      with: 
        sdk-version: '1.11.1'
```

Also check the [real-world examples](https://github.com/idleberg/setup-playdate-sdk/tree/main/.github/workflows) used by this project.

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
