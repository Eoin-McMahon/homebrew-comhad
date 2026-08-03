class Comhad < Formula
  desc "Ranger-style terminal browser for S3 with previews, transfers, and sync"
  homepage "https://github.com/Eoin-McMahon/Comhad"
  url "https://github.com/Eoin-McMahon/Comhad/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "3a33c0948db7aabff8306226a86cc1f58d933dcc4af2520239506e771920aa00"
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
