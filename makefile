flatpak:
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	flatpak install --noninteractive flathub org.flatpak.Builder org.freedesktop.Platform/x86_64/23.08 org.freedesktop.Sdk/x86_64/23.08 org.freedesktop.Sdk.Extension.vala/x86_64/23.08
	flatpak-builder --repo=repo build finance.reckoner.Reckoner.yaml --force-clean
	flatpak build-bundle repo reckoner.flatpak finance.reckoner.Reckoner

clean:
	rm -rf .flatpak-builder repo build reckoner.flatpak