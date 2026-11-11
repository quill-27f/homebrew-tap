class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.6.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.5/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "43a94cdd679661ed46d6bce174f2d6192af0fd1d44442d70edeb7fc48480048d"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.5/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "4015f9ad39a6a20355393cc8e7b34569146bb3ed64b04ae83005ed3847b21fc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.5/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "51d5029108a97c33289879073ac433bba9000a4a11197385a6c634a8d5d945dc"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.5/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2076b0271b088d854c2c9d598dc1d31add7e10c4d3683a8d937563833a96ac4f"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
