default
  {
    touch_end(integer num_detected)
      {
        list agents = llGetAgentList(AGENT_LIST_REGION, []);
        integer i = llGetListLength(agents);
        while (i--)
          {
            llSay(PUBLIC_CHANNEL, llKey2Name(llList2Key(agents, i)));
          }
      }
  }
