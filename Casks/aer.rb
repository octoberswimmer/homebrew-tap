cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.16"
  sha256 arm:          "476ef7074b2a0df70897dddfd15b3538389fa358dba7794c4f66e78f052895e8",
         x86_64:       "a3822161ae21d0fba74f51662c5e30fb45bb2bdf0c81b8e4ddc8590ee5862782",
         arm64_linux:  "90bb25de053fa37b9a48d6b82e9699784b3ed8fa28aad60980751a00705ee7af",
         x86_64_linux: "1f7eef5b1807f23f3ce1e943234e5d77038805a044a4aa2a51702c055a57a61f"

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
