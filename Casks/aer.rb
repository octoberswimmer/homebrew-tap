cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.1"
  sha256 arm:          "cec2d686c1161bcff5924562043f3a5bbd6baca41581976af265560a6e4505f8",
         x86_64:       "daeddb67f9639ab14d89707a2825b98165f3cd7190ef6c2d30a560b4258517bd",
         arm64_linux:  "a8dd9884fc3c55063b1c0a11b72499025585b097fc29427943afb52aa7b3c5f3",
         x86_64_linux: "25548610cefc1e46531ee2a6940b321897ab6a9947e501a2a34107022db1e48f"

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
