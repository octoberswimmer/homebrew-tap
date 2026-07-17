cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.18"
  sha256 arm:          "80d1ee6c1734d9e56407eca30f22d99b2e1f28aae14fe1bb0dfd64347e0d0246",
         x86_64:       "ed955362d7c4aecb152ed7c014eb4b019ab745d7bbada167b9e489729d3bfca0",
         arm64_linux:  "bd67daec193c0224d953b1f48cf18908ce00db4121d9dc4652d7e9dbbe41c495",
         x86_64_linux: "2a8635823c91c7a19dbcb8eea229e6fa988b60126e72557a7de32bbf4509119a"

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
