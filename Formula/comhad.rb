class Comhad < Formula
  desc "Ranger-style terminal browser for S3 with previews, transfers, and sync"
  homepage "https://github.com/Eoin-McMahon/Comhad"
  url "https://github.com/Eoin-McMahon/Comhad/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "f7e986cc14c5386eebfd043909f951578893693e017bf4951db37fd26e3b8c8e"
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
