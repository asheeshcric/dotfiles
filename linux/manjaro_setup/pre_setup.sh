echo "Enabling AUR from software preferences first"
sudo sed --in-place "s/#EnableAUR/EnableAUR/" "/etc/pamac.conf"
echo "Enable check for updates for AUR"
sudo sed --in-place "s/#CheckAURUpdates/CheckAURUpdates/" "/etc/pamac.conf"

# Make a backup dir in Downloads
mkdir ~/Downloads/backups

# Updating the system
echo "Updating the system"
sudo pacman -Syu --no-confirm

# Install base-devel
echo "Installing base-devel"
sudo pacman -S --noconfirm base-devel --needed
echo "base-devel install complete..."

# Set up oh-my-zsh
echo "Setting up oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
