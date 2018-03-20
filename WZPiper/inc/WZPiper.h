#ifndef WZPIPER_H_
#define WZPIPER_H_

#include "frame.h"
#include "Ini.h"

class WZPiper {

 public:

   /*init as server or client to build connect*/
   virtual void init_as_server() {}
   virtual void init_as_client() {}

   /*set ip and port*/
   virtual void set_config_info(char file_path[256]) {}
   
   /*recieve and send request*/
   virtual int do_read(Frame &mail) {}
   virtual void do_write(Frame mail) {}

 private:
   
};


#endif
