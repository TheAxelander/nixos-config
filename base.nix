{ pkgs, systemSettings, userSettings, ... }:

{
  imports = 
    [ # Default setup
      ./system/system.nix
      ./system/network.nix
      ( import ./system/ssh.nix {
        authorizedKeys = [
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwF+LzKddHQhxx0YWZhO5bDgZ1YmOmBtgawkm2E3cdBlC34Z/rTLw0r0XyS5LNeBM5/3IRBKdrafpukXCg/HtCoKlhG5Mu3vipbHNOuU8mD1ARryt144G7JqrkTae++Z8b8fvrMklRUM2H2A6kFmotASLCrJ4WXVlCBL79p4go7A+4BT6lTSodASZ4eIomdZv3haNEszTCI7nMBfYfyendofIFxIBrmho7TGReJSIpj/o3+9PNEB88zuWCqarMz1sWQ6syGdbeJDGV8tp4X0RhetiemKqGIwSDBEjJ9Kfw9JH/PMmCC72uR3l+pg3S1KbVW8gngLUjG2JYspQhTx53EieNw1MvTVskbhYFenBhsLtnLIdMNgPRcJBNufFcMi3ssnvsx199PpNYVgE4CXSmdD81Tu5Pk3UY/iqjRhGllin7raWQUyRelmalH9rYOAVXjstpE88CcwpEdtJ0YA3+vmRBSvZ0uHGZn8W+C83FMQxpOkCX3a2vkdAoxdTXdg2H9b3e7CbrEBDtfKhCeo8GLBH3dScGzeJpzbVOqK1LNAjBsVDM6di8GounXqAcnRB2bv0eHjoYJTy/lDxWdZ16MH1dr0pplHqL6vGiFmCEc949lcLbtm3NCA+1KAWDq3Dqm6c1oVb2SRgp3lvtwalEY+QH+rnMSpYUkc9RTXjceQ== axelander@Thinkleander"
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCX1UV+NexVprW/O2od2+w9uHMqG4efbaLbzqbXOR/MxrjzYwRzCR8W/+GJb6TFSW4+KQ9sK0u3SZ3td4Zwj3+qAb4A5faymd5gHn9Qb+UfeKFHDm2ryoRcWwZ9Gix4dPqesKLCeZE7ul4dV8aHVQaZMyOBM0mm/lB3nqG8pMUFagFTOJah/TDRzyn/vr7KZ8meFevqApO2PAMjFAk1CLflSaOq9BVMhWeFmJn/BmsgnkKRqa3H+0BtO0WtDZjAkzM2qVfgoeNPYMvJ81L/2UQH/rknqx2g3GeeTuPnZxC1ocb5CUypqp5Stbb1gs5TYvnoQ6SE6nKjcp8AJtR1DC5VbGQZMD7pLrdTdS+4dc7E8UAcQ2DYU8pqGzDCzzVctpUt1/Y+CZ5WqVpzRBrkT7hQaMt2FCmtgQ/XXX0xcoALPRH4rT9LwrvqHyJEGBLF6hnVXye20YqpVJWg5veuWlftxOCyOCQ0I+7qAatQk6X7cx98pUN6A8ycI3hiMOd8JAgzWBJqIQTHkw7NKvweX2gl+UcZHePxN66/B5i844F63aO796ZtltdCjV5YSn2ndVcSv/p6eQILcDNg9EXTZ641JoYaFjugTAsVf+nKqzHws8Nr8NwRptFG9Y2hsUlcP5iaYJ0FOTtLs/vjTlEtNNhPxtNCJvs+UEX3md8+t5KqYw== axelander@VR-0N1CA"
        ]; inherit userSettings;}
      )
      ./system/zsh.nix
      ./system/packages.nix
    ];
}
