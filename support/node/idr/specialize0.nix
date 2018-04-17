{ buffet
  , genName
  , unifyCapnpEdges
}:

{ fractalType ? ""}:

{ name ? null
  , src ? null
  , mods ? []
  , osdeps ? []
  , edges ? []
  , ...
} @ args:

let
  build-idris-package = buffet.mods.idr.build-idris-package;
  compName = if name == null then genName src else name;
  unifyIdrisEdges = import ./unifyIdrisEdges.nix { inherit buffet; };
  unifiedIdrisEdges = if edges != [] then unifyIdrisEdges {
    name = compName;
    edges = edges;
  } else [];
in build-idris-package {
  pkgs = buffet.pkgs;
  name = compName;
  buildInputs = [ osdeps ];
  inherit src unifiedIdrisEdges;
  propagatedBuildInputs = [ mods ];
}
