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
            { 
              key = "f";
              path = "/home/mloeper/repos/mloeper/glinq-os/home/files";
            }
            {
              key = "r";
              path = "/home/mloeper/nesto/repos";
            }
            {
              key = "p";
              path = "/home/mloeper/repos";
            }
          ];
        };
      }
    ];
}
