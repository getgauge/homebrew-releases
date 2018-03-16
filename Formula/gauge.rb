class Gauge < Formula
  desc "Test automation tool that supports executable documentation"
  homepage "https://getgauge.io"
  url "https://github.com/getgauge/gauge/releases/download/v0.9.7/gauge-0.9.7-darwin.x86_64.zip"
  version "0.9.7"
  sha256 "dbb710e7042732a05f712b981750260c136c04994928596b7b3686a70a791ca5"

  bottle :unneeded

  def install
      bin.install Dir["*"]
  end

  def caveats
    message = "We are constantly looking to make Gauge better, and report usage statistics anonymously over time.\nIf you do not want to participate please read instructions https://manpage.gauge.org/gauge_telemetry_off.html on how to turn it off."
    if `locale charmap`.strip.eql? "UTF-8"
      "\e[33m\n#{message}\e[39m"
    else
      message
    end
  end

  test do
      assert_match version.to_s[0, 5], shell_output("#{bin}/gauge -v")
  end
end
