#
# All facts depends on Ubuntu package update-notifier
#

Facter.add('reboot_required') do
  setcode do
    result = Facter::Util::Resolution.exec('/usr/lib/update-notifier/update-motd-reboot-required')
    if result
      'yes'
    else
      'no'
    end
  end
end

Facter.add('fsck_at_reboot') do
  setcode do
    result = Facter::Util::Resolution.exec('/usr/lib/update-notifier/update-motd-fsck-at-reboot')
    if result
      'yes'
    else
      'no'
    end
  end
end

Facter.add('updates_available') do
  setcode do
    result = Facter::Util::Resolution.exec('/usr/lib/update-notifier/update-motd-updates-available')
    if /^0 packages can be updated/.match(result)
      'no'
    else
      'yes'
    end
  end
end

Facter.add('security_updates_available') do
  setcode do
    result = Facter::Util::Resolution.exec('/usr/lib/update-notifier/update-motd-updates-available')
    if /^0 updates are security updates/.match(result)
      'no'
    else
      'yes'
    end
  end
end
