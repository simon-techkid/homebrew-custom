cask "okular" do
  version "6812"
  sha256 :no_check

  url "https://cdn.kde.org/ci-builds/graphics/okular/master/macos-arm64/okular-master-#{version}-macos-clang-arm64.dmg"
  name "Okular (CI build master)"
  desc "KDE document viewer - CI/bleeding-edge macOS ARM build"
  homepage "https://kde.org/applications/graphics/okular/"

  app "Okular.app"

  # Optionally allow auto-updates / version checks:
  livecheck do
    url "https://cdn.kde.org/ci-builds/graphics/okular/master/macos-arm64/"
    regex(/okular-master-(\d+)-macos-clang-arm64\.dmg/i)
  end

  # Cleanup (if there were supporting files or symlinks):
  zap trash: [
    "~/Library/Application Support/Okular",
    "~/Library/Preferences/org.kde.okular.plist",
  ]
end
