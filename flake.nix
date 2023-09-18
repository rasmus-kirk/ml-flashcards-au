{
  description = "A report built with Pandoc, XeLaTex and a custom font";

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.report = (
      let
        system = "x86_64-linux";
        pkgs = nixpkgs.legacyPackages.${system};
        #fonts = pkgs.makeFontsConf { fontDirectories = [ pkgs.dejavu_fonts ]; };
      in
        pkgs.stdenv.mkDerivation {
          name = "markdown-flash-cards";
          src = ./.;
          buildInputs = with pkgs; [
            markdown-anki-decks
          ];
          phases = ["unpackPhase" "buildPhase"];
          buildPhase = ''
            mkdir -p $out
            unset SOURCE_DATE_EPOCH
            touch `find . -type f`
            export SOURCE_DATE_EPOCH=315532800
            mdankideck input $out
          '';
        }
    );

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.report;
    };
}