cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.7"
  sha256 arm:          "18bf4af23d32ad59f93f628469c192ae0ec38f602dadc3f6098b6c5340f51a9b",
         x86_64:       "a24c776d2384e894dfbde13abdc7a31a0271d8ce1a3753bdb59fc7b1c34dead4",
         arm64_linux:  "08796dff4ed047a0303a105ad8460c7b386352919d78dc26018676672260fddb",
         x86_64_linux: "7b721e95240a52922b1224724c87a658e3ab1af429dd5ca05c1bceae80736be4"

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
