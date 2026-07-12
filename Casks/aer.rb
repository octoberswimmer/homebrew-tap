cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.14"
  sha256 arm:          "3af209e6ba5c1b82d08b729cce187e188a452d1ef6d4568f7e8486782e4c423f",
         x86_64:       "9108df060dd489df5c02a38d810de8024994314dc48dd0acd49262e243e8317e",
         arm64_linux:  "e390bc1d0acf97db67bd1b8ce3119d1dfe2951de69e33131d576bf60c415fe68",
         x86_64_linux: "b66c473eeba7712629352f440a932bed939babff453197830b737d4c3470a0fb"

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
