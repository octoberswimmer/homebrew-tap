cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.19"
  sha256 arm:          "39b3a9e32ec96859a40de7bb880c6105f351f15ecccde452b2fdfa279e8c0efd",
         x86_64:       "b1339dffe9dc722f32c58e4b775873b6807215fe8d4f621de559ed5ab1119436",
         arm64_linux:  "91384217a3cab99ff1430c72ab77d8ebae614d3691f0f8b9c21a360aa7d70e6d",
         x86_64_linux: "10191b7c74bb4704b78d9f9659f15d6250f14d685cdcfa62abe2946aeebdd402"

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
