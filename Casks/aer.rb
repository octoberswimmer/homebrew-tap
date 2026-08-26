cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.37"
  sha256 arm:          "866651ec937d496c8bed290a642dc50b47cf1f93ceaf2ee2ab4bd90ee8623d8b",
         x86_64:       "86224be7c94d5cbba4c4355e1bf34019aef461b99f77be41b4e5457e0eded703",
         arm64_linux:  "01dce9d9b710d9e0b0c8b8a76327606ef982808133044954a94572b988a6f738",
         x86_64_linux: "25f2a986137fcaea2c7f5272b6eac53b09ec6b74198edbf514c8fb72fec4ddf1"

  url "https://github.com/octoberswimmer/aer-dist/releases/download/v#{version}/aer_#{os}_#{arch}_v#{version}.zip",
      verified: "github.com/octoberswimmer/aer-dist/"
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
