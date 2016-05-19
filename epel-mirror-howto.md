# Epel镜像使用帮助

- epel是一个yum第三方源

## 收录架构

- i386
- x86_64
- SRPMS
- ppc

## 使用说明
以`CentOS7`为例, 复制下面的两个文件覆盖到`/etc/yum.repos.d/epel.repo`和`/etc/yum.repos.d/epel-testing.repo`, 如果是`4`,`5`,`6`, 将`7`替换掉即可
 

- `epel.repo`
	
```ini
[epel]
name=Extra Packages for Enterprise Linux 7 - $basearch
baseurl=http://epel.mirrors.cqupt.edu.cn/7/$basearch
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch
failovermethod=priority
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
    
[epel-debuginfo]
name=Extra Packages for Enterprise Linux 7 - $basearch - Debug
baseurl=http://epel.mirrors.cqupt.edu.cn/7/$basearch/debug
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=$basearch
failovermethod=priority
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1
    
[epel-source]
name=Extra Packages for Enterprise Linux 7 - $basearch - Source
baseurl=http://epel.mirrors.cqupt.edu.cn/7/SRPMS
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=$basearch
failovermethod=priority
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1
```
        
- `epel-testing.repo`

```ini
[epel-testing]
name=Extra Packages for Enterprise Linux 7 - Testing - $basearch
baseurl=http://epel.mirrors.cqupt.edu.cn/testing/7/$basearch
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=testing-epel7&arch=$basearch
failovermethod=priority
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
    
[epel-testing-debuginfo]
name=Extra Packages for Enterprise Linux 7 - Testing - $basearch - Debug
baseurl=http://epel.mirrors.cqupt.edu.cn/testing/7/$basearch/debug
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=testing-debug-epel7&arch=$basearch
failovermethod=priority
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1
    
[epel-testing-source]
name=Extra Packages for Enterprise Linux 7 - Testing - $basearch - Source
baseurl=http://epel.mirrors.cqupt.edu.cn/testing/7/SRPMS
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=testing-source-epel7&arch=$basearch
failovermethod=priority
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1
```
