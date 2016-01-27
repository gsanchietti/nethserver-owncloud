Summary: NethServer Owncloud configuration
Name: nethserver-owncloud
Version: 1.1.7
Release: 1%{?dist}
License: GPL
Source: %{name}-%{version}.tar.gz
BuildArch: noarch
URL: %{url_prefix}/%{name}

BuildRequires: nethserver-devtools

Requires: owncloud = 8.2.2-1.1
Requires: nethserver-directory
Requires: php-ldap, php-gd, php-pdo, php-mysql, php-pear, php-pear-MDB2, php-pear-MDB2-Driver-mysqli, php-pear-Net-Curl
Requires: nethserver-httpd, nethserver-mysql

%description
NethServer Owncloud configuration

%prep
%setup

%build
perl createlinks

%install
rm -rf %{buildroot}
(cd root   ; find . -depth -print | cpio -dump %{buildroot})
mkdir -p %{buildroot}/var/lib/nethserver/owncloud
%{genfilelist} \
	--dir /var/lib/nethserver/owncloud 'attr(775, apache, apache)' \
    %{buildroot} > %{version}-%{release}-filelist

%files -f %{version}-%{release}-filelist
%defattr(-,root,root)
%doc COPYING
%dir %{_nseventsdir}/%{name}-update
/var/lib/nethserver/owncloud


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

