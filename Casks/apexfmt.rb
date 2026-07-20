cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.58.0"
  sha256 arm:          "620191c41e086d2e83d9d05bc5088d169bc2fec876ff7d87f514a8209748f5f2",
         x86_64:       "c07416f978c0e1673b9b7e5f4faf6db994f5f6430c649a4235ee4c174acb0f86",
         arm64_linux:  "c9b4f8562714822fee95986ffd2f9195696e6fb76602bcd0fc23f5fcc5c1ea23",
         x86_64_linux: "c9d3446d50e2708790df2cc8e2222e9601ff3300a74a97216011027089e7380f"

  url "https://github.com/octoberswimmer/apexfmt/releases/download/v#{version}/apexfmt_#{os}_#{arch}_v#{version}.zip",
      verified: "github.com/octoberswimmer/apexfmt/"
  name "apexfmt"
  desc "Format Apex code automatically"
  homepage "https://www.octoberswimmer.com/tools/apexfmt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "apexfmt"
end
