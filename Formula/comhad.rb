class Comhad < Formula
  desc "Ranger-style terminal browser for S3 with previews, transfers, and sync"
  homepage "https://github.com/Eoin-McMahon/Comhad"
  url "https://github.com/Eoin-McMahon/Comhad/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "05485401baf65d45c65dc890dcc083046b2cc0d32d2c753bf45f9c46f117eb76"
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
