{
  description = "convert a static site to use only relative urls";

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let pkgs = import nixpkgs { inherit system; }; in {
      packages.default = pkgs.buildNpmPackage {
        pname = "all-relative";
        version = "2.0.0";
        src = ./.;
        npmDepsHash = "sha256-PC6xb/uBN+Biq42nrH0HDqpUYoCuLJmF4ZDb/Aug2dY=";
        dontNpmBuild = true;
      };
    });
}
