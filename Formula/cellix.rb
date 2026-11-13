class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.6.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.7/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "b9839b6ac4acfe943858c30f208e0be9d46118b0352f8d0a6160acef472e5bda"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.7/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "90877315b04f8b5a3d3dd558e3f49697564282e9239b579a2fb124259fdbafe5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.7/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8e6f4cf43e512d4e18e68b9b459af6e3adf04a2d620fedeb8636bf7545e48c03"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.7/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f92e9aafe5db7f163d7ae12ef379f422bad6956ce4085f69367aa7154ab4053"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
