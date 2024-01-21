# ml-flashcards-au
Flashcards for the Machine Learning course at Aarhus University

## Contributing

Feel free to fork/clone/use this repo however you like. If you do make
changes to the deck, please consider issuing a Pull Request for this repo.

## Compile cards

We use
[markdown-anki-decks](https://github.com/lukesmurray/markdown-anki-decks)
to compile the cards from markdown to actual anki decks:

```shell
mdankideck input output
```

This will create the cards in the output folder.

## Compile cards using [nix](https://nixos.org/)

Nix allows you to build the cards in a reproducible way, meaning that we
will get precisely the same cards if we run the same commands on the same
git revision of this repo.

This also saves you from installing any dependencies other than nix and it also saves you from worrying if you have the right versions. Simply
install nix[^1] if you haven't already and run the following command:

```shell
nix build --extra-experimental-features nix-command --extra-experimental-features flakes
```

This will create a symbolic link (`./result`) with the anki files.

[^1]: You can run the following command to install nix on linux and macos: `curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install`. It uses the [Determinate Systems Nix Installer](https://github.com/DeterminateSystems/nix-installer) which is objectively superior to nix's native installer.
