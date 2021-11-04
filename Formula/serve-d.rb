class ServeD < Formula
  desc "An LSP server for the D programming language"
  homepage "https://github.com/Pure-D/serve-d"
  url "https://github.com/Pure-D/serve-d.git",
      tag: "v0.6.0",
      revision: "a3c0469e0332c48057e5ed93a232af5f5f7ef250" 
  license "MIT"
  head "https://github.com/Pure-D/serve-d.git", branch: "master"

  depends_on "dmd" => :build
  depends_on "dub" => :build
  depends_on "ldc" => :build

  def install
    system "dub", "build", "--compiler=ldc2", "--build=release"
    bin.install "serve-d"
  end

  test do
    system "#{bin}/serve-d", "--version"
  end
end
