sudo apt-get install subversion
cd ~
svn checkout svn://gcc.gnu.org/svn/gcc/trunk/libstdc++-v3/python
sudo mv ~/python/* /usr/share/gdb/python
sudo mv ~/python/.svn/ /usr/share/gdb/python
