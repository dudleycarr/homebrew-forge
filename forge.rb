class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://forge.run"
  url "https://github.com/fsharp-editing/Forge/releases/download/2.1.0/forge.zip"
  sha256 "37bc6ee5d2eca42542b8bf9ad93e51c2508349c0e47973d82cc7f3fbf2165d47"
  depends_on "mono"

  bottle :unneeded

  def install
    libexec.install Dir["./*"]
    (bin/"forge").write <<-EOS
      #!/bin/sh
      mono #{libexec}/Forge.exe "$@"
    EOS
  end
end

