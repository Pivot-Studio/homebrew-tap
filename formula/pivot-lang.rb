# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Pivot-lang 二次元指定编程语言"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.262.tar.gz"
  sha256 "826c0b9513a1da576c45218ab90b66660d03a0f30883a53460cfadf6131c7be3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.262/pivot-lang-0.1.262-darwin-amd64.tar.gz"
      sha256 "8c156bdd40ce921ba055bbddc64ca48dfca86b71d0848ee41660d56f04dfbc2e"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.262/pivot-lang-0.1.262-darwin-arm64.tar.gz"
      sha256 "0055a2455b2581251988db0ab520bd9c7f71d230365c8838990e4b78620d2dfa"
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
