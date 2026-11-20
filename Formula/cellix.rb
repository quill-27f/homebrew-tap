class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.12.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.12.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "4b8673f2a2513607867959aac75e92021cd48f3ecb9bc52f0e2d51b1391f046f"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.12.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "8fec6c35ef87b8f82c67b98d788de6508708431e49aac06b125bd65467ed5d9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.12.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e6fac8fbb517ab44e17f15cb7811fd7ff96c5f5640b5b9ea708b9aa76667740"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.12.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e90c3110bf326a506af6dac784ce83e7f8d3dc6498d6611900064b119568e3bd"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
