#include <sys/socket.h>  
#include <netinet/in.h>  
#include <string.h> 
#include <unistd.h>
#include "UdpPiper.h"
#include "Logger.h"

Logger *logger;
  
int main(int argc,char* argv[])   
{  

   //get parameters
   char ch;
   char* filePathIn;
   char* filePathOut;

   while((ch = getopt(argc, argv, "i:o:p:h"))!= -1){
      switch(ch){

         case 'i':
            filePathIn = optarg;
            printf("%s\n", filePathIn);
            break;

         case 'o':
            filePathOut = optarg;
            printf("%s\n", filePathOut);
            break;

         case 'h':
            printf("Options:\n");
            printf("Usage: ./Md -opt1 para1 -opt2 para2 ...\n");
            printf("-f: login config filePath\n");
            // printf("-n: Sum of instrument\n");
            printf("-h: Help to list the options\n");
            exit(0);
            break;

         default:
            printf("Usage: ./ -opt1 para1 -opt2 para2 ...\n");
            printf("Use \"./ -h\" to see the options\n");
            exit(0);
            break;
      }
   }

   logger = new Logger(argv[0]);
   logger->ParseConfigInfo(filePathIn);
   

   // send message
   WZPiper * piper1 = new UdpPiper();
   piper1 -> set_config_info(filePathOut);
   piper1 -> init_as_client();


   Frame frame;
   frame.source = 0;
   frame.msg_type = 1;
   frame.error_id = WZ_ERROR_ID_SUCCESS;
   frame.rtn_type = 3;
   frame.length = 4;
   char* data = new char [5];
   sprintf(data, "%d", 1234);
   memcpy(frame.data, data, 5);

   for (;;) {
      
      piper1 -> do_write(frame);
   }
   
   
   // // receive message
   // WZPiper * piper2 = new UdpPiper();
   // piper2 -> set_config_info(filePathIn);
   // piper2 -> init_as_server();

   // // declare a frame to receive data;
   // Frame recvFrame;
   // piper2 -> do_read(recvFrame);

   // PRINTSTR("recv source = ");
   // PRINTINT(recvFrame.source);

   // PRINTSTR("recv msg_type = ");
   // PRINTINT(recvFrame.msg_type);

   // PRINTSTR("recv error_id = ");
   // PRINTINT(recvFrame.error_id);

   // PRINTSTR("recv rtn_type = ");
   // PRINTINT(recvFrame.rtn_type);

   // PRINTSTR("recv length = ");
   // PRINTINT(recvFrame.length);

   // PRINTSTR("recv data = ");
   // PRINTSTR(recvFrame.data);

   exit(0);  
   return 0;  
}  