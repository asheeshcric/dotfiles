# Upgrade system and packages
pacman --noconfirm -Syu

# Installing packages
pacman -S package_name

# Remove a package (the "s" flag also removes the dependencies that are not required)
pacman -Rs package_name

# Query a package to install
pacman -Ss package_name

# Listing installed packages
pacman -Qe	# all packages
pacman -Qm 	# manually installed
pacman -Qn	# native packages
pacman -Qs regex # listing packages by regex
pacman -Qdt # list packages that are no longer required

# Recursively remove unused packages and configurations
pacman -Rns $(pacman -Qtdq)
