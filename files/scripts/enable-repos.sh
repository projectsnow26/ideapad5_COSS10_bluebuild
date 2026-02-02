#!/usr/bin/env bash
# Enable CRB and EPEL for CentOS Stream 10
# Removed Budgie COPR - stenstorp/budgie only supports EL8, NOT EL9/CS9
set -euo pipefail

echo "==> Enabling CRB repository..."
dnf config-manager --set-enabled crb || true

echo "==> Installing EPEL release packages..."
dnf -y install \
    https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm \
    || true

#Using GNOME 47
# Verify enabled repos
echo "==> Enabled repositories:"
dnf repolist enabled

echo "==> Repos configured successfully."
