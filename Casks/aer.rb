cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.3"
  sha256 arm:          "9353aa2e16c006ea89a8ffbcb5d75044d74a2a995a15b1d14681926b2ce3d5b7",
         x86_64:       "44e374f7e801db358ac575f09cf9516e31e49b168c3d78bccb44686154cdc96a",
         arm64_linux:  "0959fdea756e4334d74a5f6d95ebfc050aa0a2d5f506e74f53f8964d932566cd",
         x86_64_linux: "f472bf6c066f516afa4cb9c52cff18424a03b94a71b516cb5b9d952c8bf0bee3"

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
