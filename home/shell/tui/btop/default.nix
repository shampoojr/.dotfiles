{
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "Catppuccin-Mocha";
      theme_background = true;
      truecolor = true;
      update_ms = 100;
      force_tty = false;
      rounded_corners = true;
      vim_keys = false;
      preset = ''"cpu:1:default,proc:0:default" "cpu:0:default,mem:0:default,net:0:default" "cpu:0:block,net:0:tty"'';
      graph_symbol = "braille";
      graph_symbol_cpu = "default";
      graph_symbol_gpu = "default";
      graph_symbol_mem = "default";
      graph_symbol_net = "default";
      graph_symbol_proc = "default";
      proc_sorting = "cpu lazy";
      proc_reversed = false;
      proc_tree = true;
      proc_colors = true;
      proc_gradient = true;
      proc_per_core = true;
      proc_mem_bytes = true;
      proc_cpu_graphs = true;
      proc_info_smaps = false;
      proc_left = false;
      proc_filter_kernel = false;
      proc_aggregate = false;
      cpu_graph_upper = "Auto";
      cpu_graph_lower = "Auto";
      show_gpu_info = "Auto";
      cpu_invert_lower = true;
      cpu_single_graph = false;
      cpu_bottom = false;
      show_uptime = true;
      check_temp = true;
      cpu_sensor = "Auto";
      show_coretemp = true;
      cpu_core_map = "";
      temp_scale = "celsius";
      base_10_sizes = false;
      show_cpu_freq = true;
      clock_format = "%X";
      background_update = true;
      custom_cpu_name = "";
      disks_filter = "";
      mem_graphs = true;
      mem_below_net = false;
      zfs_arc_cached = true;
      show_swap = true;
      swap_disk = true;
      show_disks = true;
      only_physical = true;
      use_fstab = true;
      zfs_hide_datasets = false;
      disk_free_priv = false;
      show_io_stat = true;
      io_mode = false;
      io_graph_combined = false;
      io_graph_speeds = "";
      net_download = 100;
      net_upload = 100;
      net_auto = true;
      net_sync = true;
      net_iface = "";
      base_10_bitrate = "Auto";
      show_battery = true;
      selected_battery = "Auto";
      show_battery_watts = false;
      log_level = "WARNING";
      nvml_measure_pcie_speeds = true;
      rsmi_measure_pcie_speeds = true;
      gpu_mirror_graph = true;
      custom_gpu_name0 = "";
    };
    themes = {
      Catppuccin-Mocha = ''
        # Main background, empty for terminal default, need to be empty if you want transparent background
        theme[main_bg]="#1e1e2e"

        # Main text color
        theme[main_fg]="#cdd6f4"

        # Title color for boxes
        theme[title]="#cdd6f4"

        # Highlight color for keyboard shortcuts
        theme[hi_fg]="#89b4fa"

        # Background color of selected item in processes box
        theme[selected_bg]="#45475a"

        # Foreground color of selected item in processes box
        theme[selected_fg]="#89b4fa"

        # Color of inactive/disabled text
        theme[inactive_fg]="#7f849c"

        # Color of text appearing on top of graphs, i.e uptime and current network graph scaling
        theme[graph_text]="#f5e0dc"

        # Background color of the percentage meters
        theme[meter_bg]="#45475a"

        # Misc colors for processes box including mini cpu graphs, details memory graph and details status text
        theme[proc_misc]="#f5e0dc"

        # CPU, Memory, Network, Proc box outline colors
        theme[cpu_box]="#cba6f7" #Mauve
        theme[mem_box]="#a6e3a1" #Green
        theme[net_box]="#eba0ac" #Maroon
        theme[proc_box]="#89b4fa" #Blue

        # Box divider line and small boxes line color
        theme[div_line]="#6c7086"

        # Temperature graph color (Green -> Yellow -> Red)
        theme[temp_start]="#a6e3a1"
        theme[temp_mid]="#f9e2af"
        theme[temp_end]="#f38ba8"

        # CPU graph colors (Teal -> Lavender)
        theme[cpu_start]="#94e2d5"
        theme[cpu_mid]="#74c7ec"
        theme[cpu_end]="#b4befe"

        # Mem/Disk free meter (Mauve -> Lavender -> Blue)
        theme[free_start]="#cba6f7"
        theme[free_mid]="#b4befe"
        theme[free_end]="#89b4fa"

        # Mem/Disk cached meter (Sapphire -> Lavender)
        theme[cached_start]="#74c7ec"
        theme[cached_mid]="#89b4fa"
        theme[cached_end]="#b4befe"

        # Mem/Disk available meter (Peach -> Red)
        theme[available_start]="#fab387"
        theme[available_mid]="#eba0ac"
        theme[available_end]="#f38ba8"

        # Mem/Disk used meter (Green -> Sky)
        theme[used_start]="#a6e3a1"
        theme[used_mid]="#94e2d5"
        theme[used_end]="#89dceb"

        # Download graph colors (Peach -> Red)
        theme[download_start]="#fab387"
        theme[download_mid]="#eba0ac"
        theme[download_end]="#f38ba8"

        # Upload graph colors (Green -> Sky)
        theme[upload_start]="#a6e3a1"
        theme[upload_mid]="#94e2d5"
        theme[upload_end]="#89dceb"

        # Process box color gradient for threads, mem and cpu usage (Sapphire -> Mauve)
        theme[process_start]="#74c7ec"
        theme[process_mid]="#b4befe"
        theme[process_end]="#cba6f7"
      '';
    };
  };
}
