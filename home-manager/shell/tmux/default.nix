{pkgs, ...}:{
programs.tmux = {
  enable = true;
  clock24 = true;
  baseIndex = 1;
  secureSocket = false;
};
}