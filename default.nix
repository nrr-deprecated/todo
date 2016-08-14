{ stdenv ? (import <nixpkgs> {}).stdenv }:
let
  version = "master";
in stdenv.mkDerivation {
  name = "todo-${version}";
  src = ./.;

  installPhase = ''
    install -vd $out/bin
    install -vm 755 todo-add $out/bin
    install -vm 755 todo-cat $out/bin
    install -vm 755 todo-filter-done $out/bin
    install -vm 755 todo-filter-overdue $out/bin
    install -vm 755 todo-filter-today $out/bin
    install -vm 755 todo-filter-tomorrow $out/bin
    install -vm 755 todo-filter-undone $out/bin
    install -vm 755 todo-mark-done $out/bin
    install -vm 755 todo-mark-undone $out/bin
    install -vm 755 todo-postpone-until-tomorrow $out/bin
    install -vm 755 todo-promote-to-today $out/bin
    install -vm 755 todo-show-item-numbers $out/bin
  '';

  meta = {
    description = ''
A to do list manager inspired by Randy Pausch's time management talk.
'';
    platforms = stdenv.lib.platforms.all;
  };
}
