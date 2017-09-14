//+------------------------------------------------------------------+
//|                                compareLastLowPriceAndSendMsg.mq4 |
//|                        Copyright 2017, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2017, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
input double alarm_num = 0.5;
input int kPeriod = 19;
datetime Now = 0;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
     
         
         
      Now = Time[0];
//--- indicator buffers mapping

//---
   return(INIT_SUCCEEDED);
  }
  
int start() {
   
    if (isNewBar()){
      Print("New bar is come");
     }
    Now = Time[0];
   return(0);
}

bool isNewBar() {

   return Now == Time[1];
}
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---
   
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
