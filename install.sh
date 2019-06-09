#!/bin/sh

# run with sudo to create/update cronjobs

echo "setting up permissions"

sudo chmod +x cron.daily/rsync-backup
sudo chmod +x cron.weekly/rsync-backup
sudo chmod +x cron.monthly/rsync-backup

echo "installing cron jobs"

sudo cp -f cron.daily/rsync-backup /etc/cron.daily/rsync-backup
sudo cp -f cron.weekly/rsync-backup /etc/cron.weekly/rsync-backup
sudo cp -f cron.monthly/rsync-backup /etc/cron.monthly/rsync-backup

echo "done"
