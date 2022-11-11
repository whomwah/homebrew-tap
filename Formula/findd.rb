class Findd < Formula
  desc "Show all parent directories of named dir e.g .git"
  homepage "https://github.com/whomwah/findd"
  url "https://github.com/whomwah/findd/archive/refs/tags/0.0.2.tar.gz"
  sha256 "c7ebab1ab2e352552cffb1955c54b4ba761fe38a1339838dd10e0366a1f82668"
  license "MIT"

  def install
    system "make VERSION='0.0.2'"
    bin.install "findd"
  end

  test do
    mkdir_p(testpath/"demo_folder")
    (testpath/"demo_folder/.git").write "bla"
    assert_match(/demo_folder/, shell_output("#{bin}/findd -q .git demo_folder"))
  end
end
