class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "0ef44039a0f5053c33f8c701d3eab9d7ceff58f8e0ebf9509a31c3aee27df434"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "4bec8f10b8fcf5857a2f0b5dd51e84b40882b87f0371a97ae92185755a0bc7ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "895fbe1bdf9ad4641cce141c3900d188ea48059572776fd30ac518a10e807e78"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83ecb8d0fe3e69a114a09d26a9b3d923e32953ff5d1befc77d5680f0c1c1fd77"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
