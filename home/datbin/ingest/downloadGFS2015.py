#!/usr/bin/env python

# test GFS4 download issue  June 17 2013 W. Wu
# usage: python downloadGFS.py offhours GFS3[4]
#        offhours to the latest GFS model cycle from current time
#        GFS3[4]: gfs3 or gfs4 
#        python downloadGFD.py 4 gfs4     
#         downloading gfs4 for its 12Z cycle  if the current time is 16ish when the python program is executing 

import os 
import sys
from datetime import datetime, timedelta
import urllib2

# need requests module to check remote site/file availability
#import requests
#resp = requests.head("http://www.google.com")
#print resp.status_code, resp.text, resp.headers

#import argparse
#parser = argparse.ArgumentParser(description='download GFS4 data for WRF')
#parser.add_argument('-f', dest='offhours', type=str, default='4',
#                    help = 'offset hours from present')
#args = parser.parse_args()
#offhours  = int(args.offhours) 

offhours  = int(sys.argv[1])
modeltype = sys.argv[2]

ctimeutc = datetime.utcnow()
ptimeutc = datetime.utcnow() - timedelta(hours = offhours)
gfsdate =  ptimeutc.strftime('%Y%m%d')
gfscyc  =  ptimeutc.strftime('%H')

mydate = gfsdate + gfscyc

localdatadir = '/d1/pmeop/datainput'
datdir = os.path.join(localdatadir, modeltype)
print datdir

if modeltype == 'gfs3':
   fsizelim = 14000000
   fend = '_tl.press_gr.1p0deg'
   prefixm = 'gfs.t' + gfscyc + 'z.pgrb2.1p00.'
elif modeltype == 'gfs4':
   fsizelim = 40000000
   fend = '_tl.press_gr.0p5deg'
   prefixm = 'gfs.t' + gfscyc + 'z.pgrb2.0p50.'
elif modeltype == 'gfs5':
   fsizelim = 160000000
   fend = '_tl.press_gr.0p25deg'
   prefixm = 'gfs.t' + gfscyc + 'z.pgrb2.0p25.'
else:
   print modeltype, ' is not valid data type to download!'
   sys.exit()

urlsite = 'https://www.ftp.ncep.noaa.gov/data/nccf/com/gfs/prod/gfs.' + gfsdate + gfscyc + '/'
urlsite2 = 'https://nomads.ncep.noaa.gov/pub/data/nccf/com/gfs/prod/gfs.2015011500/'
#urlsite = 'http://66.172.231.102/pub/SL.us008001/ST.opnl/MT.gfs_CY.' + gfscyc + '/RD.' + gfsdate + '/PT.grid_DF.gr2/'
# 66.172.231.102
# 129.19.157.17
print urlsite 
hdop = '--header=Host: www.ftp.ncep.noaa.gov'


# download GFS4 forecasts every three hours up to 84 hours to drive WRF 
hr0 = 0
hr1 = 82        # python excludes the end 
hri = 3 
for h in range(hr0,hr1,hri):
    chour = '%04d'%h 
    chouro = '%03d'%h

    filer = prefixm + 'f' + chouro                     # file name in the remote site 
    filel2 = 'fh.' + chour + fend
    lfile = mydate + '_' + filel2 + '.grib2'  # file name to be saved in local disk
    filel = os.path.join(datdir, lfile)
    print h, filer, filel
    fok = 0                                           # check if the file is already available in local disk and if the size is right
    if os.path.isfile(filel):
       fsize= os.path.getsize(filel)
       if int(fsize) > fsizelim:
          fok = 1
          print filel, ' is OK-ed !'
       else: 
          cmd = 'rm -f ' + filel
          os.system(cmd)
    if fok == 0:  
       print 'downloading ', filer
       try:
            ret = urllib2.urlopen(urlsite + filer)
            ret.close()
            cmd = 'wget --no-check-certificate ' + urlsite + filer + ' -O ' + filel
#      cmd = 'wget --header=Host: weather.noaa.gov ' + urlsite + filer + ' -O ' + filel
            print cmd 
            os.system(cmd)
# check if downloaded file has right size 
            if os.path.isfile(filel):
               fsize= os.path.getsize(filel)
               if int(fsize) > fsizelim:
                  print filel, ' is OK-ed !'
               else:
                  print 'downloading ', filer,' incompleted !'
                  cmd = 'rm -f ' + filel
                  os.system(cmd)            # remove incompleted file 
            else:
                  print 'downloading ', filer,' failed !'
       except:
            print '%s%s does not exist!'%(urlsite, filer)


# wget http://weather.noaa.gov/pub/SL.us008001/ST.opnl/MT.gfs_CY.00/RD.20130617/PT.grid_DF.gr2/fh.0003_tl.press_gr.0p5deg -O 2013061700_fh.0003_tl.press_gr.0p5deg.grib2
