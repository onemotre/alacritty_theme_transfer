# Alacritty Theme Transfer

## Intro

This is a script to transfer old alacritty theme(yml) to the new one(toml)

Alacritty of the latest version has changed its configure file from `.yml` into `toml` and it seems the team wouldn't push their toml example [issue](https://github.com/alacritty/alacritty/issues/6999). So I wrote this script.

## Usage

File orgnization

```bash
.
├── README.md
├── themes_toml
├── themes_yml
└── transfer.sh
```

### Depend

This script run by `alacritty migrate` which can be found in [alacritty](https://github.com/alacritty/alacritty)

### Transfer

Put your old theme `old.yml` into file `theme_yml` and then run this command in your shell
```bash
./transfer.sh -t old
```

### Use old one

You can also use your old configure to `your usrname` via following command (must use `sudo`):
```bash
sudo ./transfer.sh -i old -u usrname
```

## Recommond

Here are the repositories of alacritty themes I recommond.
[iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/README.md#flatland)