# Homebrew Gauge

A repository for gauge related brews.

## Requirements

* [Homebrew](https://github.com/Homebrew/brew)

## Installation

Run the following command to install the latest version of gauge
```sh
$ brew install getgauge/releases/gauge
```

Refer https://docs.brew.sh/Taps to know more about taps.

## Why is this a tap ?

`gauge` >= 0.9.7 installs from a custom tap as  we need to sign the `gauge` executable to solve this [issue](https://github.com/getgauge/gauge/issues/973). Since `brew` formula doesn't allow binaries we now distribute it using this tap.

Refer the following links for more info.
* https://docs.brew.sh/Acceptable-Formulae
* https://github.com/Homebrew/homebrew-core/pull/25316