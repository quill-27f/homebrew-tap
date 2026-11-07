class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "95461a2b706b7b85fb349d9df8a5c0a20bd9b359af0407ebc9274b69b4fdee6f"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "5c4bf7ed6aa5bcd6b6041ac0d21fc965837c68b7ce9b4655e576e0bef7e610e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb32b4b4b081f015d602240f140c0c6d4d1faf3f2e0d9ea2ca215e5df5b6fd38"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f50a654227b577476673303d3cc50562a5d0d5fc612f889af150fb5a6ec1609"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
