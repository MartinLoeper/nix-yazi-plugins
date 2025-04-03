{
  options = { mkKeyOption, ... }:
    _: {
      keys = {
        compress = mkKeyOption {
          on = [ "C" ];
          run = "plugin ouch";
          desc = "Compress with ouch";
        };
      };
    };

  config = { cfg, setKeys, mkRuntimeDeps, pkgs, ... }:
    _: {
      runtimeDependencies = mkRuntimeDeps [ pkgs.ouch ];

      # Apply the key mappings
      inherit (setKeys cfg.keys)
      ;
    };
}
