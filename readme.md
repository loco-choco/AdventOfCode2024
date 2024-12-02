# Advent Of Code 2024

This year I have self imposed the challenge of only using [Rust](https://www.rust-lang.org/)
and [J](https://code.jsoftware.com/wiki/Guides/Language_FAQ), let's see how this one goes.

To run the codes, for systems with Nix and Flakes enabled, there will be a Nix Flake.

## Solutions in J

To run these solutions you need a J interpreter, you can get one in nix by running the following command

```bash
    nix shell nixpkgs#j -c $SHELL 
```
Then save the input data to a file named `data` and then run
```bash
    jconsole part-01/solution.ijs
    jconsole part-02/solution.ijs
```
to get the answer in stdout.

