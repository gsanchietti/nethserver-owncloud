Summary: NethServer Owncloud configuration
Name: nethserver-owncloud
Version: 1.1.3
Release: 1%{?dist}
License: GPL
Source: %{name}-%{version}.tar.gz
BuildArch: noarch
URL: %{url_prefix}/%{name}

BuildRequires: nethserver-devtools

Requires: owncloud
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
%{genfilelist} \
	--dir /var/www/html/owncloud/config 'attr(775, apache, apache)' \
	--dir /var/www/html/owncloud 'attr(750, root, apache)' \
	--dir /var/www/html/owncloud/apps 'attr(770, apache, apache)' \
	--dir /var/www/html/owncloud/apps/user_ldap 'attr(750, root, apache)' \
	--dir /var/www/html/owncloud/apps/user_ldap/command 'attr(750, root, apache)' \
    %{buildroot} > %{version}-%{release}-filelist

%files -f %{version}-%{release}-filelist
%defattr(-,root,root)
%doc COPYING
%dir %{_nseventsdir}/%{name}-update


%changelog
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

