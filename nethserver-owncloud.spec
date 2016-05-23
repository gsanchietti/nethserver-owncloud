%define owncloud_version 9.0.2

%define apache_serverroot       /var/www/html
%define apache_confdir /etc/httpd/conf.d
%define oc_dir  %{apache_serverroot}/owncloud
%define oc_config_dir   %{oc_dir}/config
%define oc_data_dir     %{oc_dir}/data
%define oc_data_pdir    %{oc_dir}

%define oc_user apache
%define oc_group apache


Summary: NethServer Owncloud configuration
Name: nethserver-owncloud
Version: %owncloud_version
Release: 1%{?dist}
License: GPL
Source: %{name}-%{version}.tar.gz
Source1: https://download.owncloud.org/community/owncloud-%{owncloud_version}.tar.bz2
Source2: owncloud.conf
Source3: disable-updatechecker.config.php
BuildArch: noarch
URL: %{url_prefix}/%{name}

BuildRequires: nethserver-devtools

Requires: php-ldap, php-gd, php-pdo, php-mysql, php-pear, php-pear-MDB2, php-pear-MDB2-Driver-mysqli, php-pear-Net-Curl
Requires: nethserver-httpd, nethserver-mysql

%description
NethServer Owncloud files and configuration.

This package installs as follows:
oc_dir:        %{oc_dir}
oc_data_dir:   %{oc_data_dir}
oc_config_dir: %{oc_config_dir}


%prep
%setup
cp %{SOURCE1} .


%build
perl createlinks

%install
rm -rf %{buildroot}
(cd root   ; find . -depth -print | cpio -dump %{buildroot})
mkdir -p %{buildroot}/var/lib/nethserver/owncloud
mkdir -p %{buildroot}/var/www/html
tar xf %{SOURCE1} -C %{buildroot}/var/www/html

idir=%{buildroot}/%{oc_dir}
mkdir -p %{buildroot}/%{oc_dir}
mkdir -p %{buildroot}/%{oc_dir}/etc
mkdir -p %{buildroot}/%{oc_data_dir}
mkdir -p %{buildroot}/%{oc_config_dir}
mkdir -p %{buildroot}/%{oc_dir}/core/skeleton

mkdir -p %{buildroot}/etc/httpd/conf.d
cp %{SOURCE2} %{buildroot}/etc/httpd/conf.d

## https://github.com/owncloud/core/issues/22257
# disable-updatechecker.config.php
cp %{SOURCE3} $idir/config/



%files 
%defattr(0644,root,root,0755)
%doc COPYING
%dir %{_nseventsdir}/%{name}-update
# is there any security to be gained here? Easier to chown everthing to % {oc_user}
%attr(0755,%{oc_user},%{oc_group})/%{oc_dir}/occ
%attr(0775,%{oc_user},%{oc_group}) %{oc_dir}/apps
%attr(0775,%{oc_user},%{oc_group}) %{oc_data_dir}
%attr(0775,%{oc_user},%{oc_group}) %{oc_config_dir}
# BUMMER: exclude excludes globally, not just below. It cannot be used to avoid duplicate warnings?
# FIXME: only cure against the duplicate warnings is a -f file-list
/etc/backup-data.d/owncloud.include
/etc/e-smith/db/configuration/defaults/owncloud/TrustedDomains
/etc/e-smith/db/configuration/defaults/owncloud/type
/etc/e-smith/events/actions/nethserver-owncloud-conf
/etc/e-smith/events/nethserver-owncloud-update/S00initialize-default-databases
/etc/e-smith/events/nethserver-owncloud-update/S20nethserver-owncloud-conf
/etc/e-smith/events/nethserver-owncloud-update/services2adjust/httpd
/etc/e-smith/events/nethserver-owncloud-update/templates2expand/etc/httpd/conf.d/nethserver.conf
/etc/e-smith/templates/httpd/vhost-default/40owncloud
/etc/httpd/conf.d/owncloud.conf
/usr/share/nethesis/NethServer/Module/Dashboard/Applications/ownCloud.php
/usr/share/owncloud/nethserver/fix_oc_config.php

%defattr(0644,root,%{oc_group},0755)
%dir /var/lib/nethserver/owncloud
%{oc_dir}



%changelog
* Tue Nov 10 2015 Giacomo Sanchietti <giacomo.sanchietti@nethesis.it> - 1.1.7-1
- Update to owncloud 7.0.11 - Enhancement #3307 [NethServer]

* Tue Sep 22 2015 Giacomo Sanchietti <giacomo.sanchietti@nethesis.it> - 1.1.6-1
- Update to owncloud 7.0.10 - Enhancement #3261 [NethServer]

* Wed Sep 09 2015 Giacomo Sanchietti <giacomo.sanchietti@nethesis.it> - 1.1.5-1
- Update to owncloud 7.0.8 - Enhancement #3252 [NethServer]

* Tue Jun 30 2015 Alessandro Polidori <alessandro.polidori@gmail.com> - 1.1.4-1
- Wrong email field on LDAP configuration - Bug #3205 [NethServer]
- Update ownCloud to 7.0.6 version - Feature #3191 [NethServer]
- OwnCloud trusted domains - Enhancement #3022 [NethServer]
- OwnCloud update event dirties configuration file - Bug #3021 [NethServer]

* Thu Apr 09 2015 Giacomo Sanchietti <giacomo.sanchietti@nethesis.it> - 1.1.3-1
- Update ownCloud to 7.0.5 version - Feature #3109 [NethServer]

* Mon Apr 7 2015 Alessandro Polidori <alessandro.polidori@nethesis.it> - 1.1.3-1.ns6
- Update ownCloud to 7.0.5 version - Feature #3109 [NethServer]

* Thu Jan 22 2015 Giacomo Sanchietti <giacomo.sanchietti@nethesis.it> - 1.1.2-1.ns6
- Update ownCloud to 7.0.4 version - Feature #2986 [NethServer]

* Tue Dec 16 2014 Alessandro Polidori <alessandro.polidori@nethesis.it> - 1.1.1-1.ns6
- Adapt all mysql commands to use "--defaults-file=/root/.my.cnf" option - Bug #2971 [NethServer]
- OwnCloud installation from NethServer web interface fails - Bug #2983 [NethServer]

* Tue Dec 02 2014 Giacomo Sanchietti <giacomo.sanchietti@nethesis.it> - 1.1.0-1.ns6
- Upgrade to ownCloud 7 - Enhancement #2669 [NethServer]

* Mon Mar 10 2014 Davide Principi <davide.principi@nethesis.it> - 1.0.2-1.ns6
- Can't find ownCloud LDAP secret password - Bug #2670 [NethServer]

* Mon Dec 16 2013 Davide Principi <davide.principi@nethesis.it> - 1.0.1-1.ns6
- /owncloud path not found - Bug #2342 [NethServer]

* Mon Nov 11 2013 Davide Principi <davide.principi@nethesis.it> - 1.0.0-1.ns6
- First NethServer/ownCloud integration release - Feature #2037 [NethServer]

