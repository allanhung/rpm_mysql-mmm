export RPMBUILDROOT=/root/rpmbuild

yum -y install rpm-build rpmdevtools make

mkdir -p $RPMBUILDROOT/SOURCES && mkdir -p $RPMBUILDROOT/SPECS && mkdir -p $RPMBUILDROOT/SRPMS
# fix rpm marcos
sed -i -e "s#.centos##g" /etc/rpm/macros.dist

# mmm
curl -sO http://rpmfind.net/linux/epel/6/SRPMS/Packages/m/mysql-mmm-2.2.1-2.el6.src.rpm
rpm -i mysql-mmm-2.2.1-2.el6.src.rpm
/bin/cp -f /usr/local/src/build/centos6/mysql-mmm.spec.patch $RPMBUILDROOT/SPECS/
/bin/cp -f /usr/local/src/build/centos6/mmm_aws.patch $RPMBUILDROOT/SOURCES/
/bin/cp -f /usr/local/src/build/centos6/mmm_bin_aws.patch $RPMBUILDROOT/SOURCES/
cd $RPMBUILDROOT/SPECS && patch -p1 < mysql-mmm.spec.patch
rpmbuild -bb $RPMBUILDROOT/SPECS/mysql-mmm.spec
