{
  programs.waybar = {
    style =
      let
        active = "#FFFFFF";
        base = "#000000";
        empty = "#FFFFFF";
        fs = "18";
        hover = "#ededed";
        inactive = "#dbdbdb";
        text = "#FFFFFF";
      in
      ''
        *{
        font-family:"Symbols Nerd Font";
        border:none;
        border-radius: 0;
        min-height:24px;
        }

        window {
        	font-size: 20px;
        	font-weight: 800;
        }

        window#waybar {
        	background: rgba(0,0,0,1);
        }

        #workspaces {
        background: #444;
        border-radius: 2rem;
        border: 1px solid white;
        }

        #workspace button {
        background:transparent;
        }
      '';
  };
}
