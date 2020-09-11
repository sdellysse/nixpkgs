# This file was generated by go2nix.
{ stdenv, buildGoPackage, fetchgit }:

buildGoPackage rec {
  pname = "codesearch";
  version = "20150717-${stdenv.lib.strings.substring 0 7 rev}";
  rev = "a45d81b686e85d01f2838439deaf72126ccd5a96";

  goPackagePath = "github.com/google/codesearch";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/google/codesearch";
    sha256 = "12bv3yz0l3bmsxbasfgv7scm9j719ch6pmlspv4bd4ix7wjpyhny";
  };

  meta = {
    description = "Fast, indexed regexp search over large file trees";
    homepage = "https://github.com/google/codesearch";
    license = [ stdenv.lib.licenses.bsd3 ];
    maintainers = [ stdenv.lib.maintainers.bennofs ];
    platforms = stdenv.lib.platforms.unix;
  };
}
