cask "ro" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.5.2"
  sha256 arm:          "14b9494a1244e4227457ee0deecb57693d2f4340da4135d796092208ef7ca048",
         x86_64:       "b3bd2b3013bb10ec4044004d101871f07398c7d5de909a963e5cf02ae88920d6",
         arm64_linux:  "1fa619cb9d58d515794bf8e469dfad03806bf8f2ea063a66ac6440b6e96a0612",
         x86_64_linux: "89d68f5d008a33ea29a78ebe57f57145716255b97880b1e3400280e1fa284b89"

  url "https://github.com/octoberswimmer/ro-dist/releases/download/v#{version}/ro_#{os}_#{arch}_v#{version}.zip"
  name "ro"
  desc "Salesforce backup tool"
  homepage "https://www.octoberswimmer.com/tools/ro/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "ro"
end
