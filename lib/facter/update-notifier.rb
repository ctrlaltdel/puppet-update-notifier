#
# All facts depends on Ubuntu package update-notifier
#

Facter.add('reboot_required') do
  setcode do
    Facter::Util::Resolution.exec('/usr/lib/update-notifier/update-motd-reboot-required')
  end
end

Facter.add('fsck_at_reboot') do
  setcode do
    Facter::Util::Resolution.exec('/usr/lib/update-notifier/update-motd-fsck-at-reboot')
  end
end

Facter.add('updates_available') do
  setcode do
    Facter::Util::Resolution.exec('/usr/lib/update-notifier/update-motd-updates-available')
  end
end
