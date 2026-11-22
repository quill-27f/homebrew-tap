class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.13.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "08f95790afe2eb6fe3fe3093912416f6dec560b23a458a8e2f47fd748040e664"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "f2499263a2a7ba8e51d4895747c00f43f299833075b26e8c9f569ed00b2a0190"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d829c3dc912db565848986fef03c144b292b1877000c5e08d7bbda1877e73205"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bd2d42178d0478b86f2beb077dd0cd416f71753e241538637aca91db32fc6407"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
