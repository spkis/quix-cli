class QuixCli < Formula
    desc "Quix CLI tool"
    homepage "https://github.com/quixio/quix-cli"
    url "https://github.com/quixio/quix-cli/raw/main/install.sh"
    version "0.1.0"
    sha256 "216c5888bacef04f9af38a209616004ddde41c5c50a5507dfff75a6279412780"
  
    def install
      system "bash", "install.sh", "--", prefix
    end
  
    test do
      system "#{bin}/quix", "--version"
    end
  end