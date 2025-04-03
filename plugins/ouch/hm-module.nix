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

  config = { cfg, setKeys, mkRuntimeDeps, ... }:
    _: {
      runtimeDependencies = mkRuntimeDeps [ cfg.pkgs.ouch ];

      # Apply the key mappings
      inherit (setKeys cfg.keys)
      ;
    };
}
