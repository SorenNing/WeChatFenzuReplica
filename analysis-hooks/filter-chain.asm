
WCPulseSessionMgr.rebuildFilteredSessions:
006170 sub      sp, sp, #0x140                                
006174 stp      x28, x27, [sp, #0xe0]                         
006178 stp      x26, x25, [sp, #0xf0]                         
00617c stp      x24, x23, [sp, #0x100]                        
006180 stp      x22, x21, [sp, #0x110]                        
006184 stp      x20, x19, [sp, #0x120]                        
006188 stp      x29, x30, [sp, #0x130]                        
00618c add      x29, sp, #0x130                               
006190 mov      x20, x0                                       
006194 adrp     x8, #0x34000                                  
006198 ldr      x8, [x8, #0x170]                               ; ___stack_chk_guard
00619c ldr      x8, [x8]                                      
0061a0 stur     x8, [x29, #-0x60]                             
0061a4 bl       #0x23a60                                      
0061a8 mov      x29, x29                                      
0061ac bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0061b0 mov      x21, x0                                       
0061b4 adrp     x8, #0x34000                                  
0061b8 add      x8, x8, #0x858                                 ; @全部
0061bc cmp      x0, #0                                        
0061c0 csel     x0, x8, x0, eq                                
0061c4 bl       #0x23300                                       ; _objc_retain
0061c8 mov      x19, x0                                       
0061cc mov      x0, x21                                       
0061d0 bl       #0x232f4                                       ; _objc_release
0061d4 mov      x0, x20                                       
0061d8 str      x19, [sp, #8]                                 
0061dc bl       #0x23560                                      
0061e0 mov      x29, x29                                      
0061e4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0061e8 mov      x21, x0                                       
0061ec mov      x0, x20                                       
0061f0 mov      x2, x21                                       
0061f4 mov      x3, x19                                       
0061f8 mov      w4, #1                                        
0061fc bl       #0x23d60                                      
006200 mov      x29, x29                                      
006204 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006208 mov      x22, x0                                       
00620c mov      x0, x20                                       
006210 mov      x2, x22                                       
006214 bl       #0x24f20                                      
006218 mov      x0, x22                                       
00621c bl       #0x232f4                                       ; _objc_release
006220 mov      x0, x21                                       
006224 bl       #0x232f4                                       ; _objc_release
006228 mov      x0, x20                                       
00622c ldr      x19, [sp, #8]                                 
006230 bl       #0x23560                                      
006234 mov      x29, x29                                      
006238 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00623c mov      x21, x0                                       
006240 mov      x0, x20                                       
006244 mov      x2, x21                                       
006248 mov      x3, x19                                       
00624c mov      w4, #0                                        
006250 bl       #0x23d60                                      
006254 mov      x29, x29                                      
006258 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00625c mov      x22, x0                                       
006260 mov      x0, x20                                       
006264 mov      x2, x22                                       
006268 bl       #0x24f00                                      
00626c mov      x0, x22                                       
006270 bl       #0x232f4                                       ; _objc_release
006274 mov      x0, x21                                       
006278 bl       #0x232f4                                       ; _objc_release
00627c adrp     x8, #0x3a000                                  
006280 ldr      x0, [x8, #0x120]                               ; CLASS _OBJC_CLASS_$_NSMutableDictionary
006284 bl       #0x23bc0                                      
006288 mov      x29, x29                                      
00628c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006290 mov      x21, x0                                       
006294 movi     v0.16b, #0                                    
006298 stp      q0, q0, [sp, #0x30]                           
00629c stp      q0, q0, [sp, #0x10]                           
0062a0 mov      x0, x20                                       
0062a4 bl       #0x23420                                      
0062a8 mov      x29, x29                                      
0062ac bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0062b0 mov      x22, x0                                       
0062b4 add      x2, sp, #0x10                                 
0062b8 add      x3, sp, #0x50                                 
0062bc mov      w4, #0x10                                     
0062c0 bl       #0x239e0                                      
0062c4 mov      x24, x0                                       
0062c8 cbz      x0, #0x6388                                   
0062cc ldr      x8, [sp, #0x20]                               
0062d0 ldr      x27, [x8]                                     
0062d4 adrp     x23, #0x34000                                 
0062d8 add      x23, x23, #0x898                               ; @id
0062dc adrp     x28, #0x3a000                                 
0062e0 mov      x19, #0                                       
0062e4 ldr      x8, [sp, #0x20]                               
0062e8 ldr      x8, [x8]                                      
0062ec cmp      x8, x27                                       
0062f0 b.eq     #0x62fc                                       
0062f4 mov      x0, x22                                       
0062f8 bl       #0x2327c                                       ; _objc_enumerationMutation
0062fc ldr      x8, [sp, #0x18]                               
006300 ldr      x0, [x8, x19, lsl #3]                         
006304 mov      x2, x23                                       
006308 bl       #0x246a0                                      
00630c mov      x29, x29                                      
006310 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006314 mov      x25, x0                                       
006318 ldr      x26, [x28, #0x110]                             ; CLASS _OBJC_CLASS_$_NSNumber
00631c mov      x0, x20                                       
006320 mov      x2, x25                                       
006324 bl       #0x23ec0                                      
006328 mov      x2, x0                                        
00632c mov      x0, x26                                       
006330 bl       #0x24600                                      
006334 mov      x29, x29                                      
006338 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00633c mov      x26, x0                                       
006340 mov      x0, x21                                       
006344 mov      x2, x26                                       
006348 mov      x3, x25                                       
00634c bl       #0x25180                                      
006350 mov      x0, x26                                       
006354 bl       #0x232f4                                       ; _objc_release
006358 mov      x0, x25                                       
00635c bl       #0x232f4                                       ; _objc_release
006360 add      x19, x19, #1                                  
006364 cmp      x24, x19                                      
006368 b.ne     #0x62e4                                       
00636c add      x2, sp, #0x10                                 
006370 add      x3, sp, #0x50                                 
006374 mov      x0, x22                                       
006378 mov      w4, #0x10                                     
00637c bl       #0x239e0                                      
006380 mov      x24, x0                                       
006384 cbnz     x0, #0x62e0                                   
006388 mov      x0, x22                                       
00638c bl       #0x232f4                                       ; _objc_release
006390 mov      x0, x21                                       
006394 bl       #0x239a0                                      
006398 mov      x22, x0                                       
00639c mov      x0, x20                                       
0063a0 mov      x2, x22                                       
0063a4 bl       #0x25680                                      
0063a8 mov      x0, x22                                       
0063ac bl       #0x232f4                                       ; _objc_release
0063b0 mov      x0, x21                                       
0063b4 bl       #0x232f4                                       ; _objc_release
0063b8 ldr      x0, [sp, #8]                                  
0063bc bl       #0x232f4                                       ; _objc_release
0063c0 ldur     x8, [x29, #-0x60]                             
0063c4 adrp     x9, #0x34000                                  
0063c8 ldr      x9, [x9, #0x170]                               ; ___stack_chk_guard
0063cc ldr      x9, [x9]                                      
0063d0 cmp      x9, x8                                        
0063d4 b.ne     #0x63f8                                       
0063d8 ldp      x29, x30, [sp, #0x130]                        
0063dc ldp      x20, x19, [sp, #0x120]                        
0063e0 ldp      x22, x21, [sp, #0x110]                        
0063e4 ldp      x24, x23, [sp, #0x100]                        
0063e8 ldp      x26, x25, [sp, #0xf0]                         
0063ec ldp      x28, x27, [sp, #0xe0]                         
0063f0 add      sp, sp, #0x140                                
0063f4 ret                                                    
0063f8 bl       #0x231bc                                       ; ___stack_chk_fail
0063fc mov      x20, x0                                       
006400 mov      x0, x22                                       
006404 bl       #0x232f4                                       ; _objc_release
006408 b        #0x6484                                       
00640c b        #0x6414                                       
006410 b        #0x6468                                       
006414 mov      x20, x0                                       
006418 b        #0x6484                                       
00641c b        #0x6448                                       
006420 b        #0x6428                                       
006424 b        #0x6438                                       
006428 mov      x20, x0                                       
00642c mov      x0, x22                                       
006430 bl       #0x232f4                                       ; _objc_release
006434 b        #0x643c                                       
006438 mov      x20, x0                                       
00643c mov      x0, x21                                       
006440 bl       #0x232f4                                       ; _objc_release
006444 b        #0x648c                                       
006448 mov      x20, x0                                       
00644c b        #0x648c                                       
006450 b        #0x6468                                       
006454 b        #0x6468                                       
006458 mov      x20, x0                                       
00645c mov      x0, x26                                       
006460 bl       #0x232f4                                       ; _objc_release
006464 b        #0x6474                                       
006468 mov      x20, x0                                       
00646c b        #0x647c                                       
006470 mov      x20, x0                                       
006474 mov      x0, x25                                       
006478 bl       #0x232f4                                       ; _objc_release
00647c mov      x0, x22                                       
006480 bl       #0x232f4                                       ; _objc_release
006484 mov      x0, x21                                       
006488 bl       #0x232f4                                       ; _objc_release
00648c ldr      x0, [sp, #8]                                  
006490 bl       #0x232f4                                       ; _objc_release
006494 b        #0x649c                                       
006498 mov      x20, x0                                       
00649c mov      x0, x20                                       
0064a0 bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.getUnreadForTypeId::
0064a4 sub      sp, sp, #0x1f0                                
0064a8 stp      x28, x27, [sp, #0x190]                        
0064ac stp      x26, x25, [sp, #0x1a0]                        
0064b0 stp      x24, x23, [sp, #0x1b0]                        
0064b4 stp      x22, x21, [sp, #0x1c0]                        
0064b8 stp      x20, x19, [sp, #0x1d0]                        
0064bc stp      x29, x30, [sp, #0x1e0]                        
0064c0 add      x29, sp, #0x1e0                               
0064c4 mov      x21, x0                                       
0064c8 adrp     x8, #0x34000                                  
0064cc ldr      x8, [x8, #0x170]                               ; ___stack_chk_guard
0064d0 ldr      x8, [x8]                                      
0064d4 stur     x8, [x29, #-0x60]                             
0064d8 mov      x0, x2                                        
0064dc bl       #0x23300                                       ; _objc_retain
0064e0 mov      x19, x0                                       
0064e4 mov      x0, x21                                       
0064e8 bl       #0x23560                                      
0064ec mov      x29, x29                                      
0064f0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0064f4 mov      x22, x0                                       
0064f8 mov      x0, x21                                       
0064fc mov      x2, x22                                       
006500 mov      x3, x19                                       
006504 mov      w4, #1                                        
006508 bl       #0x23d60                                      
00650c mov      x29, x29                                      
006510 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006514 mov      x20, x0                                       
006518 mov      x0, x22                                       
00651c bl       #0x232f4                                       ; _objc_release
006520 mov      x0, x21                                       
006524 bl       #0x23560                                      
006528 mov      x29, x29                                      
00652c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006530 mov      x23, x0                                       
006534 mov      x0, x21                                       
006538 mov      x2, x23                                       
00653c mov      x3, x19                                       
006540 mov      w4, #0                                        
006544 bl       #0x23d60                                      
006548 mov      x29, x29                                      
00654c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006550 mov      x22, x0                                       
006554 mov      x0, x23                                       
006558 bl       #0x232f4                                       ; _objc_release
00655c movi     v0.16b, #0                                    
006560 stp      q0, q0, [sp, #0x60]                           
006564 stp      q0, q0, [sp, #0x40]                           
006568 mov      x0, x20                                       
00656c bl       #0x23300                                       ; _objc_retain
006570 mov      x23, x0                                       
006574 add      x2, sp, #0x40                                 
006578 sub      x3, x29, #0xe0                                
00657c mov      w4, #0x10                                     
006580 bl       #0x239e0                                      
006584 mov      x24, #0                                       
006588 mov      x25, x0                                       
00658c cbz      x0, #0x65f0                                   
006590 ldr      x8, [sp, #0x50]                               
006594 ldr      x26, [x8]                                     
006598 mov      x27, #0                                       
00659c ldr      x8, [sp, #0x50]                               
0065a0 ldr      x8, [x8]                                      
0065a4 cmp      x8, x26                                       
0065a8 b.eq     #0x65b4                                       
0065ac mov      x0, x23                                       
0065b0 bl       #0x2327c                                       ; _objc_enumerationMutation
0065b4 ldr      x8, [sp, #0x48]                               
0065b8 ldr      x2, [x8, x27, lsl #3]                         
0065bc mov      x0, x21                                       
0065c0 bl       #0x23ce0                                      
0065c4 add      x24, x0, x24                                  
0065c8 add      x27, x27, #1                                  
0065cc cmp      x25, x27                                      
0065d0 b.ne     #0x659c                                       
0065d4 add      x2, sp, #0x40                                 
0065d8 sub      x3, x29, #0xe0                                
0065dc mov      x0, x23                                       
0065e0 mov      w4, #0x10                                     
0065e4 bl       #0x239e0                                      
0065e8 mov      x25, x0                                       
0065ec cbnz     x0, #0x6598                                   
0065f0 mov      x0, x23                                       
0065f4 bl       #0x232f4                                       ; _objc_release
0065f8 movi     v0.16b, #0                                    
0065fc stp      q0, q0, [sp, #0x20]                           
006600 stp      q0, q0, [sp]                                  
006604 mov      x0, x22                                       
006608 bl       #0x23300                                       ; _objc_retain
00660c mov      x25, x0                                       
006610 mov      x2, sp                                        
006614 add      x3, sp, #0x80                                 
006618 mov      w4, #0x10                                     
00661c bl       #0x239e0                                      
006620 mov      x26, x0                                       
006624 cbz      x0, #0x6688                                   
006628 ldr      x8, [sp, #0x10]                               
00662c ldr      x27, [x8]                                     
006630 mov      x28, #0                                       
006634 ldr      x8, [sp, #0x10]                               
006638 ldr      x8, [x8]                                      
00663c cmp      x8, x27                                       
006640 b.eq     #0x664c                                       
006644 mov      x0, x25                                       
006648 bl       #0x2327c                                       ; _objc_enumerationMutation
00664c ldr      x8, [sp, #8]                                  
006650 ldr      x2, [x8, x28, lsl #3]                         
006654 mov      x0, x21                                       
006658 bl       #0x23ce0                                      
00665c add      x24, x0, x24                                  
006660 add      x28, x28, #1                                  
006664 cmp      x26, x28                                      
006668 b.ne     #0x6634                                       
00666c mov      x2, sp                                        
006670 add      x3, sp, #0x80                                 
006674 mov      x0, x25                                       
006678 mov      w4, #0x10                                     
00667c bl       #0x239e0                                      
006680 mov      x26, x0                                       
006684 cbnz     x0, #0x6630                                   
006688 mov      x0, x25                                       
00668c bl       #0x232f4                                       ; _objc_release
006690 mov      x0, x25                                       
006694 bl       #0x232f4                                       ; _objc_release
006698 mov      x0, x23                                       
00669c bl       #0x232f4                                       ; _objc_release
0066a0 mov      x0, x19                                       
0066a4 bl       #0x232f4                                       ; _objc_release
0066a8 ldur     x8, [x29, #-0x60]                             
0066ac adrp     x9, #0x34000                                  
0066b0 ldr      x9, [x9, #0x170]                               ; ___stack_chk_guard
0066b4 ldr      x9, [x9]                                      
0066b8 cmp      x9, x8                                        
0066bc b.ne     #0x66e4                                       
0066c0 mov      x0, x24                                       
0066c4 ldp      x29, x30, [sp, #0x1e0]                        
0066c8 ldp      x20, x19, [sp, #0x1d0]                        
0066cc ldp      x22, x21, [sp, #0x1c0]                        
0066d0 ldp      x24, x23, [sp, #0x1b0]                        
0066d4 ldp      x26, x25, [sp, #0x1a0]                        
0066d8 ldp      x28, x27, [sp, #0x190]                        
0066dc add      sp, sp, #0x1f0                                
0066e0 ret                                                    
0066e4 bl       #0x231bc                                       ; ___stack_chk_fail
0066e8 b        #0x6728                                       
0066ec b        #0x6734                                       
0066f0 mov      x21, x0                                       
0066f4 mov      x0, x23                                       
0066f8 bl       #0x232f4                                       ; _objc_release
0066fc b        #0x6748                                       
006700 mov      x21, x0                                       
006704 b        #0x6748                                       
006708 mov      x21, x0                                       
00670c mov      x0, x22                                       
006710 bl       #0x232f4                                       ; _objc_release
006714 b        #0x6750                                       
006718 mov      x21, x0                                       
00671c b        #0x6750                                       
006720 b        #0x6728                                       
006724 b        #0x6734                                       
006728 mov      x21, x0                                       
00672c mov      x23, x25                                      
006730 b        #0x6738                                       
006734 mov      x21, x0                                       
006738 mov      x0, x23                                       
00673c bl       #0x232f4                                       ; _objc_release
006740 mov      x0, x22                                       
006744 bl       #0x232f4                                       ; _objc_release
006748 mov      x0, x20                                       
00674c bl       #0x232f4                                       ; _objc_release
006750 mov      x0, x19                                       
006754 bl       #0x232f4                                       ; _objc_release
006758 b        #0x6760                                       
00675c mov      x21, x0                                       
006760 mov      x0, x21                                       
006764 bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.extractUnreadFromSession::
006768 stp      x24, x23, [sp, #-0x40]!                       
00676c stp      x22, x21, [sp, #0x10]                         
006770 stp      x20, x19, [sp, #0x20]                         
006774 stp      x29, x30, [sp, #0x30]                         
006778 add      x29, sp, #0x30                                
00677c mov      x0, x2                                        
006780 bl       #0x23300                                       ; _objc_retain
006784 mov      x19, x0                                       
006788 adrp     x8, #0x38000                                  
00678c ldr      x1, [x8, #0xee8]                               ; SEL m_uUnReadCount
006790 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006794 tbz      w0, #0, #0x67bc                               
006798 adrp     x2, #0x34000                                  
00679c add      x2, x2, #0x978                                 ; @m_uUnReadCount
0067a0 mov      x0, x19                                       
0067a4 bl       #0x25e20                                      
0067a8 mov      x29, x29                                      
0067ac bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0067b0 mov      x21, x0                                       
0067b4 bl       #0x241e0                                      
0067b8 b        #0x67f0                                       
0067bc adrp     x8, #0x38000                                  
0067c0 ldr      x1, [x8, #0xef0]                               ; SEL unreadCount
0067c4 mov      x0, x19                                       
0067c8 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
0067cc tbz      w0, #0, #0x6918                               
0067d0 adrp     x2, #0x34000                                  
0067d4 add      x2, x2, #0x998                                 ; @unreadCount
0067d8 mov      x0, x19                                       
0067dc bl       #0x25e20                                      
0067e0 mov      x29, x29                                      
0067e4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0067e8 mov      x21, x0                                       
0067ec bl       #0x241e0                                      
0067f0 mov      x20, x0                                       
0067f4 mov      x0, x21                                       
0067f8 bl       #0x232f4                                       ; _objc_release
0067fc cmp      x20, #1                                       
006800 b.lt     #0x6918                                       
006804 adrp     x8, #0x38000                                  
006808 ldr      x1, [x8, #0xef8]                               ; SEL m_bShowUnReadAsRedDot
00680c mov      x0, x19                                       
006810 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006814 tbz      w0, #0, #0x6894                               
006818 adrp     x2, #0x34000                                  
00681c add      x2, x2, #0x9b8                                 ; @m_bShowUnReadAsRedDot
006820 mov      x0, x19                                       
006824 bl       #0x25e20                                      
006828 mov      x29, x29                                      
00682c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006830 mov      x22, x0                                       
006834 bl       #0x23760                                      
006838 mov      x21, x0                                       
00683c mov      x0, x22                                       
006840 bl       #0x232f4                                       ; _objc_release
006844 b        #0x6898                                       
006848 mov      x23, x1                                       
00684c mov      x21, x0                                       
006850 mov      x0, x22                                       
006854 bl       #0x232f4                                       ; _objc_release
006858 b        #0x6880                                       
00685c b        #0x6860                                       
006860 mov      x20, x1                                       
006864 mov      x1, x21                                       
006868 mov      x21, x0                                       
00686c mov      x0, x1                                        
006870 bl       #0x232f4                                       ; _objc_release
006874 b        #0x6904                                       
006878 mov      x23, x1                                       
00687c mov      x21, x0                                       
006880 cmp      w23, #1                                       
006884 b.ne     #0x68ec                                       
006888 mov      x0, x21                                       
00688c bl       #0x2324c                                       ; _objc_begin_catch
006890 bl       #0x23270                                       ; _objc_end_catch
006894 mov      w21, #0                                       
006898 adrp     x8, #0x3a000                                  
00689c ldr      x0, [x8, #0x100]                               ; CLASS _OBJC_CLASS_$_NSUserDefaults
0068a0 bl       #0x25920                                      
0068a4 mov      x29, x29                                      
0068a8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0068ac mov      x22, x0                                       
0068b0 adrp     x2, #0x34000                                  
0068b4 add      x2, x2, #0x9d8                                 ; @WPPulse_UseNativeBadges
0068b8 bl       #0x23740                                      
0068bc mov      x23, x0                                       
0068c0 mov      x0, x22                                       
0068c4 bl       #0x232f4                                       ; _objc_release
0068c8 sbfx     x8, x23, #0, #1                               
0068cc cmp      w21, #0                                       
0068d0 csel     x20, x8, x20, ne                              
0068d4 b        #0x691c                                       
0068d8 mov      x21, x0                                       
0068dc mov      x0, x22                                       
0068e0 bl       #0x232f4                                       ; _objc_release
0068e4 b        #0x68ec                                       
0068e8 mov      x21, x0                                       
0068ec mov      x0, x19                                       
0068f0 bl       #0x232f4                                       ; _objc_release
0068f4 mov      x0, x21                                       
0068f8 bl       #0x231b0                                       ; __Unwind_Resume
0068fc mov      x20, x1                                       
006900 mov      x21, x0                                       
006904 cmp      w20, #1                                       
006908 b.ne     #0x68ec                                       
00690c mov      x0, x21                                       
006910 bl       #0x2324c                                       ; _objc_begin_catch
006914 bl       #0x23270                                       ; _objc_end_catch
006918 mov      x20, #0                                       
00691c mov      x0, x19                                       
006920 bl       #0x232f4                                       ; _objc_release
006924 mov      x0, x20                                       
006928 ldp      x29, x30, [sp, #0x30]                         
00692c ldp      x20, x19, [sp, #0x20]                         
006930 ldp      x22, x21, [sp, #0x10]                         
006934 ldp      x24, x23, [sp], #0x40                         
006938 ret                                                    

WCPulseSessionMgr.filterSessions:withGroupName:needTop::
00693c stp      x28, x27, [sp, #-0x60]!                       
006940 stp      x26, x25, [sp, #0x10]                         
006944 stp      x24, x23, [sp, #0x20]                         
006948 stp      x22, x21, [sp, #0x30]                         
00694c stp      x20, x19, [sp, #0x40]                         
006950 stp      x29, x30, [sp, #0x50]                         
006954 add      x29, sp, #0x50                                
006958 sub      sp, sp, #0x660                                
00695c str      w4, [sp, #0x44]                               
006960 mov      x19, x3                                       
006964 str      x0, [sp, #0x38]                               
006968 adrp     x8, #0x34000                                  
00696c ldr      x8, [x8, #0x170]                               ; ___stack_chk_guard
006970 ldr      x8, [x8]                                      
006974 stur     x8, [x29, #-0x60]                             
006978 mov      x0, x2                                        
00697c bl       #0x23300                                       ; _objc_retain
006980 mov      x20, x0                                       
006984 mov      x0, x19                                       
006988 bl       #0x23300                                       ; _objc_retain
00698c stp      x20, x0, [sp, #0x20]                          
006990 adrp     x8, #0x3a000                                  
006994 ldr      x0, [x8, #0x118]                               ; CLASS _OBJC_CLASS_$_NSArray
006998 bl       #0x232d0                                       ; _objc_opt_class
00699c mov      x1, x0                                        
0069a0 mov      x0, x20                                       
0069a4 bl       #0x232dc                                       ; _objc_opt_isKindOfClass
0069a8 tbz      w0, #0, #0x6a90                               
0069ac ldr      x0, [sp, #0x20]                               
0069b0 bl       #0x239c0                                      
0069b4 adrp     x19, #0x34000                                 
0069b8 ldr      x19, [x19, #0x120]                             ; ___NSArray0__struct
0069bc cbz      x0, #0x76e4                                   
0069c0 movi     v0.16b, #0                                    
0069c4 stp      q0, q0, [sp, #0x230]                          
0069c8 stp      q0, q0, [sp, #0x210]                          
0069cc ldr      x0, [sp, #0x38]                               
0069d0 bl       #0x23f00                                      
0069d4 mov      x29, x29                                      
0069d8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0069dc mov      x20, x0                                       
0069e0 add      x2, sp, #0x210                                
0069e4 sub      x3, x29, #0xe0                                
0069e8 mov      w4, #0x10                                     
0069ec bl       #0x239e0                                      
0069f0 mov      x22, x0                                       
0069f4 cbz      x0, #0x6a84                                   
0069f8 ldr      x8, [sp, #0x220]                              
0069fc ldr      x26, [x8]                                     
006a00 adrp     x21, #0x34000                                 
006a04 add      x21, x21, #0x898                               ; @id
006a08 mov      x27, #0                                       
006a0c ldr      x8, [sp, #0x220]                              
006a10 ldr      x8, [x8]                                      
006a14 cmp      x8, x26                                       
006a18 b.eq     #0x6a24                                       
006a1c mov      x0, x20                                       
006a20 bl       #0x2327c                                       ; _objc_enumerationMutation
006a24 ldr      x8, [sp, #0x218]                              
006a28 ldr      x23, [x8, x27, lsl #3]                        
006a2c mov      x0, x23                                       
006a30 mov      x2, x21                                       
006a34 bl       #0x246a0                                      
006a38 mov      x29, x29                                      
006a3c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006a40 mov      x24, x0                                       
006a44 ldr      x2, [sp, #0x28]                               
006a48 bl       #0x24260                                      
006a4c mov      x25, x0                                       
006a50 mov      x0, x24                                       
006a54 bl       #0x232f4                                       ; _objc_release
006a58 tbnz     w25, #0, #0x6a9c                              
006a5c add      x27, x27, #1                                  
006a60 cmp      x22, x27                                      
006a64 b.ne     #0x6a0c                                       
006a68 add      x2, sp, #0x210                                
006a6c sub      x3, x29, #0xe0                                
006a70 mov      x0, x20                                       
006a74 mov      w4, #0x10                                     
006a78 bl       #0x239e0                                      
006a7c mov      x22, x0                                       
006a80 cbnz     x0, #0x6a08                                   
006a84 mov      x0, x20                                       
006a88 bl       #0x232f4                                       ; _objc_release
006a8c b        #0x6c5c                                       
006a90 adrp     x19, #0x34000                                 
006a94 ldr      x19, [x19, #0x120]                             ; ___NSArray0__struct
006a98 b        #0x76e4                                       
006a9c mov      x0, x23                                       
006aa0 bl       #0x23300                                       ; _objc_retain
006aa4 str      x0, [sp, #8]                                  
006aa8 mov      x0, x20                                       
006aac bl       #0x232f4                                       ; _objc_release
006ab0 ldr      x0, [sp, #8]                                  
006ab4 cbz      x0, #0x6c5c                                   
006ab8 adrp     x2, #0x34000                                  
006abc add      x2, x2, #0x9f8                                 ; @isCustom
006ac0 bl       #0x246a0                                      
006ac4 mov      x29, x29                                      
006ac8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006acc mov      x20, x0                                       
006ad0 bl       #0x23760                                      
006ad4 mov      x21, x0                                       
006ad8 mov      x0, x20                                       
006adc bl       #0x232f4                                       ; _objc_release
006ae0 cbz      w21, #0x6c60                                  
006ae4 adrp     x2, #0x34000                                  
006ae8 add      x2, x2, #0xa18                                 ; @members
006aec ldr      x0, [sp, #8]                                  
006af0 bl       #0x246a0                                      
006af4 mov      x29, x29                                      
006af8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006afc mov      x20, x0                                       
006b00 cmp      x0, #0                                        
006b04 csel     x0, x19, x0, eq                               
006b08 bl       #0x23300                                       ; _objc_retain
006b0c str      x0, [sp, #0x48]                               
006b10 mov      x0, x20                                       
006b14 bl       #0x232f4                                       ; _objc_release
006b18 adrp     x8, #0x3a000                                  
006b1c ldr      x0, [x8, #0x108]                               ; CLASS _OBJC_CLASS_$_NSMutableArray
006b20 bl       #0x23680                                      
006b24 mov      x29, x29                                      
006b28 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006b2c mov      x24, x0                                       
006b30 movi     v0.16b, #0                                    
006b34 stp      q0, q0, [sp, #0x1f0]                          
006b38 stp      q0, q0, [sp, #0x1d0]                          
006b3c ldr      x0, [sp, #0x20]                               
006b40 bl       #0x23300                                       ; _objc_retain
006b44 mov      x19, x0                                       
006b48 add      x2, sp, #0x1d0                                
006b4c add      x3, sp, #0x550                                
006b50 mov      w4, #0x10                                     
006b54 bl       #0x239e0                                      
006b58 mov      x20, x0                                       
006b5c cbz      x0, #0x6c48                                   
006b60 ldr      x8, [sp, #0x1e0]                              
006b64 ldr      x22, [x8]                                     
006b68 adrp     x28, #0x39000                                 
006b6c mov      x23, #0                                       
006b70 adrp     x8, #0x38000                                  
006b74 ldr      x21, [x8, #0xf00]                              ; SEL m_bIsTop
006b78 ldr      x25, [x28, #0x590]                             ; SEL isHidden
006b7c ldr      x8, [sp, #0x1e0]                              
006b80 ldr      x8, [x8]                                      
006b84 cmp      x8, x22                                       
006b88 b.eq     #0x6b94                                       
006b8c mov      x0, x19                                       
006b90 bl       #0x2327c                                       ; _objc_enumerationMutation
006b94 ldr      x8, [sp, #0x1d8]                              
006b98 ldr      x27, [x8, x23, lsl #3]                        
006b9c mov      x0, x27                                       
006ba0 bl       #0x79a0                                       
006ba4 mov      x29, x29                                      
006ba8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006bac mov      x26, x0                                       
006bb0 cbz      x0, #0x6c18                                   
006bb4 ldr      x0, [sp, #0x48]                               
006bb8 mov      x2, x26                                       
006bbc bl       #0x238e0                                      
006bc0 cbz      w0, #0x6c18                                   
006bc4 mov      x0, x27                                       
006bc8 mov      x1, x21                                       
006bcc bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006bd0 tbz      w0, #0, #0x6bec                               
006bd4 mov      x0, x27                                       
006bd8 mov      x1, x21                                       
006bdc bl       #0x7a34                                       
006be0 ldr      w8, [sp, #0x44]                               
006be4 cmp      w0, w8                                        
006be8 b.ne     #0x6c18                                       
006bec mov      x0, x27                                       
006bf0 mov      x1, x25                                       
006bf4 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006bf8 tbz      w0, #0, #0x6c0c                               
006bfc mov      x0, x27                                       
006c00 mov      x1, x25                                       
006c04 bl       #0x7a34                                       
006c08 tbnz     w0, #0, #0x6c18                               
006c0c mov      x0, x24                                       
006c10 mov      x2, x27                                       
006c14 bl       #0x23480                                      
006c18 mov      x0, x26                                       
006c1c bl       #0x232f4                                       ; _objc_release
006c20 add      x23, x23, #1                                  
006c24 cmp      x20, x23                                      
006c28 b.ne     #0x6b7c                                       
006c2c add      x2, sp, #0x1d0                                
006c30 add      x3, sp, #0x550                                
006c34 mov      x0, x19                                       
006c38 mov      w4, #0x10                                     
006c3c bl       #0x239e0                                      
006c40 mov      x20, x0                                       
006c44 cbnz     x0, #0x6b6c                                   
006c48 mov      x0, x19                                       
006c4c bl       #0x232f4                                       ; _objc_release
006c50 mov      x0, x24                                       
006c54 bl       #0x239a0                                      
006c58 b        #0x76c8                                       
006c5c str      xzr, [sp, #8]                                 
006c60 adrp     x8, #0x3a000                                  
006c64 ldr      x0, [x8, #0x108]                               ; CLASS _OBJC_CLASS_$_NSMutableArray
006c68 bl       #0x23680                                      
006c6c mov      x29, x29                                      
006c70 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006c74 str      x0, [sp, #0x48]                               
006c78 adrp     x2, #0x34000                                  
006c7c add      x2, x2, #0x858                                 ; @全部
006c80 ldr      x0, [sp, #0x28]                               
006c84 bl       #0x24260                                      
006c88 cbz      w0, #0x6d78                                   
006c8c movi     v0.16b, #0                                    
006c90 stp      q0, q0, [sp, #0x1b0]                          
006c94 stp      q0, q0, [sp, #0x190]                          
006c98 ldr      x0, [sp, #0x20]                               
006c9c bl       #0x23300                                       ; _objc_retain
006ca0 mov      x19, x0                                       
006ca4 add      x2, sp, #0x190                                
006ca8 add      x3, sp, #0x4d0                                
006cac mov      w4, #0x10                                     
006cb0 bl       #0x239e0                                      
006cb4 mov      x20, x0                                       
006cb8 cbz      x0, #0x7110                                   
006cbc ldr      x8, [sp, #0x1a0]                              
006cc0 ldr      x22, [x8]                                     
006cc4 adrp     x23, #0x38000                                 
006cc8 adrp     x26, #0x39000                                 
006ccc mov      x27, #0                                       
006cd0 ldr      x21, [x23, #0xf00]                             ; SEL m_bIsTop
006cd4 ldr      x24, [x26, #0x590]                             ; SEL isHidden
006cd8 ldr      x8, [sp, #0x1a0]                              
006cdc ldr      x8, [x8]                                      
006ce0 cmp      x8, x22                                       
006ce4 b.eq     #0x6cf0                                       
006ce8 mov      x0, x19                                       
006cec bl       #0x2327c                                       ; _objc_enumerationMutation
006cf0 ldr      x8, [sp, #0x198]                              
006cf4 ldr      x25, [x8, x27, lsl #3]                        
006cf8 mov      x0, x25                                       
006cfc mov      x1, x21                                       
006d00 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006d04 tbz      w0, #0, #0x6d20                               
006d08 mov      x0, x25                                       
006d0c mov      x1, x21                                       
006d10 bl       #0x7a34                                       
006d14 ldr      w8, [sp, #0x44]                               
006d18 cmp      w0, w8                                        
006d1c b.ne     #0x6d4c                                       
006d20 mov      x0, x25                                       
006d24 mov      x1, x24                                       
006d28 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006d2c tbz      w0, #0, #0x6d40                               
006d30 mov      x0, x25                                       
006d34 mov      x1, x24                                       
006d38 bl       #0x7a34                                       
006d3c tbnz     w0, #0, #0x6d4c                               
006d40 ldr      x0, [sp, #0x48]                               
006d44 mov      x2, x25                                       
006d48 bl       #0x23480                                      
006d4c add      x27, x27, #1                                  
006d50 cmp      x20, x27                                      
006d54 b.ne     #0x6cd8                                       
006d58 add      x2, sp, #0x190                                
006d5c add      x3, sp, #0x4d0                                
006d60 mov      x0, x19                                       
006d64 mov      w4, #0x10                                     
006d68 bl       #0x239e0                                      
006d6c mov      x20, x0                                       
006d70 cbnz     x0, #0x6ccc                                   
006d74 b        #0x7110                                       
006d78 adrp     x2, #0x34000                                  
006d7c add      x2, x2, #0x8f8                                 ; @未读
006d80 ldr      x0, [sp, #0x28]                               
006d84 bl       #0x24260                                      
006d88 cbz      w0, #0x6fcc                                   
006d8c movi     v0.16b, #0                                    
006d90 stp      q0, q0, [sp, #0x170]                          
006d94 stp      q0, q0, [sp, #0x150]                          
006d98 ldr      x0, [sp, #0x20]                               
006d9c bl       #0x23300                                       ; _objc_retain
006da0 add      x2, sp, #0x150                                
006da4 add      x3, sp, #0x450                                
006da8 str      x0, [sp, #0x38]                               
006dac mov      w4, #0x10                                     
006db0 bl       #0x239e0                                      
006db4 mov      x26, x0                                       
006db8 cbz      x0, #0x7110                                   
006dbc ldr      x8, [sp, #0x160]                              
006dc0 ldr      x24, [x8]                                     
006dc4 mov      x25, #0                                       
006dc8 adrp     x8, #0x38000                                  
006dcc ldr      x21, [x8, #0xee8]                              ; SEL m_uUnReadCount
006dd0 adrp     x8, #0x38000                                  
006dd4 ldr      x19, [x8, #0xef0]                              ; SEL unreadCount
006dd8 adrp     x8, #0x38000                                  
006ddc ldr      x20, [x8, #0xef8]                              ; SEL m_bShowUnReadAsRedDot
006de0 adrp     x8, #0x38000                                  
006de4 ldr      x28, [x8, #0xf00]                              ; SEL m_bIsTop
006de8 adrp     x8, #0x39000                                  
006dec ldr      x8, [x8, #0x590]                               ; SEL isHidden
006df0 str      x8, [sp, #0x30]                               
006df4 ldr      x8, [sp, #0x160]                              
006df8 ldr      x8, [x8]                                       ; isHidden
006dfc cmp      x8, x24                                       
006e00 b.eq     #0x6e0c                                       
006e04 ldr      x0, [sp, #0x38]                               
006e08 bl       #0x2327c                                       ; _objc_enumerationMutation
006e0c ldr      x8, [sp, #0x158]                              
006e10 ldr      x27, [x8, x25, lsl #3]                        
006e14 mov      x0, x27                                       
006e18 mov      x1, x21                                       
006e1c bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006e20 tbz      w0, #0, #0x6e48                               
006e24 mov      x0, x27                                       
006e28 adrp     x2, #0x34000                                  
006e2c add      x2, x2, #0x978                                 ; @m_uUnReadCount
006e30 bl       #0x25e20                                      
006e34 mov      x29, x29                                      
006e38 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006e3c mov      x23, x0                                       
006e40 bl       #0x241e0                                      
006e44 b        #0x6e78                                       
006e48 mov      x0, x27                                       
006e4c mov      x1, x19                                       
006e50 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006e54 tbz      w0, #0, #0x6f20                               
006e58 mov      x0, x27                                       
006e5c adrp     x2, #0x34000                                  
006e60 add      x2, x2, #0x998                                 ; @unreadCount
006e64 bl       #0x25e20                                      
006e68 mov      x29, x29                                      
006e6c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006e70 mov      x23, x0                                       
006e74 bl       #0x241e0                                      
006e78 mov      x22, x0                                       
006e7c mov      x0, x23                                       
006e80 bl       #0x232f4                                       ; _objc_release
006e84 cmp      x22, #1                                       
006e88 b.lt     #0x6f20                                       
006e8c mov      x0, x27                                       
006e90 mov      x1, x20                                       
006e94 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006e98 tbz      w0, #0, #0x6ecc                               
006e9c mov      x0, x27                                       
006ea0 adrp     x2, #0x34000                                  
006ea4 add      x2, x2, #0x9b8                                 ; @m_bShowUnReadAsRedDot
006ea8 bl       #0x25e20                                      
006eac mov      x29, x29                                      
006eb0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006eb4 mov      x23, x0                                       
006eb8 bl       #0x23760                                      
006ebc mov      x22, x0                                       
006ec0 mov      x0, x23                                       
006ec4 bl       #0x232f4                                       ; _objc_release
006ec8 tbnz     w22, #0, #0x6f20                              
006ecc mov      x0, x27                                       
006ed0 mov      x1, x28                                       
006ed4 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006ed8 tbz      w0, #0, #0x6ef4                               
006edc mov      x0, x27                                       
006ee0 mov      x1, x28                                       
006ee4 bl       #0x7a34                                       
006ee8 ldr      w8, [sp, #0x44]                               
006eec cmp      w0, w8                                        
006ef0 b.ne     #0x6f20                                       
006ef4 mov      x0, x27                                       
006ef8 ldr      x1, [sp, #0x30]                               
006efc bl       #0x232e8                                       ; _objc_opt_respondsToSelector
006f00 tbz      w0, #0, #0x6f14                               
006f04 mov      x0, x27                                       
006f08 ldr      x1, [sp, #0x30]                               
006f0c bl       #0x7a34                                       
006f10 tbnz     w0, #0, #0x6f20                               
006f14 ldr      x0, [sp, #0x48]                               
006f18 mov      x2, x27                                       
006f1c bl       #0x23480                                      
006f20 add      x25, x25, #1                                  
006f24 cmp      x26, x25                                      
006f28 b.ne     #0x6df4                                       
006f2c b        #0x6fac                                       
006f30 mov      x22, x1                                       
006f34 str      x0, [sp]                                      
006f38 mov      x0, x23                                       
006f3c bl       #0x232f4                                       ; _objc_release
006f40 b        #0x6f74                                       
006f44 mov      x27, x1                                       
006f48 str      x0, [sp]                                      
006f4c mov      x0, x23                                       
006f50 bl       #0x232f4                                       ; _objc_release
006f54 b        #0x6f94                                       
006f58 mov      x27, x1                                       
006f5c str      x0, [sp]                                      
006f60 mov      x0, x23                                       
006f64 bl       #0x232f4                                       ; _objc_release
006f68 b        #0x6f94                                       
006f6c mov      x22, x1                                       
006f70 str      x0, [sp]                                      
006f74 cmp      w22, #1                                       
006f78 b.ne     #0x791c                                       
006f7c ldr      x0, [sp]                                      
006f80 bl       #0x2324c                                       ; _objc_begin_catch
006f84 bl       #0x23270                                       ; _objc_end_catch
006f88 b        #0x6ecc                                       
006f8c mov      x27, x1                                       
006f90 str      x0, [sp]                                      
006f94 cmp      w27, #1                                       
006f98 b.ne     #0x791c                                       
006f9c ldr      x0, [sp]                                      
006fa0 bl       #0x2324c                                       ; _objc_begin_catch
006fa4 bl       #0x23270                                       ; _objc_end_catch
006fa8 b        #0x6f20                                       
006fac add      x2, sp, #0x150                                
006fb0 add      x3, sp, #0x450                                
006fb4 ldr      x0, [sp, #0x38]                               
006fb8 mov      w4, #0x10                                     
006fbc bl       #0x239e0                                      
006fc0 mov      x26, x0                                       
006fc4 cbnz     x0, #0x6dc4                                   
006fc8 b        #0x7110                                       
006fcc adrp     x2, #0x34000                                  
006fd0 add      x2, x2, #0x938                                 ; @群聊
006fd4 ldr      x0, [sp, #0x28]                               
006fd8 bl       #0x24260                                      
006fdc cbz      w0, #0x7128                                   
006fe0 movi     v0.16b, #0                                    
006fe4 stp      q0, q0, [sp, #0x130]                          
006fe8 stp      q0, q0, [sp, #0x110]                          
006fec ldr      x0, [sp, #0x20]                               
006ff0 bl       #0x23300                                       ; _objc_retain
006ff4 mov      x19, x0                                       
006ff8 add      x2, sp, #0x110                                
006ffc add      x3, sp, #0x3d0                                
007000 mov      w4, #0x10                                     
007004 bl       #0x239e0                                      
007008 mov      x20, x0                                       
00700c cbz      x0, #0x7110                                   
007010 ldr      x8, [sp, #0x120]                              
007014 ldr      x22, [x8]                                     
007018 adrp     x21, #0x34000                                 
00701c add      x21, x21, #0xa38                               ; @@chatroom
007020 adrp     x24, #0x34000                                 
007024 add      x24, x24, #0xa58                               ; @chatroom_session_box
007028 mov      x23, #0                                       
00702c adrp     x8, #0x38000                                  
007030 ldr      x25, [x8, #0xf00]                              ; SEL m_bIsTop
007034 adrp     x8, #0x39000                                  
007038 ldr      x26, [x8, #0x590]                              ; SEL isHidden
00703c ldr      x8, [sp, #0x120]                              
007040 ldr      x8, [x8]                                       ; SEL wp_toggleUseGlobalCustomBadge:
007044 cmp      x8, x22                                       
007048 b.eq     #0x7054                                       
00704c mov      x0, x19                                       
007050 bl       #0x2327c                                       ; _objc_enumerationMutation
007054 ldr      x8, [sp, #0x118]                              
007058 ldr      x28, [x8, x23, lsl #3]                        
00705c mov      x0, x28                                       
007060 bl       #0x79a0                                       
007064 mov      x29, x29                                      
007068 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00706c mov      x27, x0                                       
007070 mov      x2, x21                                       
007074 bl       #0x23f60                                      
007078 tbnz     w0, #0, #0x708c                               
00707c mov      x0, x27                                       
007080 mov      x2, x24                                       
007084 bl       #0x24260                                      
007088 tbz      w0, #0, #0x70e0                               
00708c mov      x0, x28                                       
007090 mov      x1, x25                                       
007094 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
007098 tbz      w0, #0, #0x70b4                               
00709c mov      x0, x28                                       
0070a0 mov      x1, x25                                       
0070a4 bl       #0x7a34                                       
0070a8 ldr      w8, [sp, #0x44]                               
0070ac cmp      w0, w8                                        
0070b0 b.ne     #0x70e0                                       
0070b4 mov      x0, x28                                       
0070b8 mov      x1, x26                                       
0070bc bl       #0x232e8                                       ; _objc_opt_respondsToSelector
0070c0 tbz      w0, #0, #0x70d4                               
0070c4 mov      x0, x28                                       
0070c8 mov      x1, x26                                       
0070cc bl       #0x7a34                                       
0070d0 tbnz     w0, #0, #0x70e0                               
0070d4 ldr      x0, [sp, #0x48]                               
0070d8 mov      x2, x28                                       
0070dc bl       #0x23480                                      
0070e0 mov      x0, x27                                       
0070e4 bl       #0x232f4                                       ; _objc_release
0070e8 add      x23, x23, #1                                  
0070ec cmp      x20, x23                                      
0070f0 b.ne     #0x703c                                       
0070f4 add      x2, sp, #0x110                                
0070f8 add      x3, sp, #0x3d0                                
0070fc mov      x0, x19                                       
007100 mov      w4, #0x10                                     
007104 bl       #0x239e0                                      
007108 mov      x20, x0                                       
00710c cbnz     x0, #0x7028                                   
007110 ldr      x0, [sp, #0x20]                               
007114 bl       #0x232f4                                       ; _objc_release
007118 ldr      x0, [sp, #0x48]                               
00711c bl       #0x239a0                                      
007120 mov      x19, x0                                       
007124 b        #0x76d4                                       
007128 adrp     x8, #0x3a000                                  
00712c ldr      x0, [x8, #0x100]                               ; CLASS _OBJC_CLASS_$_NSUserDefaults
007130 bl       #0x25920                                      
007134 mov      x29, x29                                      
007138 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00713c mov      x19, x0                                       
007140 adrp     x2, #0x34000                                  
007144 add      x2, x2, #0xa78                                 ; @WPPulse_FilterCustomFromFriends
007148 bl       #0x23740                                      
00714c mov      x20, x0                                       
007150 mov      x0, x19                                       
007154 bl       #0x232f4                                       ; _objc_release
007158 cbz      w20, #0x72a4                                  
00715c mov      x24, #0                                       
007160 adrp     x2, #0x34000                                  
007164 add      x2, x2, #0x918                                 ; @好友
007168 ldr      x0, [sp, #0x28]                               
00716c bl       #0x24260                                      
007170 cbz      w0, #0x72a4                                   
007174 adrp     x8, #0x3a000                                  
007178 ldr      x0, [x8, #0x128]                               ; CLASS _OBJC_CLASS_$_NSMutableSet
00717c bl       #0x24b40                                      
007180 mov      x29, x29                                      
007184 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
007188 mov      x19, x0                                       
00718c movi     v0.16b, #0                                    
007190 stp      q0, q0, [sp, #0xf0]                           
007194 stp      q0, q0, [sp, #0xd0]                           
007198 ldr      x0, [sp, #0x38]                               
00719c bl       #0x23f00                                      
0071a0 mov      x29, x29                                      
0071a4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0071a8 mov      x20, x0                                       
0071ac add      x2, sp, #0xd0                                 
0071b0 add      x3, sp, #0x350                                
0071b4 mov      w4, #0x10                                     
0071b8 bl       #0x239e0                                      
0071bc mov      x24, x0                                       
0071c0 cbz      x0, #0x7284                                   
0071c4 ldr      x8, [sp, #0xe0]                               
0071c8 ldr      x27, [x8]                                     
0071cc adrp     x21, #0x34000                                 
0071d0 add      x21, x21, #0x9f8                               ; @isCustom
0071d4 adrp     x25, #0x34000                                 
0071d8 add      x25, x25, #0xa18                               ; @members
0071dc mov      x28, #0                                       
0071e0 ldr      x8, [sp, #0xe0]                               
0071e4 ldr      x8, [x8]                                      
0071e8 cmp      x8, x27                                       
0071ec b.eq     #0x71f8                                       
0071f0 mov      x0, x20                                       
0071f4 bl       #0x2327c                                       ; _objc_enumerationMutation
0071f8 ldr      x8, [sp, #0xd8]                               
0071fc ldr      x23, [x8, x28, lsl #3]                        
007200 mov      x0, x23                                       
007204 mov      x2, x21                                       
007208 bl       #0x246a0                                      
00720c mov      x29, x29                                      
007210 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
007214 mov      x22, x0                                       
007218 bl       #0x23760                                      
00721c mov      x26, x0                                       
007220 mov      x0, x22                                       
007224 bl       #0x232f4                                       ; _objc_release
007228 cbz      w26, #0x725c                                  
00722c mov      x0, x23                                       
007230 mov      x2, x25                                       
007234 bl       #0x246a0                                      
007238 mov      x29, x29                                      
00723c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
007240 mov      x22, x0                                       
007244 cbz      x0, #0x7254                                   
007248 mov      x0, x19                                       
00724c mov      x2, x22                                       
007250 bl       #0x234a0                                      
007254 mov      x0, x22                                       
007258 bl       #0x232f4                                       ; _objc_release
00725c add      x28, x28, #1                                  
007260 cmp      x24, x28                                      
007264 b.ne     #0x71e0                                       
007268 add      x2, sp, #0xd0                                 
00726c add      x3, sp, #0x350                                
007270 mov      x0, x20                                       
007274 mov      w4, #0x10                                     
007278 bl       #0x239e0                                      
00727c mov      x24, x0                                       
007280 cbnz     x0, #0x71dc                                   
007284 mov      x0, x20                                       
007288 bl       #0x232f4                                       ; _objc_release
00728c mov      x0, x19                                       
007290 bl       #0x239a0                                      
007294 mov      x24, x0                                       
007298 mov      x0, x19                                       
00729c bl       #0x232f4                                       ; _objc_release
0072a0 b        #0x72a8                                       
0072a4 mov      x24, #0                                       
0072a8 adrp     x2, #0x34000                                  
0072ac add      x2, x2, #0x918                                 ; @好友
0072b0 ldr      x0, [sp, #0x28]                               
0072b4 bl       #0x24260                                      
0072b8 cbz      w0, #0x7478                                   
0072bc movi     v0.16b, #0                                    
0072c0 stp      q0, q0, [sp, #0xb0]                           
0072c4 stp      q0, q0, [sp, #0x90]                           
0072c8 ldr      x0, [sp, #0x20]                               
0072cc bl       #0x23300                                       ; _objc_retain
0072d0 add      x2, sp, #0x90                                 
0072d4 add      x3, sp, #0x2d0                                
0072d8 str      x0, [sp, #0x30]                               
0072dc mov      w4, #0x10                                     
0072e0 bl       #0x239e0                                      
0072e4 mov      x19, x0                                       
0072e8 cbz      x0, #0x76b8                                   
0072ec ldr      x8, [sp, #0xa0]                               
0072f0 ldr      x23, [x8]                                     
0072f4 mov      x28, #0                                       
0072f8 adrp     x8, #0x38000                                  
0072fc ldr      x21, [x8, #0xf00]                              ; SEL m_bIsTop
007300 adrp     x8, #0x39000                                  
007304 ldr      x20, [x8, #0x590]                              ; SEL isHidden
007308 ldr      x8, [sp, #0xa0]                               
00730c ldr      x8, [x8]                                       ; SEL wp_toggleUseGlobalCustomBadge:
007310 cmp      x8, x23                                       
007314 b.eq     #0x7320                                       
007318 ldr      x0, [sp, #0x30]                               
00731c bl       #0x2327c                                       ; _objc_enumerationMutation
007320 ldr      x8, [sp, #0x98]                               
007324 ldr      x27, [x8, x28, lsl #3]                        
007328 mov      x0, x27                                       
00732c bl       #0x79a0                                       
007330 mov      x29, x29                                      
007334 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
007338 mov      x25, x0                                       
00733c ldr      x0, [sp, #0x38]                               
007340 mov      x2, x27                                       
007344 bl       #0x24220                                      
007348 cmp      x25, #0                                       
00734c csel     w8, wzr, w0, eq                               
007350 cmp      w8, #1                                        
007354 b.ne     #0x7384                                       
007358 mov      x0, x25                                       
00735c adrp     x2, #0x34000                                  
007360 add      x2, x2, #0xa38                                 ; @@chatroom
007364 bl       #0x23900                                      
007368 tbnz     w0, #0, #0x7388                               
00736c mov      x0, x25                                       
007370 adrp     x2, #0x34000                                  
007374 add      x2, x2, #0xa58                                 ; @chatroom_session_box
007378 bl       #0x24260                                      
00737c eor      w26, w0, #1                                   
007380 b        #0x738c                                       
007384 cbz      x25, #0x7438                                  
007388 mov      w26, #0                                       
00738c mov      x0, x25                                       
007390 adrp     x2, #0x34000                                  
007394 add      x2, x2, #0xa98                                 ; @filehelper
007398 bl       #0x24260                                      
00739c mov      x22, x0                                       
0073a0 mov      x0, x25                                       
0073a4 adrp     x2, #0x34000                                  
0073a8 add      x2, x2, #0xab8                                 ; @weixin
0073ac bl       #0x24260                                      
0073b0 orr      w8, w0, w22                                   
0073b4 eor      w8, w8, #1                                    
0073b8 and      w22, w8, w26                                  
0073bc cbz      x24, #0x73dc                                  
0073c0 mov      x0, x24                                       
0073c4 mov      x2, x25                                       
0073c8 bl       #0x238e0                                      
0073cc eor      w8, w0, #1                                    
0073d0 and      w8, w8, w22                                   
0073d4 tbnz     w8, #0, #0x73e0                               
0073d8 b        #0x7444                                       
0073dc tbz      w22, #0, #0x7444                              
0073e0 mov      x0, x27                                       
0073e4 mov      x1, x21                                       
0073e8 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
0073ec tbz      w0, #0, #0x7408                               
0073f0 mov      x0, x27                                       
0073f4 mov      x1, x21                                       
0073f8 bl       #0x7a34                                       
0073fc ldr      w8, [sp, #0x44]                               
007400 cmp      w0, w8                                        
007404 b.ne     #0x7444                                       
007408 mov      x0, x27                                       
00740c mov      x1, x20                                       
007410 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
007414 tbz      w0, #0, #0x7428                               
007418 mov      x0, x27                                       
00741c mov      x1, x20                                       
007420 bl       #0x7a34                                       
007424 tbnz     w0, #0, #0x7444                               
007428 ldr      x0, [sp, #0x48]                               
00742c mov      x2, x27                                       
007430 bl       #0x23480                                      
007434 b        #0x7444                                       
007438 cbz      x24, #0x7444                                  
00743c mov      w22, #0                                       
007440 b        #0x73c0                                       
007444 mov      x0, x25                                       
007448 bl       #0x232f4                                       ; _objc_release
00744c add      x28, x28, #1                                  
007450 cmp      x19, x28                                      
007454 b.ne     #0x7308                                       
007458 add      x2, sp, #0x90                                 
00745c add      x3, sp, #0x2d0                                
007460 ldr      x0, [sp, #0x30]                               
007464 mov      w4, #0x10                                     
007468 bl       #0x239e0                                      
00746c mov      x19, x0                                       
007470 cbnz     x0, #0x72f4                                   
007474 b        #0x76b8                                       
007478 adrp     x2, #0x34000                                  
00747c add      x2, x2, #0x958                                 ; @公众号
007480 ldr      x0, [sp, #0x28]                               
007484 bl       #0x24260                                      
007488 cbz      w0, #0x7730                                   
00748c movi     v0.16b, #0                                    
007490 stp      q0, q0, [sp, #0x70]                           
007494 stp      q0, q0, [sp, #0x50]                           
007498 ldr      x0, [sp, #0x20]                               
00749c bl       #0x23300                                       ; _objc_retain
0074a0 add      x2, sp, #0x50                                 
0074a4 add      x3, sp, #0x250                                
0074a8 str      x0, [sp, #0x38]                               
0074ac mov      w4, #0x10                                     
0074b0 bl       #0x239e0                                      
0074b4 mov      x25, x0                                       
0074b8 cbz      x0, #0x76b8                                   
0074bc ldr      x8, [sp, #0x60]                               
0074c0 ldr      x26, [x8]                                     
0074c4 mov      x19, #0                                       
0074c8 adrp     x8, #0x38000                                  
0074cc ldr      x20, [x8, #0xf08]                              ; SEL IsBrandContact:
0074d0 adrp     x8, #0x38000                                  
0074d4 ldr      x8, [x8, #0xf10]                               ; SEL isOfficialUserName:
0074d8 str      x8, [sp, #0x30]                               
0074dc adrp     x8, #0x38000                                  
0074e0 ldr      x9, [x8, #0xf00]                               ; SEL m_bIsTop
0074e4 adrp     x8, #0x39000                                  
0074e8 ldr      x8, [x8, #0x590]                               ; SEL isHidden
0074ec stp      x8, x9, [sp, #0x10]                           
0074f0 ldr      x8, [sp, #0x60]                               
0074f4 ldr      x8, [x8]                                       ; isHidden
0074f8 cmp      x8, x26                                       
0074fc b.eq     #0x7508                                       
007500 ldr      x0, [sp, #0x38]                               
007504 bl       #0x2327c                                       ; _objc_enumerationMutation
007508 ldr      x8, [sp, #0x58]                               
00750c ldr      x21, [x8, x19, lsl #3]                        
007510 mov      x0, x21                                       
007514 bl       #0x79a0                                       
007518 mov      x29, x29                                      
00751c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
007520 mov      x27, x0                                       
007524 cbz      x0, #0x7688                                   
007528 adrp     x0, #0x34000                                  
00752c add      x0, x0, #0xad8                                 ; @MMKernelUtil
007530 bl       #0x23150                                       ; _NSClassFromString
007534 mov      x22, x0                                       
007538 cbz      x0, #0x757c                                   
00753c mov      x0, x22                                       
007540 mov      x1, x20                                       
007544 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
007548 tbz      w0, #0, #0x757c                               
00754c mov      x0, x22                                       
007550 mov      x1, x20                                       
007554 mov      x2, x27                                       
007558 bl       #0x232b8                                       ; _objc_msgSend
00755c mov      x23, x0                                       
007560 b        #0x7580                                       
007564 str      x0, [sp]                                      
007568 cmp      w1, #1                                        
00756c b.ne     #0x78b0                                       
007570 ldr      x0, [sp]                                      
007574 bl       #0x2324c                                       ; _objc_begin_catch
007578 bl       #0x23270                                       ; _objc_end_catch
00757c mov      w23, #0                                       
007580 adrp     x0, #0x34000                                  
007584 add      x0, x0, #0xaf8                                 ; @PluginUtil
007588 bl       #0x23150                                       ; _NSClassFromString
00758c mov      x28, x0                                       
007590 cmp      x0, #0                                        
007594 csinc    w8, w23, wzr, ne                              
007598 tbnz     w8, #0, #0x75c4                               
00759c mov      x0, x28                                       
0075a0 ldr      x1, [sp, #0x30]                               
0075a4 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
0075a8 tbz      w0, #0, #0x75c4                               
0075ac mov      x0, x28                                       
0075b0 ldr      x1, [sp, #0x30]                               
0075b4 mov      x2, x27                                       
0075b8 bl       #0x232b8                                       ; _objc_msgSend
0075bc tbnz     w0, #0, #0x75c8                               
0075c0 b        #0x75e8                                       
0075c4 tbz      w23, #0, #0x75e8                              
0075c8 mov      w28, #1                                       
0075cc b        #0x75fc                                       
0075d0 str      x0, [sp]                                      
0075d4 cmp      w1, #1                                        
0075d8 b.ne     #0x78b0                                       
0075dc ldr      x0, [sp]                                      
0075e0 bl       #0x2324c                                       ; _objc_begin_catch
0075e4 bl       #0x23270                                       ; _objc_end_catch
0075e8 mov      x0, x27                                       
0075ec adrp     x2, #0x34000                                  
0075f0 add      x2, x2, #0xb18                                 ; @gh_
0075f4 bl       #0x23f40                                      
0075f8 mov      x28, x0                                       
0075fc mov      x0, x27                                       
007600 adrp     x2, #0x34000                                  
007604 add      x2, x2, #0xa58                                 ; @chatroom_session_box
007608 bl       #0x24260                                      
00760c tbnz     w0, #0, #0x7688                               
007610 mov      x0, x27                                       
007614 adrp     x2, #0x34000                                  
007618 add      x2, x2, #0xa38                                 ; @@chatroom
00761c bl       #0x23f60                                      
007620 orn      w8, w0, w28                                   
007624 tbnz     w8, #0, #0x7688                               
007628 mov      x0, x21                                       
00762c ldr      x1, [sp, #0x18]                               
007630 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
007634 tbz      w0, #0, #0x765c                               
007638 mov      x0, x21                                       
00763c ldr      x1, [sp, #0x18]                               
007640 bl       #0x7a34                                       
007644 ldr      w8, [sp, #0x44]                               
007648 eor      w8, w0, w8                                    
00764c eor      w8, w8, #1                                    
007650 and      w8, w8, w28                                   
007654 cmp      w8, #1                                        
007658 b.ne     #0x7688                                       
00765c mov      x0, x21                                       
007660 ldr      x1, [sp, #0x10]                               
007664 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
007668 tbz      w0, #0, #0x767c                               
00766c mov      x0, x21                                       
007670 ldr      x1, [sp, #0x10]                               
007674 bl       #0x7a34                                       
007678 tbnz     w0, #0, #0x7688                               
00767c ldr      x0, [sp, #0x48]                               
007680 mov      x2, x21                                       
007684 bl       #0x23480                                      
007688 mov      x0, x27                                       
00768c bl       #0x232f4                                       ; _objc_release
007690 add      x19, x19, #1                                  
007694 cmp      x25, x19                                      
007698 b.ne     #0x74f0                                       
00769c add      x2, sp, #0x50                                 
0076a0 add      x3, sp, #0x250                                
0076a4 ldr      x0, [sp, #0x38]                               
0076a8 mov      w4, #0x10                                     
0076ac bl       #0x239e0                                      
0076b0 mov      x25, x0                                       
0076b4 cbnz     x0, #0x74c4                                   
0076b8 ldr      x0, [sp, #0x20]                               
0076bc bl       #0x232f4                                       ; _objc_release
0076c0 ldr      x0, [sp, #0x48]                               
0076c4 bl       #0x239a0                                      
0076c8 mov      x19, x0                                       
0076cc mov      x0, x24                                       
0076d0 bl       #0x232f4                                       ; _objc_release
0076d4 ldr      x0, [sp, #0x48]                               
0076d8 bl       #0x232f4                                       ; _objc_release
0076dc ldr      x0, [sp, #8]                                  
0076e0 bl       #0x232f4                                       ; _objc_release
0076e4 ldr      x0, [sp, #0x28]                               
0076e8 bl       #0x232f4                                       ; _objc_release
0076ec ldr      x0, [sp, #0x20]                               
0076f0 bl       #0x232f4                                       ; _objc_release
0076f4 ldur     x8, [x29, #-0x60]                             
0076f8 adrp     x9, #0x34000                                  
0076fc ldr      x9, [x9, #0x170]                               ; ___stack_chk_guard
007700 ldr      x9, [x9]                                      
007704 cmp      x9, x8                                        
007708 b.ne     #0x773c                                       
00770c mov      x0, x19                                       
007710 add      sp, sp, #0x660                                
007714 ldp      x29, x30, [sp, #0x50]                         
007718 ldp      x20, x19, [sp, #0x40]                         
00771c ldp      x22, x21, [sp, #0x30]                         
007720 ldp      x24, x23, [sp, #0x20]                         
007724 ldp      x26, x25, [sp, #0x10]                         
007728 ldp      x28, x27, [sp], #0x60                         
00772c b        #0x23240                                       ; _objc_autoreleaseReturnValue
007730 adrp     x19, #0x34000                                 
007734 ldr      x19, [x19, #0x120]                             ; ___NSArray0__struct
007738 b        #0x76cc                                       
00773c bl       #0x231bc                                       ; ___stack_chk_fail
007740 b        #0x774c                                       
007744 b        #0x7840                                       
007748 b        #0x7878                                       
00774c str      x0, [sp]                                      
007750 b        #0x7884                                       
007754 b        #0x7800                                       
007758 b        #0x78a0                                       
00775c str      x0, [sp]                                      
007760 mov      x0, x19                                       
007764 bl       #0x232f4                                       ; _objc_release
007768 b        #0x7974                                       
00776c b        #0x7800                                       
007770 b        #0x78d0                                       
007774 str      x0, [sp]                                      
007778 b        #0x78fc                                       
00777c b        #0x78f0                                       
007780 str      x0, [sp]                                      
007784 b        #0x7904                                       
007788 str      x0, [sp]                                      
00778c b        #0x790c                                       
007790 b        #0x7918                                       
007794 str      x0, [sp]                                      
007798 mov      x0, x24                                       
00779c bl       #0x232f4                                       ; _objc_release
0077a0 b        #0x7974                                       
0077a4 str      x0, [sp]                                      
0077a8 mov      x0, x20                                       
0077ac bl       #0x232f4                                       ; _objc_release
0077b0 ldr      x0, [sp, #8]                                  
0077b4 bl       #0x232f4                                       ; _objc_release
0077b8 b        #0x7984                                       
0077bc str      x0, [sp]                                      
0077c0 ldr      x0, [sp, #8]                                  
0077c4 bl       #0x232f4                                       ; _objc_release
0077c8 b        #0x7984                                       
0077cc b        #0x7968                                       
0077d0 b        #0x7840                                       
0077d4 b        #0x7878                                       
0077d8 b        #0x7890                                       
0077dc str      x0, [sp]                                      
0077e0 ldr      x0, [sp, #8]                                  
0077e4 bl       #0x232f4                                       ; _objc_release
0077e8 b        #0x7984                                       
0077ec b        #0x7890                                       
0077f0 b        #0x7828                                       
0077f4 b        #0x78a0                                       
0077f8 b        #0x78ac                                       
0077fc b        #0x78d0                                       
007800 str      x0, [sp]                                      
007804 b        #0x7974                                       
007808 b        #0x78f0                                       
00780c b        #0x7918                                       
007810 str      x0, [sp]                                      
007814 mov      x0, x22                                       
007818 bl       #0x232f4                                       ; _objc_release
00781c b        #0x787c                                       
007820 b        #0x78ac                                       
007824 b        #0x7930                                       
007828 str      x0, [sp]                                      
00782c b        #0x7984                                       
007830 b        #0x7840                                       
007834 b        #0x7878                                       
007838 b        #0x7968                                       
00783c b        #0x78a0                                       
007840 str      x0, [sp]                                      
007844 b        #0x78b8                                       
007848 str      x0, [sp]                                      
00784c mov      x0, x22                                       
007850 bl       #0x232f4                                       ; _objc_release
007854 b        #0x787c                                       
007858 b        #0x78ac                                       
00785c b        #0x78e0                                       
007860 str      x0, [sp]                                      
007864 mov      x0, x24                                       
007868 bl       #0x232f4                                       ; _objc_release
00786c b        #0x7894                                       
007870 b        #0x7918                                       
007874 b        #0x7950                                       
007878 str      x0, [sp]                                      
00787c mov      x0, x20                                       
007880 bl       #0x232f4                                       ; _objc_release
007884 mov      x0, x19                                       
007888 bl       #0x232f4                                       ; _objc_release
00788c b        #0x7974                                       
007890 str      x0, [sp]                                      
007894 mov      x0, x20                                       
007898 bl       #0x232f4                                       ; _objc_release
00789c b        #0x7984                                       
0078a0 str      x0, [sp]                                      
0078a4 b        #0x793c                                       
0078a8 b        #0x78d0                                       
0078ac str      x0, [sp]                                      
0078b0 mov      x0, x27                                       
0078b4 bl       #0x232f4                                       ; _objc_release
0078b8 ldr      x0, [sp, #0x38]                               
0078bc bl       #0x232f4                                       ; _objc_release
0078c0 mov      x0, x24                                       
0078c4 bl       #0x232f4                                       ; _objc_release
0078c8 b        #0x7974                                       
0078cc b        #0x78f0                                       
0078d0 str      x0, [sp]                                      
0078d4 b        #0x795c                                       
0078d8 b        #0x7918                                       
0078dc b        #0x78e0                                       
0078e0 str      x0, [sp]                                      
0078e4 mov      x0, x26                                       
0078e8 bl       #0x232f4                                       ; _objc_release
0078ec b        #0x78f4                                       
0078f0 str      x0, [sp]                                      
0078f4 mov      x0, x19                                       
0078f8 bl       #0x232f4                                       ; _objc_release
0078fc mov      x0, x24                                       
007900 bl       #0x232f4                                       ; _objc_release
007904 ldr      x0, [sp, #0x48]                               
007908 bl       #0x232f4                                       ; _objc_release
00790c ldr      x0, [sp, #8]                                  
007910 bl       #0x232f4                                       ; _objc_release
007914 b        #0x7984                                       
007918 str      x0, [sp]                                      
00791c ldr      x0, [sp, #0x38]                               
007920 bl       #0x232f4                                       ; _objc_release
007924 b        #0x7974                                       
007928 b        #0x7968                                       
00792c b        #0x7968                                       
007930 str      x0, [sp]                                      
007934 mov      x0, x25                                       
007938 bl       #0x232f4                                       ; _objc_release
00793c ldr      x0, [sp, #0x30]                               
007940 bl       #0x232f4                                       ; _objc_release
007944 mov      x0, x24                                       
007948 bl       #0x232f4                                       ; _objc_release
00794c b        #0x7974                                       
007950 str      x0, [sp]                                      
007954 mov      x0, x27                                       
007958 bl       #0x232f4                                       ; _objc_release
00795c mov      x0, x19                                       
007960 bl       #0x232f4                                       ; _objc_release
007964 b        #0x7974                                       
007968 str      x0, [sp]                                      
00796c mov      x0, x19                                       
007970 bl       #0x232f4                                       ; _objc_release
007974 ldr      x0, [sp, #0x48]                               
007978 bl       #0x232f4                                       ; _objc_release
00797c ldr      x0, [sp, #8]                                  
007980 bl       #0x232f4                                       ; _objc_release
007984 ldr      x0, [sp, #0x28]                               
007988 bl       #0x232f4                                       ; _objc_release
00798c ldr      x0, [sp, #0x20]                               
007990 bl       #0x232f4                                       ; _objc_release
007994 ldr      x0, [sp]                                      
007998 bl       #0x231b0                                       ; __Unwind_Resume
00799c bl       #0x231b0                                       ; __Unwind_Resume
0079a0 stp      x20, x19, [sp, #-0x20]!                       
0079a4 stp      x29, x30, [sp, #0x10]                         
0079a8 add      x29, sp, #0x10                                
0079ac bl       #0x23300                                       ; _objc_retain
0079b0 mov      x19, x0                                       
0079b4 cbz      x0, #0x7a04                                   
0079b8 adrp     x8, #0x39000                                  
0079bc ldr      x1, [x8, #0x170]                               ; SEL m_nsUserName
0079c0 mov      x0, x19                                       
0079c4 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
0079c8 tbz      w0, #0, #0x7a04                               
0079cc adrp     x2, #0x34000                                  
0079d0 add      x2, x2, #0xc18                                 ; @m_nsUserName
0079d4 mov      x0, x19                                       
0079d8 bl       #0x25e20                                      
0079dc mov      x29, x29                                      
0079e0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0079e4 mov      x20, x0                                       
0079e8 b        #0x7a08                                       
0079ec mov      x20, x0                                       
0079f0 cmp      w1, #1                                        
0079f4 b.ne     #0x7a24                                       
0079f8 mov      x0, x20                                       
0079fc bl       #0x2324c                                       ; _objc_begin_catch
007a00 bl       #0x23270                                       ; _objc_end_catch
007a04 mov      x20, #0                                       
007a08 mov      x0, x19                                       
007a0c bl       #0x232f4                                       ; _objc_release
007a10 mov      x0, x20                                       
007a14 ldp      x29, x30, [sp, #0x10]                         
007a18 ldp      x20, x19, [sp], #0x20                         
007a1c b        #0x23240                                       ; _objc_autoreleaseReturnValue
007a20 mov      x20, x0                                       
007a24 mov      x0, x19                                       
007a28 bl       #0x232f4                                       ; _objc_release
007a2c mov      x0, x20                                       
007a30 bl       #0x231b0                                       ; __Unwind_Resume
007a34 stp      x20, x19, [sp, #-0x20]!                       
007a38 stp      x29, x30, [sp, #0x10]                         
007a3c add      x29, sp, #0x10                                
007a40 mov      x20, x1                                       
007a44 bl       #0x23300                                       ; _objc_retain
007a48 mov      x19, x0                                       
007a4c cbz      x0, #0x7a8c                                   
007a50 mov      x0, x19                                       
007a54 mov      x1, x20                                       
007a58 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
007a5c tbz      w0, #0, #0x7a8c                               
007a60 mov      x0, x19                                       
007a64 mov      x1, x20                                       
007a68 bl       #0x232b8                                       ; _objc_msgSend
007a6c mov      x20, x0                                       
007a70 b        #0x7a90                                       
007a74 mov      x20, x0                                       
007a78 cmp      w1, #1                                        
007a7c b.ne     #0x7aac                                       
007a80 mov      x0, x20                                       
007a84 bl       #0x2324c                                       ; _objc_begin_catch
007a88 bl       #0x23270                                       ; _objc_end_catch
007a8c mov      w20, #0                                       
007a90 mov      x0, x19                                       
007a94 bl       #0x232f4                                       ; _objc_release
007a98 mov      x0, x20                                       
007a9c ldp      x29, x30, [sp, #0x10]                         
007aa0 ldp      x20, x19, [sp], #0x20                         
007aa4 ret                                                    
007aa8 mov      x20, x0                                       
007aac mov      x0, x19                                       
007ab0 bl       #0x232f4                                       ; _objc_release
007ab4 mov      x0, x20                                       
007ab8 bl       #0x231b0                                       ; __Unwind_Resume
