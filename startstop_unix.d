#
#       Startstop (Unix Version -- Linux) Configuration File
#
#    <nRing> is the number of transport rings to create.
#    <Ring> specifies the name of a ring followed by it's size
#    in kilobytes, eg        Ring    WAVE_RING 1024
#    The maximum size of a ring depends on your operating system, 
#    amount of physical RAM and configured virtual (paging) memory 
#    available. A good place to start is 1024 kilobytes. 
#    Ring names are listed in file earthworm.d.
#
# refer to the wiki for how to change your specific system's shared memory
# size - if you encounter problems with large or too many rings, this is probably
# the issue.


 nRing            		5
 Ring   STATUS 		    1024
 Ring   WAVE 		    1024
 Ring   TRIG 		    1024
 Ring   SCN 		    1024
 Ring   OSVM_RING      1024
#
 MyModuleId    MOD_STARTSTOP  # Module Id for this program
 HeartbeatInt  15             # Heartbeat interval in seconds
 MyClassName   OTHER             # For this program
 MyPriority     0             # For this program
 LogFile        1             # 1=write a log file to disk, 0=dont
 KillDelay      30            # seconds to wait before killing modules on
                              #  shutdown
 HardKillDelay  5             # number of seconds to wait on hard shutdown
                              #  for a child to respond to KILL signal
                              #  If missing or 0, no KILL signal will be sent
#  maxStatusLineLen   80     # Uncomment to specify length of lines in status
statmgrDelay		5     	# Uncomment to specify the number of seconds
							# to wait after starting statmgr 
							# default is 1 second



Process          "statmgr statmgr.d"
Class/Priority    OTHER 0

Process          "wave_serverV wave_serverV.d"
Class/Priority    OTHER 0
