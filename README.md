# setup-playdate-sdk

> A GitHub action that installs the Playdate SDK.

[![License](https://img.shields.io/github/license/idleberg/setup-playdate-sdk?style=for-the-badge)](LICENSE)
[![Version](https://img.shields.io/github/v/release/idleberg/setup-playdate-sdk?style=for-the-badge)](https://github.com/idleberg/setup-playdate-sdk/releases)
[![Build](https://img.shields.io/github/actions/workflow/status/idleberg/setup-playdate-sdk/default.yml?style=for-the-badge)](https://github.com/idleberg/setup-playdate-sdk/actions)

## Usage

Configure a step that adds the `idleberg/setup-playdate-sdk` action to your workflow. Optionally, you can pass arguments to the action.

```yaml
- uses: idleberg/setup-playdate-sdk@v3.0.0
  with: 
    sdk_version: '1.11.1' # this can usually be omitted in favour of latest version
```

> [!NOTE]
> For security reasons it's recommended to use the commit hash of the [release](https://github.com/idleberg/setup-playdate-sdk/releases) as version identifier

One use case for this action is to build your game with the Playdate SDK and attach it to a GitHub release.

<details>
<summary><strong>Example</strong></summary>

```yaml
name: Create Release

on:
  push:
    # Runs whenever a git tag in SemVer pattern is pushed
    tags:
      - 'v*.*.*'

env:
  BUILD_OUTPUT: my-awesome-game

jobs:
  build:
    name: Upload Release Asset
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v2

      - name: Install SDK
        uses: idleberg/setup-playdate-sdk@v3.0.0

      - name: Build Project
        run: |
          # Compiles the project
          pdc source ${{ env.BUILD_OUTPUT }}.pdx

          # Creates an archive, since the build output is a directory
          zip -r -9 ${{ env.BUILD_OUTPUT }}-${{ github.ref_name }}.zip ${{ env.BUILD_OUTPUT }}.pdx

      - name: Create Release
        id: create_release
        uses: actions/create-release@v1
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          tag_name: ${{ github.ref_name }}
          release_name: ${{ github.ref_name }}
          draft: false
          prerelease: false

      - name: Upload Release Asset
        uses: actions/upload-release-asset@v1
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          upload_url: ${{ steps.create_release.outputs.upload_url }}
          asset_path: ./${{ env.BUILD_OUTPUT }}-${{ github.ref_name }}.zip
          asset_name: ${{ env.BUILD_OUTPUT }}-${{ github.ref_name }}.zip
          asset_content_type: application/zip
```

</details>

## All options

### List of input options

Every argument is optional.

| Input         | Description                                   | Default  |
| ------------- | ----------------------------------------------| -------- |
| `quiet`       | Quiet mode, suppresses non-error output       | `false`  |
| `sdk_version` | Specifies the version of the SDK              | `latest` |
| `set_env_var` | Sets `PLAYDATE_SDK_PATH` environment variable | `true`   |
| `update_path` | Updates `PATH` environment variable           | `true`   |


## Related

- [create-playdate-release](https://github.com/marketplace/actions/create-playdate-release)

## License

This work is licensed under [The MIT License](LICENSE).
