# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Https://langpivotstudiocn"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.353.tar.gz"
  sha256 "ef788cdcca26ca4c3f43418b0de0a76be6354323d16c659319b1a38a5ba8131b"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.353/pivot-lang-0.1.353-darwin-amd64.tar.gz"
      sha256 "c19f03d8beb069a0e68087e08760b0c45be6d6b2c92b3d3d65d424961a9a78a5"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.353/pivot-lang-0.1.353-darwin-arm64.tar.gz"
      sha256 "4abb3624ebc7b082824446d984b4414cc8fb950e94dc34f95a9b74b47b27d87b"
    end
  end

  def install
    lib.install Dir["./planglib"]
    lib.install "./libvm.a"
    bin.install "./plc"
  end

  def caveats
    s = <<~EOS
    [0;32m安装完成，请运行下方命令添加环境变量[0m
      echo 'export KAGARI_LIB_ROOT=$(brew --prefix pivot-lang)/lib/planglib' >> ~/.bash_profile
      echo 'export PL_ROOT=$(brew --prefix pivot-lang)/lib' >> ~/.bash_profile
      source ~/.bash_profile
    [0;32m如果您已经打开了vsc，可能需要重启它来应用环境变量更改[0m
    EOS
    s
  end
end
