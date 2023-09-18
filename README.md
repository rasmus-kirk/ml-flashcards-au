# ml-flashcards-au
Flashcards for the Machine Learning at Aarhus University

## Contributing

Feel free to fork/clone/use this repo however you like. If you do make
changes to the deck, please consider issuing a Pull Request for this repo.

## Compile cards

We use
[markdown-anki-decks](https://github.com/lukesmurray/markdown-anki-decks)
to compile the cards from markdown to actual anki decks:

```bash
mdanki input output
```

This will create the cards in the output folder.

## Compile cards using [nix](https://nixos.org/)

Nix allows you to build the cards in a reproducible way, meaning that we
will get precisely the same cards if we run the same commands on the same
git revision of this repo.

To compile using nix (with the experiemntal `nix` command enabled!):

```
nix build
```

This will create the cards in the `./result` folder.
