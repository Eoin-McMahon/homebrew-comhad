class Comhad < Formula
  desc "Ranger-style terminal browser for S3 with previews, transfers, and sync"
  homepage "https://github.com/Eoin-McMahon/Comhad"
  url "https://github.com/Eoin-McMahon/Comhad/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b7f7a0fb0593722ad0be527814b7805c29275096059a8e2fb6fbd03b148b6dd3"
  license "MIT"
  head "https://github.com/Eoin-McMahon/Comhad.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"comhad", :executable?
  end
end
