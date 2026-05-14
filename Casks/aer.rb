cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.2"
  sha256 arm:          "8534ad88f718462caa2f487c4b9d83faf38cb2c3fa1ca151646ccbd8cfa28996",
         x86_64:       "36ae3b7dcd562052483ff63a739e2e5f9402b3f9f5c6abaf1f74d39bad3941e4",
         arm64_linux:  "43bbeb550a03c12c3507aa5196042fc46e0628192a8171917bfb9731e2fda1cf",
         x86_64_linux: "e257612ff228d741ddc7026815bebbcc11357888905d286499cef89a08926642"

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
