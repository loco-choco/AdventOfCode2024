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

