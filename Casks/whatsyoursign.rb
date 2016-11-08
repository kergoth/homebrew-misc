cask 'whatsyoursign' do
  version '1.2.1'
  sha256 'b05363ce2106e23eda95caef1f812fb6cb1dc8f983dee035a4730afe35fc13d6'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/WhatsYourSign_#{version}.zip"
  name 'WhatsYourSign'
  homepage 'https://objective-see.com/products/whatsyoursign.html'

  installer manual: 'WhatsYourSign_Installer.app'
  uninstall quit:   'com.objective-see.WhatsYourSign',
            delete: [
                '/Applications/WhatsYourSign.app',
                '~/Library/Containers/com.objective-see.WhatsYourSignExt.FinderSync',
                '~/Library/Application Scripts/com.objective-see.WhatsYourSignExt.FinderSync',
                '~/Library/Saved Application State/com.objective-see.WhatsYourSign.savedState',
            ]
end
