#
# All facts depends on Ubuntu package update-notifier
#

Facter.add('reboot_required') do
  setcode do
    result = Facter::Util::Resolution.exec('/usr/lib/update-notifier/update-motd-reboot-required')
    if result
      result.gsub(/\s+/, ' ').strip
    end
  end
end

Facter.add('fsck_at_reboot') do
  setcode do
    result = Facter::Util::Resolution.exec('/usr/lib/update-notifier/update-motd-fsck-at-reboot')
    if result
      result.gsub(/\s+/, ' ').strip
    end

  end
end

Facter.add('updates_available') do
  setcode do
    result = Facter::Util::Resolution.exec('/usr/lib/update-notifier/update-motd-updates-available')
    if result
      result.gsub(/\s+/, ' ').strip
    end
  end
end
