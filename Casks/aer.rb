cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.32"
  sha256 arm:          "37536406e89ac3464b4c1d3f9c80c1e8d54af7d25ffbf6e3125f455273602bdb",
         x86_64:       "93d581b7740c9c6be26957bcbc0708ba3481be64e1fe2fb05152663a33422549",
         arm64_linux:  "b23073c1bf5381dd136d4dc7294591ed5cd6f35a2916110252b640ab146d36cb",
         x86_64_linux: "b74312eda4aeb1ebd1753d8df93203346035994d0b17c35fe355ce63f52d684a"

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
