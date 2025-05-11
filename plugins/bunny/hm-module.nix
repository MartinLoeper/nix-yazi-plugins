{
  options =
    { cfg, mkKeyOption, ... }:
    { lib, ... }:
    {
      keys = {
        open_bookmark = mkKeyOption {
          on = [ "'" ];
          run = "plugin bunny";
          desc = "Goto bookmarked folder";
        };
      };
    };
  config = { cfg, setKeys, ... }: { config, lib, ... }: 
    lib.mkMerge [
      (setKeys cfg.keys)
      {
        programs.yazi.yaziPlugins.require."bunny" = {
          hops = {
            { key = "/",          path = "/",                                    },
            { key = "t",          path = "/tmp",                                 },
          };
        };
      }
    ];
}
