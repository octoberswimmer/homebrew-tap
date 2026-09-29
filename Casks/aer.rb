cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.18"
  sha256 arm:          "0080d7c717109c97c8e4761d7deb5e0c4ba20bbe221bbd7c451ad3767e2e8f63",
         x86_64:       "dc0799ca4d2c549e620afb805aee981c56e6b3d3bd3464b0b6e93c7f47aba957",
         arm64_linux:  "fb367c19af414141379a78761f7bbd2a8cc8b0a6b26df9839cc2593ae7bf8998",
         x86_64_linux: "350cbe55b41838ac3642e72200af89be470d67aebdb70c34eba8101bc20583c0"

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
