01eca4 stp      x28, x27, [sp, #-0x40]!                       
01eca8 stp      x22, x21, [sp, #0x10]                         
01ecac stp      x20, x19, [sp, #0x20]                         
01ecb0 stp      x29, x30, [sp, #0x30]                         
01ecb4 add      x29, sp, #0x30                                
01ecb8 sub      sp, sp, #0x420                                
01ecbc adrp     x8, #0x34000                                  
01ecc0 ldr      x8, [x8, #0x170]                               ; ___stack_chk_guard
01ecc4 ldr      x8, [x8]                                      
01ecc8 stur     x8, [x29, #-0x38]                             
01eccc adrp     x0, #0x2c000                                  
01ecd0 add      x0, x0, #0xd90                                 ; SessionSelectController
01ecd4 bl       #0x23294                                       ; _objc_getClass
01ecd8 mov      x20, x0                                       
01ecdc adrp     x8, #0x38000                                  
01ece0 ldr      x19, [x8, #0xf20]                              ; SEL viewDidLoad
01ece4 adrp     x2, #0x1f000                                  
01ece8 add      x2, x2, #0xc4                                 
01ecec adrp     x3, #0x3a000                                  
01ecf0 add      x3, x3, #0x7a8                                
01ecf4 mov      x1, x19                                       
01ecf8 bl       #0x23144                                       ; _MSHookMessageEx
01ecfc adrp     x8, #0x39000                                  
01ed00 ldr      x1, [x8, #0xc8]                                ; SEL updateRightBtn
01ed04 adrp     x2, #0x1f000                                  
01ed08 add      x2, x2, #0x334                                
01ed0c adrp     x3, #0x3a000                                  
01ed10 add      x3, x3, #0x7b0                                
01ed14 mov      x0, x20                                       
01ed18 bl       #0x23144                                       ; _MSHookMessageEx
01ed1c adrp     x8, #0x39000                                  
01ed20 ldr      x1, [x8, #0xd0]                                ; SEL onMultiDone
01ed24 adrp     x2, #0x1f000                                  
01ed28 add      x2, x2, #0x518                                
01ed2c adrp     x3, #0x3a000                                  
01ed30 add      x3, x3, #0x7b8                                
01ed34 mov      x0, x20                                       
01ed38 bl       #0x23144                                       ; _MSHookMessageEx
01ed3c adrp     x8, #0x39000                                  
01ed40 ldr      x1, [x8, #0xd8]                                ; SEL OnDone
01ed44 adrp     x2, #0x1f000                                  
01ed48 add      x2, x2, #0x590                                
01ed4c adrp     x3, #0x3a000                                  
01ed50 add      x3, x3, #0x7c0                                
01ed54 mov      x0, x20                                       
01ed58 bl       #0x23144                                       ; _MSHookMessageEx
01ed5c adrp     x8, #0x39000                                  
01ed60 ldr      x1, [x8, #0xe0]                                ; SEL onDone:
01ed64 adrp     x2, #0x1f000                                  
01ed68 add      x2, x2, #0x608                                
01ed6c adrp     x3, #0x3a000                                  
01ed70 add      x3, x3, #0x7c8                                
01ed74 mov      x0, x20                                       
01ed78 bl       #0x23144                                       ; _MSHookMessageEx
01ed7c adrp     x8, #0x2c000                                  
01ed80 ldr      d0, [x8, #0xa90]                              
01ed84 str      q0, [sp]                                      
01ed88 str      s0, [sp, #0x18]                               
01ed8c strb     wzr, [sp, #0x1c]                              
01ed90 adrp     x8, #0x39000                                  
01ed94 ldr      x1, [x8, #0xe8]                                ; SEL wp_onCustomDoneAction:
01ed98 adrp     x2, #0x1f000                                  
01ed9c add      x2, x2, #0x6a8                                
01eda0 add      x3, sp, #0x18                                 
01eda4 mov      x0, x20                                       
01eda8 bl       #0x231c8                                       ; _class_addMethod
01edac ldr      q0, [sp]                                      
01edb0 str      s0, [sp, #0x18]                               
01edb4 strb     wzr, [sp, #0x1c]                              
01edb8 adrp     x8, #0x39000                                  
01edbc ldr      x1, [x8, #0xf0]                                ; SEL wp_segmentChanged:
01edc0 adrp     x2, #0x1f000                                  
01edc4 add      x2, x2, #0x900                                
01edc8 add      x3, sp, #0x18                                 
01edcc mov      x0, x20                                       
01edd0 bl       #0x231c8                                       ; _class_addMethod
01edd4 adrp     x0, #0x2d000                                  
01edd8 add      x0, x0, #0x3f                                  ; MainSessionMgr
01eddc bl       #0x23294                                       ; _objc_getClass
01ede0 mov      x20, x0                                       
01ede4 adrp     x8, #0x39000                                  
01ede8 ldr      x1, [x8, #0xf8]                                ; SEL visibleTopSessionCount
01edec adrp     x2, #0x1f000                                  
01edf0 add      x2, x2, #0xdb4                                
01edf4 adrp     x3, #0x3a000                                  
01edf8 add      x3, x3, #0x7d0                                
01edfc bl       #0x23144                                       ; _MSHookMessageEx
01ee00 adrp     x8, #0x39000                                  
01ee04 ldr      x1, [x8, #0x100]                               ; SEL visibleNormalSessionCount
01ee08 adrp     x2, #0x1f000                                  
01ee0c add      x2, x2, #0xf74                                
01ee10 adrp     x3, #0x3a000                                  
01ee14 add      x3, x3, #0x7d8                                
01ee18 mov      x0, x20                                       
01ee1c bl       #0x23144                                       ; _MSHookMessageEx
01ee20 adrp     x8, #0x39000                                  
01ee24 ldr      x1, [x8, #0x108]                               ; SEL getTopSessionAtIndex:
01ee28 adrp     x2, #0x20000                                  
01ee2c add      x2, x2, #0x134                                
01ee30 adrp     x3, #0x3a000                                  
01ee34 add      x3, x3, #0x7e0                                
01ee38 mov      x0, x20                                       
01ee3c bl       #0x23144                                       ; _MSHookMessageEx
01ee40 adrp     x8, #0x39000                                  
01ee44 ldr      x1, [x8, #0x110]                               ; SEL getNormalSessionAtIndex:
01ee48 adrp     x2, #0x20000                                  
01ee4c add      x2, x2, #0x35c                                
01ee50 adrp     x3, #0x3a000                                  
01ee54 add      x3, x3, #0x7e8                                
01ee58 mov      x0, x20                                       
01ee5c bl       #0x23144                                       ; _MSHookMessageEx
01ee60 adrp     x0, #0x2c000                                  
01ee64 add      x0, x0, #0xc61                                 ; MMNewSessionMgr
01ee68 bl       #0x23294                                       ; _objc_getClass
01ee6c mov      x20, x0                                       
01ee70 adrp     x8, #0x39000                                  
01ee74 ldr      x21, [x8, #0x118]                              ; SEL GetSessionCount
01ee78 adrp     x2, #0x20000                                  
01ee7c add      x2, x2, #0x584                                
01ee80 adrp     x3, #0x3a000                                  
01ee84 add      x3, x3, #0x7f0                                
01ee88 mov      x1, x21                                       
01ee8c bl       #0x23144                                       ; _MSHookMessageEx
01ee90 adrp     x8, #0x39000                                  
01ee94 ldr      x22, [x8, #0x120]                              ; SEL GetSessionAtIndex:
01ee98 adrp     x2, #0x20000                                  
01ee9c add      x2, x2, #0x7c0                                
01eea0 adrp     x3, #0x3a000                                  
01eea4 add      x3, x3, #0x7f8                                
01eea8 mov      x0, x20                                       
01eeac mov      x1, x22                                       
01eeb0 bl       #0x23144                                       ; _MSHookMessageEx
01eeb4 adrp     x0, #0x2d000                                  
01eeb8 add      x0, x0, #0x4e                                  ; SessionMgr
01eebc bl       #0x23294                                       ; _objc_getClass
01eec0 mov      x20, x0                                       
01eec4 adrp     x2, #0x20000                                  
01eec8 add      x2, x2, #0xa84                                
01eecc adrp     x3, #0x3a000                                  
01eed0 add      x3, x3, #0x800                                
01eed4 mov      x1, x21                                       
01eed8 bl       #0x23144                                       ; _MSHookMessageEx
01eedc adrp     x2, #0x20000                                  
01eee0 add      x2, x2, #0xcc0                                
01eee4 adrp     x3, #0x3a000                                  
01eee8 add      x3, x3, #0x808                                
01eeec mov      x0, x20                                       
01eef0 mov      x1, x22                                       
01eef4 bl       #0x23144                                       ; _MSHookMessageEx
01eef8 adrp     x0, #0x2d000                                  
01eefc add      x0, x0, #0x59                                  ; NewMainFrameViewController
01ef00 bl       #0x23294                                       ; _objc_getClass
01ef04 mov      x20, x0                                       
01ef08 adrp     x2, #0x20000                                  
01ef0c add      x2, x2, #0xf84                                
01ef10 adrp     x3, #0x3a000                                  
01ef14 add      x3, x3, #0x810                                
01ef18 mov      x1, x19                                       
01ef1c bl       #0x23144                                       ; _MSHookMessageEx
01ef20 adrp     x8, #0x39000                                  
01ef24 ldr      x1, [x8, #0x128]                               ; SEL viewWillAppear:
01ef28 adrp     x2, #0x21000                                  
01ef2c add      x2, x2, #0x10c                                
01ef30 adrp     x3, #0x3a000                                  
01ef34 add      x3, x3, #0x818                                
01ef38 mov      x0, x20                                       
01ef3c bl       #0x23144                                       ; _MSHookMessageEx
01ef40 adrp     x8, #0x39000                                  
01ef44 ldr      x1, [x8, #0x130]                               ; SEL viewDidAppear:
01ef48 adrp     x2, #0x21000                                  
01ef4c add      x2, x2, #0x228                                
01ef50 adrp     x3, #0x3a000                                  
01ef54 add      x3, x3, #0x820                                
01ef58 mov      x0, x20                                       
01ef5c bl       #0x23144                                       ; _MSHookMessageEx
01ef60 adrp     x8, #0x39000                                  
01ef64 ldr      x1, [x8, #0x138]                               ; SEL viewDidLayoutSubviews
01ef68 adrp     x2, #0x21000                                  
01ef6c add      x2, x2, #0x2bc                                
01ef70 adrp     x3, #0x3a000                                  
01ef74 add      x3, x3, #0x828                                
01ef78 mov      x0, x20                                       
01ef7c bl       #0x23144                                       ; _MSHookMessageEx
01ef80 adrp     x8, #0x39000                                  
01ef84 ldr      x1, [x8, #0x708]                               ; SEL reloadSessions
01ef88 adrp     x2, #0x21000                                  
01ef8c add      x2, x2, #0x814                                
01ef90 adrp     x3, #0x3a000                                  
01ef94 add      x3, x3, #0x830                                
01ef98 mov      x0, x20                                       
01ef9c bl       #0x23144                                       ; _MSHookMessageEx
01efa0 adrp     x8, #0x39000                                  
01efa4 ldr      x1, [x8, #0x140]                               ; SEL logicGetSessionAtIndexPath:
01efa8 adrp     x2, #0x21000                                  
01efac add      x2, x2, #0x8c4                                
01efb0 adrp     x3, #0x3a000                                  
01efb4 add      x3, x3, #0x838                                
01efb8 mov      x0, x20                                       
01efbc bl       #0x23144                                       ; _MSHookMessageEx
01efc0 adrp     x8, #0x39000                                  
01efc4 ldr      x1, [x8, #0x148]                               ; SEL logicGetCellDataAtIndexPath:
01efc8 adrp     x2, #0x21000                                  
01efcc add      x2, x2, #0xbd0                                
01efd0 adrp     x3, #0x3a000                                  
01efd4 add      x3, x3, #0x840                                
01efd8 mov      x0, x20                                       
01efdc bl       #0x23144                                       ; _MSHookMessageEx
01efe0 adrp     x8, #0x2c000                                  
01efe4 ldr      d0, [x8, #0xa98]                              
01efe8 str      s0, [sp, #0x18]                               
01efec mov      w19, #0x71                                    
01eff0 strh     w19, [sp, #0x1c]                              
01eff4 adrp     x8, #0x39000                                  
01eff8 ldr      x1, [x8, #0x150]                               ; SEL tableView:numberOfRowsInSection:
01effc adrp     x2, #0x21000                                  
01f000 add      x2, x2, #0xc64                                
01f004 add      x3, sp, #0x18                                 
01f008 mov      x0, x20                                       
01f00c bl       #0x231c8                                       ; _class_addMethod
01f010 adrp     x8, #0x2c000                                  
01f014 ldr      d0, [x8, #0xaa0]                              
01f018 str      s0, [sp, #0x18]                               
01f01c strh     w19, [sp, #0x1c]                              
01f020 adrp     x8, #0x39000                                  
01f024 ldr      x1, [x8, #0x158]                               ; SEL tableView:heightForHeaderInSection:
01f028 adrp     x2, #0x21000                                  
01f02c add      x2, x2, #0xfbc                                
01f030 add      x3, sp, #0x18                                 
01f034 mov      x0, x20                                       
01f038 bl       #0x231c8                                       ; _class_addMethod
01f03c adrp     x8, #0x2c000                                  
01f040 ldr      d0, [x8, #0xaa8]                              
01f044 str      s0, [sp, #0x18]                               
01f048 strh     w19, [sp, #0x1c]                              
01f04c adrp     x8, #0x39000                                  
01f050 ldr      x1, [x8, #0x160]                               ; SEL tableView:viewForHeaderInSection:
01f054 adrp     x2, #0x22000                                  
01f058 add      x2, x2, #0x12c                                
01f05c add      x3, sp, #0x18                                 
01f060 mov      x0, x20                                       
01f064 bl       #0x231c8                                       ; _class_addMethod
01f068 adrp     x0, #0x2d000                                  
01f06c add      x0, x0, #0x74                                  ; CMessageMgr
01f070 bl       #0x23294                                       ; _objc_getClass
01f074 adrp     x8, #0x39000                                  
01f078 ldr      x1, [x8, #0x168]                               ; SEL AsyncOnAddMsg:MsgWrap:
01f07c adrp     x2, #0x22000                                  
01f080 add      x2, x2, #0x338                                
01f084 adrp     x3, #0x3a000                                  
01f088 add      x3, x3, #0x848                                
01f08c bl       #0x23144                                       ; _MSHookMessageEx
01f090 ldur     x8, [x29, #-0x38]                             
01f094 adrp     x9, #0x34000                                  
01f098 ldr      x9, [x9, #0x170]                               ; ___stack_chk_guard
01f09c ldr      x9, [x9]                                      
01f0a0 cmp      x9, x8                                        
01f0a4 b.ne     #0x1f0c0                                      
01f0a8 add      sp, sp, #0x420                                
01f0ac ldp      x29, x30, [sp, #0x30]                         
01f0b0 ldp      x20, x19, [sp, #0x20]                         
01f0b4 ldp      x22, x21, [sp, #0x10]                         
01f0b8 ldp      x28, x27, [sp], #0x40                         
01f0bc ret                                                    
01f0c0 bl       #0x231bc                                       ; ___stack_chk_fail
