cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.19"
  sha256 arm:          "038cf90e970365978122e2bad808ab07677c6aebff9539cb6f3b1ddbc35abfe2",
         x86_64:       "5fb726ab70d59c5507c57eb8a212581bd28450afff2dc431fd6e93c3b0098717",
         arm64_linux:  "d8823e99a8a01bd85d79f502e6ac6a467bbe5c66f3175b2ddb4249f4695506a1",
         x86_64_linux: "6917942d421ed8ed21c352a1d063621211bf26e892c0d6fb31b748cf8c2d4dcd"

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
