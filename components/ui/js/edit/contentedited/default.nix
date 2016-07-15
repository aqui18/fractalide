{ stdenv, buildFractalideComponent, filterContracts, genName, upkeepers, ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  filteredContracts = filterContracts ["generic_text"];
  depsSha256 = "0iginsnrsyfjpihq8nvsacxsg0r3iwrm10xpvz0cqfg8i5q1w35q";

  meta = with stdenv.lib; {
    description = "Component: replace the content";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/app/editor/view;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
