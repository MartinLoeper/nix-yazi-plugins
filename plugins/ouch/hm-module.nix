{
  options = { mkKeyOption, ... }:
    { pkgs, ... }: {
      keys = {
        compress = mkKeyOption {
          on = [ "C" ];
          run = "plugin ouch";
          desc = "Compress with ouch";
        };
      };
      runtimeDeps = [ pkgs.ouch ];
    };
  config = { cfg, setKeys, ... }: _: (setKeys cfg.keys);
}
