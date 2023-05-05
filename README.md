# ml-flashcards-au
Flashcards for the Machine Learning course at Aarhus University

## Compile cards using [nix](https://nixos.org/)

```bash
nix shell nixpkgs/7091454bd11b53156b053e74503ecdb19736d77e#markdown-anki-decks
mdanki input output
```

This will create the cards in the output folder.
