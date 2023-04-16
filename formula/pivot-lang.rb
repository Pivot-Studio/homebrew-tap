# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Pivot-lang 二次元指定编程语言"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.306.tar.gz"
  sha256 "fb4220c6fcada4ae18f0fc58d270270de5f52625d7d7f1fa168a526307372ecb"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.306/pivot-lang-0.1.306-darwin-amd64.tar.gz"
      sha256 "ae56ffff00e99d9d3617bc19536e70c8813c426d0c825ea6f669d1f5805c92c1"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.306/pivot-lang-0.1.306-darwin-arm64.tar.gz"
      sha256 "123b8f9af7c3369bf8cccf6bec5881e59c8bce37bfb6aec89108b2fd94a00bcf"
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
