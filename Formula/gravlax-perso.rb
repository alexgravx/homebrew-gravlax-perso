# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class GravlaxPerso < Formula
  desc "A tiny shell script that is installable via homebrew. Get alexgravx github project names and languages"
  homepage "https://github.com/alexgravx/homebrew-gravlax-perso"
  url "https://github.com/alexgravx/homebrew-gravlax-perso/archive/refs/tags/v0.2.tar.gz"
  sha256 "02cc85bd34702e08e21c7d2ecb76384bb17028ee0362052aee5071bb4a5d09f1"
  license "MIT"

  depends_on "jq"

  def install
    # installing the shell script and giving it an executable name
    bin.install "src/repos.sh" => "gravlax-perso"
  end

  test do
    # this is a simple test that checks if the script errors out
    system "#{bin}/gravlax"
  end
end
