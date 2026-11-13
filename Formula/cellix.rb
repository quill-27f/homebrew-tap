class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.6.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.8/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "d530321763ac94ba61571dc4cf1d2ea46a338ef8538e7875cb908e9e0b02e617"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.8/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "e6f5078d0387bedcf7da755d4ea25ff8d608246adaa51b3737760e317fb06ee3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.8/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4bfdc024b856abe5f0a1948f9f0e545371ec6271377db6cab4696eef5f4d699"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.8/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "222ebf376bbfb89d2656ae970d3cec67181d01148920618e145bc80231ec38a3"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
