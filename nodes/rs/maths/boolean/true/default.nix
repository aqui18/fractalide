{ agent, edges, mods, pkgs }:

agent {
  src = ./.;
  mods = with mods.rs; [ (rustfbp_0_3_34 {}) (capnp_0_8_15 {}) ];
  osdeps = with pkgs; [];
}
