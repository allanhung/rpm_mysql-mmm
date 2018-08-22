RPMBUILD for mysql-mmm
=========================

MySQL mmm rpm (support AWS EC2) for centos

How to Build
=========
```sh
git clone https://github.com/allanhung/rpm_mysql-mmm
cd rpm_mysql-mmm
```

for centos 6
```sh
docker run --name=mmm_build --rm -ti -v $(pwd)/rpms:/root/rpmbuild/RPMS/x86_64 -v $(pwd)/rpms:/root/rpmbuild/RPMS/noarch -v $(pwd)/scripts:/usr/local/src/build centos:6 /bin/bash -c "/usr/local/src/build/centos6/build_mmm.sh"
```

for centos 7
```sh
docker run --name=mmm_build --rm -ti -v $(pwd)/rpms:/root/rpmbuild/RPMS/x86_64 -v $(pwd)/rpms:/root/rpmbuild/RPMS/noarch -v $(pwd)/scripts:/usr/local/src/build centos:6 /bin/bash -c "/usr/local/src/build/centos6/build_mmm.sh"
```

# Install
```sh
yum install rpms/mysql-mmm-*.rpm
```

# Reference #

  * [epel centos6 source rpm](http://rpmfind.net/linux/epel/6/SRPMS)
  * [epel centos7 source rpm](http://rpmfind.net/linux/epel/7/SRPMS)
