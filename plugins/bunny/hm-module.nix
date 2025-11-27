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
        open_bookmark_fuzzy = mkKeyOption {
          on = [ "\"" ];
          run = "plugin bunny fuzzy";
          desc = "Search bookmarked folder";
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
              desc = "Root";
            }
            { 
              key = "h";
              path = "/home/mloeper/";
              desc = "Home";
            }
            { 
              key = "s";
              path = "/home/mloeper/Pictures/Screenshots/";
              desc = "Screenshots";
            }
            { 
              key = "v";
              path = "/home/mloeper/Videos/";
              desc = "Videos";
            }
            { 
              key = "d";
              path = "/home/mloeper/Downloads";
              desc = "Downloads";
            }
            { 
              key = "Pictures";
              path = "/home/mloeper/Pictures";
              desc = "Downloads";
            }
            { 
              key = "t";
              path = "/tmp";
              desc = "TMP";
            }
            { 
              key = "f";
              path = "/home/mloeper/repos/mloeper/glinq-os/home/files";
              desc = "GLINQ Files";
            }
            {
              key = [ "c" "n" ];
              path = "/home/mloeper/nesto/repos";
              desc = "Nesto Code";
              }
            {
              key = [ "c" "p" ];
              path = "/home/mloeper/repos";
              desc = "My Code";
            }
            {
              key = "m";
              path = "/run/media/mloeper";
              desc = "USB Mounts";
            }
          ];
        };
      }
    ];
}
