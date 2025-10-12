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
          notify = true;
          hops = [
            { 
              key = "/";
              path = "/";
            }
            { 
              key = "h";
              path = "/home/mloeper/";
            }
            { 
              key = "s";
              path = "/home/mloeper/Pictures/Screenshots/";
            }
            { 
              key = "v";
              path = "/home/mloeper/Videos/";
            }
            { 
              key = "d";
              path = "/home/mloeper/Downloads";
            }
            { 
              key = "t";
              path = "/tmp";
            }
          ];
        };
      }
    ];
}
