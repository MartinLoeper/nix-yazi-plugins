{
  options =
    { mkKeyOption, ... }:
    _: {
      keys = { };
    };
  config = { cfg, setKeys, ... }: _: (setKeys cfg.keys);
}
