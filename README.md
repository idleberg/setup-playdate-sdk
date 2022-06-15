# setup-playdate-sdk

> A GitHub action that installs the Playdate SDK.

![License](https://img.shields.io/github/license/idleberg/setup-playdate-sdk?style=flat-square)
![Version](https://img.shields.io/github/v/tag/idleberg/setup-playdate-sdk?style=flat-square)
![Status](https://img.shields.io/github/workflow/status/idleberg/setup-playdate-sdk/Tests?style=flat-square)

## Usage

Configure a step that adds the `idleberg/setup-playdate-sdk` action to your workflow. Optionally, you can pass the following parameters via `with`

**Example**

```yaml
jobs:
    steps:
        - uses: idleberg/setup-playdate-sdk@v0.1.0
            with: # the following options use the defaults
                install_sdk: 'true'
                sdk_version: 'latest'
                set_env_var: 'true'
                update_path: 'true'
```

See [`test.yml`](https://github.com/idleberg/setup-playdate-sdk/blob/main/.github/workflows/test.yml) for a real world example.

### Options

#### install_sdk

Default: `true`

Install Playdate SDK if true

#### sdk_version

Default: `latest`

Specify the version of the SDK

#### set_env_var

Default: `true`

Set `PLAYDATE_SDK_PATH` environment variable

#### update_path

Default: `true`

Update environment variable PATH for workflow if true

## License

This work is licensed under [The MIT License](LICENSE).
