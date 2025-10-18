cask "okular" do
  version "6812"
  sha256 :no_check

  url "https://cdn.kde.org/ci-builds/graphics/okular/master/macos-arm64/okular-master-#{version}-macos-clang-arm64.dmg"
  name "Okular"
  desc "Document viewer"
  homepage "https://kde.org/applications/graphics/okular/"

  livecheck do
    url "https://cdn.kde.org/ci-builds/graphics/okular/master/macos-arm64/"
    regex(/okular-master-(\d+)-macos-clang-arm64\.dmg/i)
  end

  app "Okular.app"

  zap trash: [
    "~/Library/Application Support/Okular",
    "~/Library/Preferences/org.kde.okular.plist",
  ]
end
