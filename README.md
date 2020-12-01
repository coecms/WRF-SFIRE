This is the porting of WRF-SFIRE to Gadi (NCI). 
You can find the original code at: [https://github.com/openwfm/WRF-SFIRE](https://github.com/openwfm/WRF-SFIRE)
### WRF-ARW Modeling System  ###

We request that all new users of WRF please register. This allows us to better determine how to support and develop the model. Please register using this form:[http://www2.mmm.ucar.edu/wrf/users/download/wrf-regist.php](http://www2.mmm.ucar.edu/wrf/users/download/wrf-regist.php).

For an overview of the WRF modeling system, along with information regarding downloads, user support, documentation, publications, and additional resources, please see the WRF Model Users' Web Site: [http://www2.mmm.ucar.edu/wrf/users/](http://www2.mmm.ucar.edu/wrf/users/).
 
Information regarding WRF Model citations (including a DOI) can be found here: [http://www2.mmm.ucar.edu/wrf/users/citing_wrf.html](http://www2.mmm.ucar.edu/wrf/users/citing_wrf.html).

The WRF Model is open-source code in the public domain, and its use is unrestricted. The name "WRF", however, is a registered trademark of the University Corporation for Atmospheric Research. The WRF public domain notice and related information may be found here: [http://www2.mmm.ucar.edu/wrf/users/public.html](http://www2.mmm.ucar.edu/wrf/users/public.html).

### How to install and compile
The porting on Gadi is on the `gadi` branch. The simplest way to get the head of the branch is:
```
git clone -b gadi https://github.com/coecms/WRF-SFIRE.git
``` 
To compile the code, please use the `run_compile` script. This script has several options, use `run_compile -h` for details.
By default, it will compile WRF-SFIRE for `em_fire` with MPI and OpenMP. These can be changed via the options of the script.

### How to update
 1. Fetch the master branch from [https://github.com/openwfm/WRF-SFIRE](https://github.com/openwfm/WRF-SFIRE)
 2. Merge in the local master.
 3. Rebase the `gadi` branch on top of the head of master branch
 4. Resolve conflicts
 5. Test compilation and run