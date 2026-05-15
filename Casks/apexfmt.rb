cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.55.2"
  sha256 arm:          "5d0bdcf859c566de7eb701a564bd6cd884cab2ab110d80aded78322710226d9e",
         x86_64:       "ccf1025c0baa6489a17ba4e32a1b7bfce6af8d74f7126aa7e17e72f329db9378",
         arm64_linux:  "4ecd399dc3b907b9c0cecf6cf6c4a322fe94a7598807eb8414f3a2e2c71c500c",
         x86_64_linux: "fce0bb787123eb49a5b44e03fa71a14bc7c2cf8dada73bcaa9bd1b7d7cea7884"

  url "https://github.com/octoberswimmer/apexfmt/releases/download/v#{version}/apexfmt_#{os}_#{arch}_v#{version}.zip"
  name "apexfmt"
  desc "Format Apex code automatically"
  homepage "https://www.octoberswimmer.com/tools/apexfmt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "apexfmt"
end
