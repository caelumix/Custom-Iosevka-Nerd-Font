# Custom Iosevka Nerd Font

Pre-patched [Iosevka](https://github.com/be5invis/Iosevka) with
[Nerd Font](https://github.com/ryanoasis/nerd-fonts) glyphs,
automatically built and released weekly.

## Variants

Currently ships `IosevkaTermSS04`.
Edit [release.yml](./.github/workflows/release.yml) to change the variant.

## Patching flags

```console
--careful --makegroups 2 -s -q -c -l
```

See [font-patcher](https://github.com/ryanoasis/nerd-fonts#font-patcher) for details.

## Install

```console
brew tap caelumix/custom-iosevka-nerd-font
brew install --cask font-iosevka-term-ss04-nerd-font
```

## Credits

- **Iosevka** — be5invis (Belleve)
- **Nerd Fonts** — ryanoasis (Ryan L McIntyre)

## License

This project distributes patched font files only.
The fonts and embedded glyphs remain under their original [SIL OFL 1.1](./LICENSE) license.
