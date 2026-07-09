cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.11"
  sha256 arm:          "0efdcd1ae3fa0e3cc187feb9e9a32cd812026837eaa75bb598fe8d2b57529839",
         x86_64:       "3e5670cf34770679d37ea8a9aa3a55c040c6dbad36178fc23a209d6ba596835f",
         arm64_linux:  "ce40b16fae16825b3f17362a33c8ce43689fd7a2e85590e4379fdbf91aee9349",
         x86_64_linux: "2ac58870d4baf403767c7037d5430daa3b25cbe09940590108a8e0ddf9d57b2f"

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
