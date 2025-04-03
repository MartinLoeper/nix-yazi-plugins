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
  config = { cfg, setKeys, ... }: _: (setKeys cfg.keys);
}
