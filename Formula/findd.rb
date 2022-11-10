class Findd < Formula
  desc "Show all parent directories of named dir e.g .git"
  homepage "https://github.com/whomwah/findd"
  url "https://github.com/whomwah/findd/releases/download/0.0.1/findd-0.0.1.tar.gz"
  sha256 "b820c119f3f35b311e28ae6e7d7cc2d4d7d94f3d81a6fac0ab9b303cca34e4b4"
  license "MIT"

  def install
    system "make"
    bin.install "findd"
  end

  test do
    assert_match "", shell_output("#{bin}/findd -q findd")
  end
end
