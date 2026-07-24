class Comhad < Formula
  desc "Ranger-style terminal browser for S3 with previews, transfers, and sync"
  homepage "https://github.com/Eoin-McMahon/Comhad"
  url "https://github.com/Eoin-McMahon/Comhad/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "df14e672e7fb877a7ea9b58217138d75ed511bc70b561fc053b901a8223a587f"
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
