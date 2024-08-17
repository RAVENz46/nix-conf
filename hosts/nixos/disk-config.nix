{
  disko.devices = {
    disk = {
      main = {
        device = "/dev/disk/by-path/pci-0000:00:17.0-ata-2";
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              end = "2G";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            };
            root = {
              name = "root";
              end = "-0";
              content = {
                type = "filesystem";
                format = "bcachefs";
                mountpoint = "/";
              };
            };
          };
        };
      };
      sub = {
        device = "/dev/disk/by-path/pci-0000:00:17.0-ata-1";
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            hdd = {
              name = "hdd";
              size = "100%";
              content = {
                type = "filesystem";
                format = "bcachefs";
                mountpoint = "/media/hdd";
              };
            };
          };
        };
      };
    };
  };
}
