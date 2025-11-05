{
  options =
    { mkKeyOption, ... }:
    _: {
      keys = {
        toggle = mkKeyOption {
          on = [ "M" ];
          run = "plugin sshfs -- menu";
          desc = "Open SSHFS options";
        };
      };
    };
  config =
    {
      cfg,
      setKeys,
      ...
    }:
    { lib, ... }:
    lib.mkMerge [
      (setKeys cfg.keys)
      {
        programs.yazi.yaziPlugins.require.sshfs = { };
      }
    ];
}
