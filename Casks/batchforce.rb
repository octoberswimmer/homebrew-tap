cask "batchforce" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.10.1"
  sha256 arm:          "1277462587ce73cfe0f4d9a3604f64d9105634cd3d144a52ab5c2ee8d60c58d7",
         x86_64:       "de74a4090d3e1e9827847430d70013a616aa49033ac7e14d9dcda70d6c132c37",
         arm64_linux:  "16f9c719b577ecbbeb9b5909dde87f5f83a0815560902de850b07ccc8c3cbf5b",
         x86_64_linux: "7e00af1df851700b3ac4ebdb2ec968a10017e6658497d922a05fa20127d5ce5d"

  url "https://github.com/octoberswimmer/batchforce/releases/download/v#{version}/batchforce_#{os}_#{arch}_v#{version}.zip"
  name "batchforce"
  desc "Make bulk updates in Salesforce using the Bulk API"
  homepage "https://www.octoberswimmer.com/tools/batchforce/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "batchforce"
end
