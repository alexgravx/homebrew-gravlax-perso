# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class GravlaxPerso < Formula
  desc "A tiny shell script that is installable via homebrew. Get alexgravx github project names and languages"
  homepage "https://github.com/alexgravx/homebrew-gravlax-perso"
  url "https://github.com/alexgravx/homebrew-gravlax-perso/archive/refs/tags/v0.1.tar.gz"
  sha256 "ffdf0ff3b2faa60a26d69008a3c8bf8d61226d6627ce54c04ebf906f7ad517c6"
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
