# KaliForge: Your Ultimate Kali Linux Setup

Welcome to **KaliForge**! This repository transforms your Kali Linux into a powerful, fully-customized operating system setup, crafted for both security professionals and enthusiasts.

## Features

- **Beautiful UI**: Leverage Sway for a modern and fluid user interface with pywal-color integration.
- **Efficient Workflow**: Includes setups for Alacritty, Rofi, Polybar, Sway, and more.
- **Developer-Friendly**: Pre-configured terminal (kitty), zsh with plugins, Python, Node.js, and additional tools.
- **Secure and Private**: Implements security configurations for kernel and network optimizations.
- **Highly Customizable**: Built with flexibility in mind—tailor the environment to fit your needs.

## Prerequisites

- **Kali Linux**: This setup is designed to work on Kali Linux. Ensure you have the latest version.
- **Basic Understanding of Linux**: Familiarity with terminal commands, package managers, and configuration files is beneficial but not required.
- **Network Connection**: Required to download necessary packages and perform installations.

## Get Started

### Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/KaliForge.git ~/KaliForge
   cd ~/KaliForge
   ```

2. **Run Installation Script**

   Execute the installation script to setup your environment:

   ```bash
   ./install
   ```

3. **Run Kali Linux Setup**

   For additional configurations and installations specific to Kali, run:

   ```bash
   ~/.local/bin/install-dependencies
   ~/.local/bin/setup-kali
   ```

### Configuration Details

- **Shell**: Uses Zsh with Oh-My-Zsh, Powerlevel10k, and useful plugins like `fzf`, `zsh-autosuggestions`, `zsh-syntax-highlighting`.
- **Window Manager**: Sway offers i3-like usability on Wayland with enhanced animations and effects.
- **Status Bar**: Polybar, configured with dynamic modules and colors from pywal.
- **Launcher**: Rofi for a fast and efficient launch experience.
- **Terminal**: Kitty and Alacritty, both configured for transparency and pywal integration.

### Key Bindings

- **Mod Key**: `Mod4` (usually mapped to the Windows key)
  - **Terminal**: `Mod + Return`
  - **Application Launcher**: `Mod + D`
  - **Screenshot**: `Mod + Print`
  - **Lock Screen**: `Mod + L`

### Network Optimizations

- Utilizes `optimize-network` script for improved latency and connectivity.
- Sets Cloudflare and Google DNS for faster DNS queries.

### Secure Boot

- Provides scripts to sign kernels and enable secure boot features.
- Automatically manages secure boot keys and enrolls them.

## Additional Setup

- **Customize Your Colors**: Use pywal to create beautiful color schemes based on your wallpaper.
- **Add Your Applications**: Extend your setup by installing additional packages via `apt`.
- **Git Configuration**: Set up your Git username and email in the setup process.

### Troubleshooting

- **Display Issues**: Make sure to install all required packages and restart Sway.
- **Network Issues**: If you experience connectivity issues, rerun the `optimize-network` script.
- **Package Errors**: Use `sudo apt update && sudo apt upgrade` to resolve package discrepancies.

## Contributions

Your contributions are welcome! Feel free to open PRs for any enhancements, fixes, or additional features.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Enjoy your new Kali Linux environment with **KaliForge**!

