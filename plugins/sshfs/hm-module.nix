{
  options =
    { mkKeyOption, ... }:
    _: {
      keys = {
        toggle = mkKeyOption {
          on = [ "M" "s" ];
          run = "plugin sshfs -- menu";
          desc = "Open SSHFS options";
        };
      };
    };
  config = { cfg, setKeys, ... }: _: (setKeys cfg.keys);
}
