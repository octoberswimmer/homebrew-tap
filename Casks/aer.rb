cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.3"
  sha256 arm:          "67ae736dbc8ad38201ee836ee267d841020916b9acf2eff431ebd4a55444bd4c",
         x86_64:       "c03274a563cd5cb828de64d878bacfc5eb68eaa5c19122b8023ba3807deb1ef3",
         arm64_linux:  "b32ab0c0f8bb4272383ccce721bbff55606f2aaba4348a86ed86aa1431eebfa4",
         x86_64_linux: "df6d1e1b190d47813a9f485c161d8dd7c8c2a226596192e13095d717bb65f2aa"

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
