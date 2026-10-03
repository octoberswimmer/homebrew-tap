cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.21"
  sha256 arm:          "c287fe34d75b1fa3877f7665478a3d03c567323ee0d5e192b6d9cd1218fb5783",
         x86_64:       "e9f533fd1a0f908ab9442a05069283fa23bee99b2b2c2e2478b2a671373a9b9c",
         arm64_linux:  "36fdbb9974a6475389520762d43927587a1a803e464ce44660a2f1b6cf0183da",
         x86_64_linux: "3323c9e7f77d6c1a646ccfe1a7943638d0fb9f0124cc282a0f835ec5df9486f2"

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
