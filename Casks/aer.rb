cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.8"
  sha256 arm:          "82a67ac4c8ca8329eaed4fa9f1cb5c96cb3e6d057ddd89c2419107ee3bbf7da0",
         x86_64:       "ef6ea81b45c0c52fb064e995b3a5a1fd4f56efaba92b451836f3228bff759500",
         arm64_linux:  "be8721b76a4a038fa57bb34bc65869f43065fc41c8c3df26867fb59105129328",
         x86_64_linux: "13aeb77e5961f13856029af3d680f68de60072519a051ec933d3f653d5c0eb73"

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
