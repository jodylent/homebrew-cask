cask 'onedrive' do
  version '17.3.6945.0724'
  sha256 '5285b60a8f81f820ff7e7ad1e9177520e0b1394901f301e7da3a3258962537be'

  # oneclient.sfx.ms/Mac/Direct was verified as official when first introduced to the cask
  url "https://oneclient.sfx.ms/Mac/Direct/#{version}/OneDrive.pkg"
  name 'OneDrive'
  homepage 'https://onedrive.live.com/'

  pkg 'OneDrive.pkg'

  uninstall delete:    '/Applications/OneDrive.app',
            launchctl: 'com.microsoft.OneDriveUpdaterDaemon',
            pkgutil:   'com.microsoft.OneDrive',
            quit:      [
                         'com.microsoft.OneDrive',
                         'com.microsoft.OneDriveUpdater',
                         'com.microsoft.OneDrive.FinderSync',
                       ]

  zap delete: [
                '~/Library/Application Support/OneDrive',
                '~/Library/Application Support/com.microsoft.OneDrive',
                '~/Library/Application Support/com.microsoft.OneDriveUpdater',
                '~/Library/Application Support/OneDriveUpdater',
                '~/Library/Application Scripts/com.microsoft.OneDrive.FinderSync',
                '~/Library/Application Scripts/com.microsoft.OneDriveLauncher',
                '~/Library/Caches/com.microsoft.OneDrive',
                '~/Library/Caches/com.microsoft.OneDriveUpdater',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDrive',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDriveUpdater',
                '~/Library/Containers/com.microsoft.OneDriveLauncher',
                '~/Library/Containers/com.microsoft.OneDrive.FinderSync',
                '~/Library/Cookies/com.microsoft.OneDrive.binarycookies',
                '~/Library/Cookies/com.microsoft.OneDriveUpdater.binarycookies',
                '~/Library/Group Containers/*.OneDriveStandaloneSuite',
                '~/Library/Logs/OneDrive',
                '~/Library/Preferences/com.microsoft.OneDrive.plist',
                '~/Library/Preferences/com.microsoft.OneDriveUpdater.plist',
                '~/Library/Preferences/*.OneDriveStandaloneSuite.plist',
              ]
end
