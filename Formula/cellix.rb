class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.1.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "efb1aaf9aa92778870be561d99836463198b603097c8975f64ddaabaf23de862"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.1.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "61ab8f143bde31109dbe56cc743fa5b0bdb409b92638d8459c0f5527a3613c19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.1.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d8e34df21e4f12846f9ffe28ee9096eb922b2d65e87217eb9d5b58496c6d3b0"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.1.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d7192835db750c5ec62683e188166e8cc9d1cad4ba5596f1f79cd2c2604d6f7"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
