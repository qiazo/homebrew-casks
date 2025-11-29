# Homebrew Casks

[![Test](https://github.com/qiazo/homebrew-casks/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/qiazo/homebrew-casks/actions/workflows/test.yml)
[![Release PG](https://github.com/qiazo/homebrew-casks/actions/workflows/release-pg.yml/badge.svg)](https://github.com/qiazo/homebrew-casks/actions/workflows/release-pg.yml)
[![Release FR](https://github.com/qiazo/homebrew-casks/actions/workflows/release-fr.yml/badge.svg)](https://github.com/qiazo/homebrew-casks/actions/workflows/release-fr.yml)

## Casks

| Cask         | Version                                                                                                                                                                                                                                                                                                              | 
|:-------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| picguard     | ![Homebrew Cask Version](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fraw.githubusercontent.com%2Fqiazo%2Fhomebrew-casks%2Frefs%2Fheads%2Fmain%2FCasks%2Fpicguard.rb&search=version%5Cs%2B%22%28%3F%3Cversion%3E%5Cd%2B%28%3F%3A%5C.%5Cd%2B%29%2B%29%22&replace=%24%3Cversion%3E&label=homebrew)     |
| picguard-pro | ![Homebrew Cask Version](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fraw.githubusercontent.com%2Fqiazo%2Fhomebrew-casks%2Frefs%2Fheads%2Fmain%2FCasks%2Fpicguard-pro.rb&search=version%5Cs%2B%22%28%3F%3Cversion%3E%5Cd%2B%28%3F%3A%5C.%5Cd%2B%29%2B%29%22&replace=%24%3Cversion%3E&label=homebrew) |
| fafarunner   | ![Homebrew Cask Version](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fraw.githubusercontent.com%2Fqiazo%2Fhomebrew-casks%2Frefs%2Fheads%2Fmain%2FCasks%2Ffafarunner.rb&search=version%5Cs%2B%22%28%3F%3Cversion%3E%5Cd%2B%28%3F%3A%5C.%5Cd%2B%29%2B%29%22&replace=%24%3Cversion%3E&label=homebrew)   |

## Install

`brew install qiazo/casks/<cask>`

Or `brew tap qiazo/casks` and then `brew install <cask>`.

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "qiazo/casks"
brew "<cask>"
```

## Debug

`brew audit --strict --fix --cask <cask>`

`brew livecheck --debug <cask>`

## Documentation

Your taps are Git repositories located at `$(brew --repository)/Library/Taps`

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
