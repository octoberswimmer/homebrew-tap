cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.2"
  sha256 arm:          "1b36fbc02bb7093bdb012cb5fdfaae15d801d299194ee913eeaa71a175b73b98",
         x86_64:       "7caee2d762b4bb2a9d23e27e6233bba3240bb4f10f233ade5fa61cbdb0b4cee8",
         arm64_linux:  "26a7ee129b88ac23afec2e0edfa6f9cda133eb4c5671fbede8175f6cf71994f4",
         x86_64_linux: "cf39c3401da5d8227e6ff6b8490b9c2904d4e57166961133e18816779ef20b9e"

  url "https://github.com/octoberswimmer/aer-dist/releases/download/v#{version}/aer_#{os}_#{arch}_v#{version}.zip"
  name "aer"
  desc "Apex Execution Runtime"
  homepage "https://www.octoberswimmer.com/tools/aer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  binary "aer"
end
