RPMBUILD for mysql-mmm
=========================

MySQL mmm rpm (support AWS EC2) for centos 6

How to Build
=========
    git clone https://github.com/allanhung/rpm_mmm
    cd rpm_mmm
    docker run --name=mmm_build --rm -ti -v $(pwd)/rpms:/root/rpmbuild/RPMS/x86_64 -v $(pwd)/rpms:/root/rpmbuild/RPMS/noarch -v $(pwd)/scripts:/usr/local/src/build centos /bin/bash -c "/usr/local/src/build/build_mmm.sh"

# check
    docker run --name=mmm_check --rm -ti -v $(pwd)/rpms:/root/rpmbuild/RPMS centos /bin/bash -c "yum localinstall -y /root/rpmbuild/RPMS/mysql-mmm-*.rpm"

# Install
    yum install rpms/mysql-mmm-*.rpm

# Reference #

  * [epel source rpm](http://rpmfind.net/linux/epel/6/SRPMS)
