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
              key = [ "d" "o" "w" ];
              path = "/home/mloeper/Downloads";
              desc = "Downloads";
            }
            { 
              key = [ "d" "o" "c" ];
              path = "/home/mloeper/Documents";
              desc = "Documents";
            }
            { 
              key = "p";
              path = "/home/mloeper/Pictures";
              desc = "Pictures";
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
              key = "g";
              path = "/home/mloeper/repos/mloeper/glinq-os";
              desc = "GLINQ";
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
              key = [ "m" "o" ];
              path = "/mnt";
              desc = "Mounts";
            }
            {
              key = [ "m" "e" ];
              path = "/run/media/mloeper";
              desc = "USB Mounts";
            }
            {
              key = [ "v" ];
              path = "/mnt/vms";
              desc = "VMs";
            }
            {
              key = [ "n" ];
              path = "/mnt/vms/nixos-dev/shared";
              desc = "NixOS VM";
            }
          ];
        };
      }
    ];
}
