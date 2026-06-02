cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.7"
  sha256 arm:          "895d54c0745f9a261cf88eb5f844d230b8f07feaabf04764c6d925cb3b3b24d6",
         x86_64:       "1c140c7f04371cee4fc5230ff53fde162432c33e1b6a6ba30393e5c1a31face1",
         arm64_linux:  "30dc8c3fac97600073bd9f561bb96f8e64b3d42e438bf197b10cb056138b123c",
         x86_64_linux: "5c4069eb16783de4c20ecc2ecfbe1c0166053384ae0b5f53a5bf3a53153ed14c"

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
