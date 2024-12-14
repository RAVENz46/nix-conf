final: prev: {
  adi1090x-plymouth-themes = prev.adi1090x-plymouth-themes.overrideAttrs (oldAttrs: rec {
    selected_themes = [ "circuit" ];
    installPhase =
      oldAttrs.installPhase
      + ''
        for theme in ${toString selected_themes}; do
          echo 'nixos_image = Image("header-image.png");' >> $out/share/plymouth/themes/$theme/$theme.script
          echo 'nixos_sprite = Sprite();' >> $out/share/plymouth/themes/$theme/$theme.script
          echo 'nixos_sprite.SetImage(nixos_image);' >> $out/share/plymouth/themes/$theme/$theme.script
          echo 'nixos_sprite.SetX(Window.GetX() + (Window.GetWidth() / 2 - nixos_image.GetWidth() / 2));' >> $out/share/plymouth/themes/$theme/$theme.script
          echo 'nixos_sprite.SetY(Window.GetHeight() - nixos_image.GetHeight() - 50);' >> $out/share/plymouth/themes/$theme/$theme.script
        done
      '';
  });
}
