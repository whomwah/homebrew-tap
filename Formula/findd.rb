class Findd < Formula
  desc "Show all parent directories of named dir e.g .git"
  homepage "https://github.com/whomwah/findd"
  url "https://github.com/whomwah/findd/archive/refs/tags/0.0.2.tar.gz"
  sha256 "c7ebab1ab2e352552cffb1955c54b4ba761fe38a1339838dd10e0366a1f82668"
  license "MIT"

  bottle do
    root_url "https://github.com/whomwah/homebrew-tap/releases/download/findd-0.0.2"
    sha256 cellar: :any_skip_relocation, monterey:     "8cdd35cb40c48b5cf0e2e9be714840c4ace03130c54aeea081cba00887061b6a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "262499a65e85cebb966b6fb705001e992e21dd31366dbbd166db581874433153"
  end

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
