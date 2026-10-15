
WPMaterialSelectVC.viewDidLoad:
00a4ac sub      sp, sp, #0x160                                
00a4b0 stp      x28, x27, [sp, #0x100]                        
00a4b4 stp      x26, x25, [sp, #0x110]                        
00a4b8 stp      x24, x23, [sp, #0x120]                        
00a4bc stp      x22, x21, [sp, #0x130]                        
00a4c0 stp      x20, x19, [sp, #0x140]                        
00a4c4 stp      x29, x30, [sp, #0x150]                        
00a4c8 add      x29, sp, #0x150                               
00a4cc adrp     x8, #0x34000                                  
00a4d0 ldr      x8, [x8, #0x170]                               ; ___stack_chk_guard
00a4d4 ldr      x8, [x8]                                      
00a4d8 stur     x8, [x29, #-0x60]                             
00a4dc adrp     x8, #0x3a000                                  
00a4e0 ldr      x8, [x8, #0x298]                               ; WPMaterialSelectVC
00a4e4 str      x0, [sp, #0x18]                               
00a4e8 stp      x0, x8, [sp, #0x60]                           
00a4ec adrp     x8, #0x38000                                  
00a4f0 ldr      x1, [x8, #0xf20]                               ; SEL viewDidLoad
00a4f4 add      x0, sp, #0x60                                 
00a4f8 bl       #0x232c4                                       ; _objc_msgSendSuper2
00a4fc ldr      x0, [sp, #0x18]                               
00a500 bl       #0x242a0                                      
00a504 adrp     x8, #0x34000                                  
00a508 add      x8, x8, #0xd18                                 ; @选择悬浮图标素材
00a50c adrp     x9, #0x34000                                  
00a510 add      x9, x9, #0xcf8                                 ; @选择全局角标素材
00a514 cmp      w0, #0                                        
00a518 csel     x2, x9, x8, ne                                
00a51c ldr      x0, [sp, #0x18]                               
00a520 bl       #0x255c0                                      
00a524 adrp     x8, #0x3a000                                  
00a528 ldr      x0, [x8, #0x130]                               ; CLASS _OBJC_CLASS_$_UIColor
00a52c bl       #0x25ac0                                      
00a530 mov      x29, x29                                      
00a534 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a538 mov      x21, x0                                       
00a53c ldr      x0, [sp, #0x18]                               
00a540 bl       #0x25e40                                      
00a544 mov      x29, x29                                      
00a548 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a54c mov      x19, x0                                       
00a550 mov      x2, x21                                       
00a554 bl       #0x24c00                                      
00a558 mov      x0, x19                                       
00a55c bl       #0x232f4                                       ; _objc_release
00a560 mov      x0, x21                                       
00a564 bl       #0x232f4                                       ; _objc_release
00a568 adrp     x8, #0x3a000                                  
00a56c ldr      x0, [x8, #0x138]                               ; CLASS _OBJC_CLASS_$_UIBarButtonItem
00a570 bl       #0x23210                                       ; _objc_alloc
00a574 adrp     x8, #0x38000                                  
00a578 ldr      x5, [x8, #0xf28]                               ; SEL cancel
00a57c adrp     x2, #0x34000                                  
00a580 add      x2, x2, #0xb58                                 ; @取消
00a584 mov      x3, #0                                        
00a588 ldr      x4, [sp, #0x18]                               
00a58c bl       #0x24180                                      
00a590 mov      x21, x0                                       
00a594 ldr      x0, [sp, #0x18]                               
00a598 bl       #0x245a0                                      
00a59c mov      x29, x29                                      
00a5a0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a5a4 mov      x19, x0                                       
00a5a8 mov      x2, x21                                       
00a5ac bl       #0x250c0                                      
00a5b0 mov      x0, x19                                       
00a5b4 bl       #0x232f4                                       ; _objc_release
00a5b8 mov      x0, x21                                       
00a5bc bl       #0x232f4                                       ; _objc_release
00a5c0 bl       #0x2315c                                       ; _NSHomeDirectory
00a5c4 mov      x29, x29                                      
00a5c8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a5cc mov      x21, x0                                       
00a5d0 adrp     x2, #0x34000                                  
00a5d4 add      x2, x2, #0xd38                                 ; @Library/分组素材
00a5d8 bl       #0x25960                                      
00a5dc mov      x29, x29                                      
00a5e0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a5e4 str      x0, [sp, #0x10]                               
00a5e8 mov      x0, x21                                       
00a5ec bl       #0x232f4                                       ; _objc_release
00a5f0 adrp     x8, #0x3a000                                  
00a5f4 ldr      x0, [x8, #0x180]                               ; CLASS _OBJC_CLASS_$_NSFileManager
00a5f8 bl       #0x23b20                                      
00a5fc mov      x29, x29                                      
00a600 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a604 mov      x21, x0                                       
00a608 ldr      x2, [sp, #0x10]                               
00a60c mov      x3, #0                                        
00a610 bl       #0x23940                                      
00a614 mov      x29, x29                                      
00a618 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a61c str      x0, [sp, #8]                                  
00a620 mov      x0, x21                                       
00a624 bl       #0x232f4                                       ; _objc_release
00a628 adrp     x8, #0x3a000                                  
00a62c ldr      x0, [x8, #0x108]                               ; CLASS _OBJC_CLASS_$_NSMutableArray
00a630 bl       #0x23680                                      
00a634 mov      x29, x29                                      
00a638 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a63c mov      x22, x0                                       
00a640 movi     v0.16b, #0                                    
00a644 stp      q0, q0, [sp, #0x40]                           
00a648 stp      q0, q0, [sp, #0x20]                           
00a64c ldr      x0, [sp, #8]                                  
00a650 bl       #0x23300                                       ; _objc_retain
00a654 mov      x23, x0                                       
00a658 add      x2, sp, #0x20                                 
00a65c add      x3, sp, #0x70                                 
00a660 mov      w4, #0x10                                     
00a664 bl       #0x239e0                                      
00a668 mov      x25, x0                                       
00a66c cbz      x0, #0xa730                                   
00a670 ldr      x8, [sp, #0x30]                               
00a674 ldr      x19, [x8]                                     
00a678 adrp     x24, #0x34000                                 
00a67c add      x24, x24, #0xd58                               ; @.png
00a680 adrp     x26, #0x34000                                 
00a684 add      x26, x26, #0xd78                               ; @.jpg
00a688 adrp     x27, #0x34000                                 
00a68c add      x27, x27, #0xd98                               ; @.jpeg
00a690 mov      x20, #0                                       
00a694 ldr      x8, [sp, #0x30]                               
00a698 ldr      x8, [x8]                                      
00a69c cmp      x8, x19                                       
00a6a0 b.eq     #0xa6ac                                       
00a6a4 mov      x0, x23                                       
00a6a8 bl       #0x2327c                                       ; _objc_enumerationMutation
00a6ac ldr      x8, [sp, #0x28]                               
00a6b0 ldr      x21, [x8, x20, lsl #3]                        
00a6b4 mov      x0, x21                                       
00a6b8 bl       #0x24440                                      
00a6bc mov      x29, x29                                      
00a6c0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a6c4 mov      x28, x0                                       
00a6c8 mov      x2, x24                                       
00a6cc bl       #0x23f60                                      
00a6d0 tbnz     w0, #0, #0xa6f4                               
00a6d4 mov      x0, x28                                       
00a6d8 mov      x2, x26                                       
00a6dc bl       #0x23f60                                      
00a6e0 tbnz     w0, #0, #0xa6f4                               
00a6e4 mov      x0, x28                                       
00a6e8 mov      x2, x27                                       
00a6ec bl       #0x23f60                                      
00a6f0 cbz      w0, #0xa700                                   
00a6f4 mov      x0, x22                                       
00a6f8 mov      x2, x21                                       
00a6fc bl       #0x23480                                      
00a700 mov      x0, x28                                       
00a704 bl       #0x232f4                                       ; _objc_release
00a708 add      x20, x20, #1                                  
00a70c cmp      x25, x20                                      
00a710 b.ne     #0xa694                                       
00a714 add      x2, sp, #0x20                                 
00a718 add      x3, sp, #0x70                                 
00a71c mov      x0, x23                                       
00a720 mov      w4, #0x10                                     
00a724 bl       #0x239e0                                      
00a728 mov      x25, x0                                       
00a72c cbnz     x0, #0xa690                                   
00a730 mov      x0, x23                                       
00a734 bl       #0x232f4                                       ; _objc_release
00a738 adrp     x2, #0x34000                                  
00a73c add      x2, x2, #0xdb8                                 ; @[恢复默认/清除素材]
00a740 mov      x0, x22                                       
00a744 mov      x3, #0                                        
00a748 bl       #0x241a0                                      
00a74c ldr      x19, [sp, #0x18]                              
00a750 mov      x0, x19                                       
00a754 mov      x2, x22                                       
00a758 bl       #0x24ee0                                      
00a75c adrp     x8, #0x3a000                                  
00a760 ldr      x0, [x8, #0x160]                               ; CLASS _OBJC_CLASS_$_UITableView
00a764 bl       #0x23210                                       ; _objc_alloc
00a768 mov      x21, x0                                       
00a76c mov      x0, x19                                       
00a770 bl       #0x25e40                                      
00a774 mov      x29, x29                                      
00a778 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a77c mov      x24, x0                                       
00a780 bl       #0x23780                                      
00a784 mov      x0, x21                                       
00a788 mov      x2, #0                                        
00a78c bl       #0x240a0                                      
00a790 mov      x21, x0                                       
00a794 ldr      x0, [sp, #0x18]                               
00a798 mov      x2, x21                                       
00a79c bl       #0x254e0                                      
00a7a0 mov      x0, x21                                       
00a7a4 bl       #0x232f4                                       ; _objc_release
00a7a8 mov      x0, x24                                       
00a7ac bl       #0x232f4                                       ; _objc_release
00a7b0 ldr      x0, [sp, #0x18]                               
00a7b4 bl       #0x25c20                                      
00a7b8 mov      x29, x29                                      
00a7bc bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a7c0 mov      x21, x0                                       
00a7c4 mov      w2, #0x12                                     
00a7c8 bl       #0x24be0                                      
00a7cc mov      x0, x21                                       
00a7d0 bl       #0x232f4                                       ; _objc_release
00a7d4 ldr      x19, [sp, #0x18]                              
00a7d8 mov      x0, x19                                       
00a7dc bl       #0x25c20                                      
00a7e0 mov      x29, x29                                      
00a7e4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a7e8 mov      x21, x0                                       
00a7ec mov      x2, x19                                       
00a7f0 bl       #0x24e20                                      
00a7f4 mov      x0, x21                                       
00a7f8 bl       #0x232f4                                       ; _objc_release
00a7fc ldr      x19, [sp, #0x18]                              
00a800 mov      x0, x19                                       
00a804 bl       #0x25c20                                      
00a808 mov      x29, x29                                      
00a80c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a810 mov      x21, x0                                       
00a814 mov      x2, x19                                       
00a818 bl       #0x24e00                                      
00a81c mov      x0, x21                                       
00a820 bl       #0x232f4                                       ; _objc_release
00a824 ldr      x19, [sp, #0x18]                              
00a828 mov      x0, x19                                       
00a82c bl       #0x25e40                                      
00a830 mov      x29, x29                                      
00a834 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a838 mov      x24, x0                                       
00a83c mov      x0, x19                                       
00a840 bl       #0x25c20                                      
00a844 mov      x29, x29                                      
00a848 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a84c mov      x21, x0                                       
00a850 mov      x0, x24                                       
00a854 mov      x2, x21                                       
00a858 bl       #0x234e0                                      
00a85c mov      x0, x21                                       
00a860 bl       #0x232f4                                       ; _objc_release
00a864 mov      x0, x24                                       
00a868 bl       #0x232f4                                       ; _objc_release
00a86c mov      x0, x22                                       
00a870 bl       #0x232f4                                       ; _objc_release
00a874 mov      x0, x23                                       
00a878 bl       #0x232f4                                       ; _objc_release
00a87c ldr      x0, [sp, #0x10]                               
00a880 bl       #0x232f4                                       ; _objc_release
00a884 ldur     x8, [x29, #-0x60]                             
00a888 adrp     x9, #0x34000                                  
00a88c ldr      x9, [x9, #0x170]                               ; ___stack_chk_guard
00a890 ldr      x9, [x9]                                      
00a894 cmp      x9, x8                                        
00a898 b.ne     #0xa8bc                                       
00a89c ldp      x29, x30, [sp, #0x150]                        
00a8a0 ldp      x20, x19, [sp, #0x140]                        
00a8a4 ldp      x22, x21, [sp, #0x130]                        
00a8a8 ldp      x24, x23, [sp, #0x120]                        
00a8ac ldp      x26, x25, [sp, #0x110]                        
00a8b0 ldp      x28, x27, [sp, #0x100]                        
00a8b4 add      sp, sp, #0x160                                
00a8b8 ret                                                    
00a8bc bl       #0x231bc                                       ; ___stack_chk_fail
00a8c0 mov      x20, x0                                       
00a8c4 mov      x0, x21                                       
00a8c8 bl       #0x232f4                                       ; _objc_release
00a8cc b        #0xa8d4                                       
00a8d0 mov      x20, x0                                       
00a8d4 mov      x0, x24                                       
00a8d8 bl       #0x232f4                                       ; _objc_release
00a8dc b        #0xa9b0                                       
00a8e0 mov      x20, x0                                       
00a8e4 mov      x0, x21                                       
00a8e8 bl       #0x232f4                                       ; _objc_release
00a8ec b        #0xa9b0                                       
00a8f0 mov      x20, x0                                       
00a8f4 mov      x0, x21                                       
00a8f8 bl       #0x232f4                                       ; _objc_release
00a8fc b        #0xa9b0                                       
00a900 mov      x20, x0                                       
00a904 mov      x0, x21                                       
00a908 bl       #0x232f4                                       ; _objc_release
00a90c b        #0xa9b0                                       
00a910 mov      x20, x0                                       
00a914 mov      x0, x21                                       
00a918 bl       #0x232f4                                       ; _objc_release
00a91c b        #0xa978                                       
00a920 b        #0xa994                                       
00a924 mov      x20, x0                                       
00a928 b        #0xa9b8                                       
00a92c mov      x20, x0                                       
00a930 mov      x0, x21                                       
00a934 bl       #0x232f4                                       ; _objc_release
00a938 b        #0xa9c0                                       
00a93c mov      x20, x0                                       
00a940 b        #0xa9c0                                       
00a944 b        #0xa96c                                       
00a948 mov      x20, x0                                       
00a94c mov      x0, x19                                       
00a950 bl       #0x232f4                                       ; _objc_release
00a954 b        #0xa9c4                                       
00a958 b        #0xa96c                                       
00a95c mov      x20, x0                                       
00a960 mov      x0, x19                                       
00a964 bl       #0x232f4                                       ; _objc_release
00a968 b        #0xa9c4                                       
00a96c mov      x20, x0                                       
00a970 b        #0xa9c4                                       
00a974 mov      x20, x0                                       
00a978 mov      x0, x24                                       
00a97c bl       #0x232f4                                       ; _objc_release
00a980 b        #0xa9b0                                       
00a984 mov      x20, x0                                       
00a988 b        #0xa9b0                                       
00a98c b        #0xa994                                       
00a990 b        #0xa994                                       
00a994 mov      x20, x0                                       
00a998 b        #0xa9a8                                       
00a99c mov      x20, x0                                       
00a9a0 mov      x0, x28                                       
00a9a4 bl       #0x232f4                                       ; _objc_release
00a9a8 mov      x0, x23                                       
00a9ac bl       #0x232f4                                       ; _objc_release
00a9b0 mov      x0, x22                                       
00a9b4 bl       #0x232f4                                       ; _objc_release
00a9b8 ldr      x0, [sp, #8]                                  
00a9bc bl       #0x232f4                                       ; _objc_release
00a9c0 ldr      x21, [sp, #0x10]                              
00a9c4 mov      x0, x21                                       
00a9c8 bl       #0x232f4                                       ; _objc_release
00a9cc b        #0xa9d4                                       
00a9d0 mov      x20, x0                                       
00a9d4 mov      x0, x20                                       
00a9d8 bl       #0x231b0                                       ; __Unwind_Resume

WPMaterialSelectVC.tableView:numberOfRowsInSection::
00a9dc stp      x20, x19, [sp, #-0x20]!                       
00a9e0 stp      x29, x30, [sp, #0x10]                         
00a9e4 add      x29, sp, #0x10                                
00a9e8 bl       #0x23d20                                      
00a9ec mov      x29, x29                                      
00a9f0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00a9f4 mov      x19, x0                                       
00a9f8 bl       #0x239c0                                      
00a9fc mov      x20, x0                                       
00aa00 mov      x0, x19                                       
00aa04 bl       #0x232f4                                       ; _objc_release
00aa08 mov      x0, x20                                       
00aa0c ldp      x29, x30, [sp, #0x10]                         
00aa10 ldp      x20, x19, [sp], #0x20                         
00aa14 ret                                                    
00aa18 mov      x20, x0                                       
00aa1c mov      x0, x19                                       
00aa20 bl       #0x232f4                                       ; _objc_release
00aa24 mov      x0, x20                                       
00aa28 bl       #0x231b0                                       ; __Unwind_Resume

WPMaterialSelectVC.tableView:cellForRowAtIndexPath::
00aa2c stp      x26, x25, [sp, #-0x50]!                       
00aa30 stp      x24, x23, [sp, #0x10]                         
00aa34 stp      x22, x21, [sp, #0x20]                         
00aa38 stp      x20, x19, [sp, #0x30]                         
00aa3c stp      x29, x30, [sp, #0x40]                         
00aa40 add      x29, sp, #0x40                                
00aa44 mov      x20, x2                                       
00aa48 mov      x21, x0                                       
00aa4c mov      x0, x3                                        
00aa50 bl       #0x23300                                       ; _objc_retain
00aa54 mov      x19, x0                                       
00aa58 adrp     x2, #0x34000                                  
00aa5c add      x2, x2, #0xdd8                                 ; @MaterialCell
00aa60 mov      x0, x20                                       
00aa64 bl       #0x23b60                                      
00aa68 mov      x29, x29                                      
00aa6c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00aa70 mov      x20, x0                                       
00aa74 cbnz     x0, #0xaa98                                   
00aa78 adrp     x8, #0x3a000                                  
00aa7c ldr      x0, [x8, #0x170]                               ; CLASS _OBJC_CLASS_$_UITableViewCell
00aa80 bl       #0x23210                                       ; _objc_alloc
00aa84 adrp     x3, #0x34000                                  
00aa88 add      x3, x3, #0xdd8                                 ; @MaterialCell
00aa8c mov      x2, #0                                        
00aa90 bl       #0x24140                                      
00aa94 mov      x20, x0                                       
00aa98 mov      x0, x21                                       
00aa9c bl       #0x23d20                                      
00aaa0 mov      x29, x29                                      
00aaa4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00aaa8 mov      x22, x0                                       
00aaac mov      x0, x19                                       
00aab0 bl       #0x24a00                                      
00aab4 mov      x2, x0                                        
00aab8 mov      x0, x22                                       
00aabc bl       #0x24660                                      
00aac0 mov      x29, x29                                      
00aac4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00aac8 mov      x21, x0                                       
00aacc mov      x0, x22                                       
00aad0 bl       #0x232f4                                       ; _objc_release
00aad4 mov      x0, x20                                       
00aad8 bl       #0x25ca0                                      
00aadc mov      x29, x29                                      
00aae0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00aae4 mov      x22, x0                                       
00aae8 mov      x2, x21                                       
00aaec bl       #0x25540                                      
00aaf0 mov      x0, x22                                       
00aaf4 bl       #0x232f4                                       ; _objc_release
00aaf8 mov      x0, x19                                       
00aafc bl       #0x24a00                                      
00ab00 mov      x8, x0                                        
00ab04 adrp     x9, #0x3a000                                  
00ab08 ldr      x0, [x9, #0x130]                               ; CLASS _OBJC_CLASS_$_UIColor
00ab0c cbz      x8, #0xac50                                   
00ab10 bl       #0x24320                                      
00ab14 mov      x29, x29                                      
00ab18 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ab1c mov      x22, x0                                       
00ab20 mov      x0, x20                                       
00ab24 bl       #0x25ca0                                      
00ab28 mov      x29, x29                                      
00ab2c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ab30 mov      x24, x0                                       
00ab34 mov      x2, x22                                       
00ab38 bl       #0x25580                                      
00ab3c mov      x0, x24                                       
00ab40 bl       #0x232f4                                       ; _objc_release
00ab44 mov      x0, x22                                       
00ab48 bl       #0x232f4                                       ; _objc_release
00ab4c bl       #0x2315c                                       ; _NSHomeDirectory
00ab50 mov      x29, x29                                      
00ab54 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ab58 mov      x24, x0                                       
00ab5c adrp     x2, #0x34000                                  
00ab60 add      x2, x2, #0xd38                                 ; @Library/分组素材
00ab64 bl       #0x25960                                      
00ab68 mov      x29, x29                                      
00ab6c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ab70 mov      x25, x0                                       
00ab74 mov      x2, x21                                       
00ab78 bl       #0x25960                                      
00ab7c mov      x29, x29                                      
00ab80 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ab84 mov      x22, x0                                       
00ab88 mov      x0, x25                                       
00ab8c bl       #0x232f4                                       ; _objc_release
00ab90 mov      x0, x24                                       
00ab94 bl       #0x232f4                                       ; _objc_release
00ab98 adrp     x8, #0x3a000                                  
00ab9c ldr      x0, [x8, #0x188]                               ; CLASS _OBJC_CLASS_$_UIImage
00aba0 mov      x2, x22                                       
00aba4 bl       #0x23fc0                                      
00aba8 mov      x29, x29                                      
00abac bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00abb0 mov      x24, x0                                       
00abb4 adrp     x8, #0x3a000                                  
00abb8 ldr      x0, [x8, #0x190]                               ; CLASS _OBJC_CLASS_$_UIScreen
00abbc bl       #0x244e0                                      
00abc0 mov      x29, x29                                      
00abc4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00abc8 mov      x25, x0                                       
00abcc bl       #0x24a40                                      
00abd0 fmov     d2, d0                                        
00abd4 fmov     d0, #30.00000000                              
00abd8 fmov     d1, #30.00000000                              
00abdc mov      w0, #0                                        
00abe0 bl       #0x23174                                       ; _UIGraphicsBeginImageContextWithOptions
00abe4 mov      x0, x25                                       
00abe8 bl       #0x232f4                                       ; _objc_release
00abec fmov     d0, xzr                                       
00abf0 fmov     d1, xzr                                       
00abf4 fmov     d2, #30.00000000                              
00abf8 fmov     d3, #30.00000000                              
00abfc mov      x0, x24                                       
00ac00 bl       #0x23c40                                      
00ac04 bl       #0x2318c                                       ; _UIGraphicsGetImageFromCurrentImageContext
00ac08 mov      x29, x29                                      
00ac0c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ac10 mov      x25, x0                                       
00ac14 bl       #0x23180                                       ; _UIGraphicsEndImageContext
00ac18 mov      x0, x20                                       
00ac1c bl       #0x23fa0                                      
00ac20 mov      x29, x29                                      
00ac24 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ac28 mov      x23, x0                                       
00ac2c mov      x2, x25                                       
00ac30 bl       #0x25020                                      
00ac34 mov      x0, x23                                       
00ac38 bl       #0x232f4                                       ; _objc_release
00ac3c mov      x0, x25                                       
00ac40 bl       #0x232f4                                       ; _objc_release
00ac44 mov      x0, x24                                       
00ac48 bl       #0x232f4                                       ; _objc_release
00ac4c b        #0xaca8                                       
00ac50 bl       #0x25bc0                                      
00ac54 mov      x29, x29                                      
00ac58 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ac5c mov      x22, x0                                       
00ac60 mov      x0, x20                                       
00ac64 bl       #0x25ca0                                      
00ac68 mov      x29, x29                                      
00ac6c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ac70 mov      x24, x0                                       
00ac74 mov      x2, x22                                       
00ac78 bl       #0x25580                                      
00ac7c mov      x0, x24                                       
00ac80 bl       #0x232f4                                       ; _objc_release
00ac84 mov      x0, x22                                       
00ac88 bl       #0x232f4                                       ; _objc_release
00ac8c mov      x0, x20                                       
00ac90 bl       #0x23fa0                                      
00ac94 mov      x29, x29                                      
00ac98 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ac9c mov      x22, x0                                       
00aca0 mov      x2, #0                                        
00aca4 bl       #0x25020                                      
00aca8 mov      x0, x22                                       
00acac bl       #0x232f4                                       ; _objc_release
00acb0 mov      x0, x21                                       
00acb4 bl       #0x232f4                                       ; _objc_release
00acb8 mov      x0, x19                                       
00acbc bl       #0x232f4                                       ; _objc_release
00acc0 mov      x0, x20                                       
00acc4 ldp      x29, x30, [sp, #0x40]                         
00acc8 ldp      x20, x19, [sp, #0x30]                         
00accc ldp      x22, x21, [sp, #0x20]                         
00acd0 ldp      x24, x23, [sp, #0x10]                         
00acd4 ldp      x26, x25, [sp], #0x50                         
00acd8 b        #0x23240                                       ; _objc_autoreleaseReturnValue
00acdc b        #0xad30                                       
00ace0 b        #0xad4c                                       
00ace4 b        #0xad30                                       
00ace8 mov      x1, x23                                       
00acec mov      x23, x0                                       
00acf0 mov      x0, x1                                        
00acf4 bl       #0x232f4                                       ; _objc_release
00acf8 b        #0xad58                                       
00acfc b        #0xad4c                                       
00ad00 b        #0xad30                                       
00ad04 mov      x23, x0                                       
00ad08 mov      x0, x25                                       
00ad0c bl       #0x232f4                                       ; _objc_release
00ad10 b        #0xad18                                       
00ad14 mov      x23, x0                                       
00ad18 mov      x0, x24                                       
00ad1c b        #0xad6c                                       
00ad20 b        #0xad80                                       
00ad24 b        #0xad4c                                       
00ad28 b        #0xad30                                       
00ad2c b        #0xad40                                       
00ad30 mov      x23, x0                                       
00ad34 b        #0xad68                                       
00ad38 mov      x23, x0                                       
00ad3c b        #0xad8c                                       
00ad40 mov      x23, x0                                       
00ad44 b        #0xad94                                       
00ad48 b        #0xad54                                       
00ad4c mov      x23, x0                                       
00ad50 b        #0xad60                                       
00ad54 mov      x23, x0                                       
00ad58 mov      x0, x25                                       
00ad5c bl       #0x232f4                                       ; _objc_release
00ad60 mov      x0, x24                                       
00ad64 bl       #0x232f4                                       ; _objc_release
00ad68 mov      x0, x22                                       
00ad6c bl       #0x232f4                                       ; _objc_release
00ad70 b        #0xad84                                       
00ad74 mov      x23, x0                                       
00ad78 mov      x0, x22                                       
00ad7c b        #0xad88                                       
00ad80 mov      x23, x0                                       
00ad84 mov      x0, x21                                       
00ad88 bl       #0x232f4                                       ; _objc_release
00ad8c mov      x0, x20                                       
00ad90 bl       #0x232f4                                       ; _objc_release
00ad94 mov      x0, x19                                       
00ad98 bl       #0x232f4                                       ; _objc_release
00ad9c mov      x0, x23                                       
00ada0 bl       #0x231b0                                       ; __Unwind_Resume

WPMaterialSelectVC.tableView:didSelectRowAtIndexPath::
00ada4 sub      sp, sp, #0x70                                 
00ada8 stp      x28, x27, [sp, #0x10]                         
00adac stp      x26, x25, [sp, #0x20]                         
00adb0 stp      x24, x23, [sp, #0x30]                         
00adb4 stp      x22, x21, [sp, #0x40]                         
00adb8 stp      x20, x19, [sp, #0x50]                         
00adbc stp      x29, x30, [sp, #0x60]                         
00adc0 add      x29, sp, #0x60                                
00adc4 mov      x19, x3                                       
00adc8 mov      x22, x0                                       
00adcc mov      x0, x2                                        
00add0 bl       #0x23300                                       ; _objc_retain
00add4 mov      x24, x0                                       
00add8 mov      x0, x19                                       
00addc bl       #0x23300                                       ; _objc_retain
00ade0 mov      x20, x0                                       
00ade4 mov      x0, x24                                       
00ade8 mov      x2, x20                                       
00adec mov      w3, #1                                        
00adf0 bl       #0x23b80                                      
00adf4 mov      x0, x22                                       
00adf8 bl       #0x23d20                                      
00adfc mov      x29, x29                                      
00ae00 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ae04 mov      x23, x0                                       
00ae08 mov      x0, x20                                       
00ae0c bl       #0x24a00                                      
00ae10 mov      x2, x0                                        
00ae14 mov      x0, x23                                       
00ae18 bl       #0x24660                                      
00ae1c mov      x29, x29                                      
00ae20 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ae24 mov      x21, x0                                       
00ae28 mov      x0, x23                                       
00ae2c bl       #0x232f4                                       ; _objc_release
00ae30 mov      x0, x20                                       
00ae34 bl       #0x24a00                                      
00ae38 cbnz     x0, #0xae4c                                   
00ae3c mov      x0, x21                                       
00ae40 bl       #0x232f4                                       ; _objc_release
00ae44 adrp     x21, #0x34000                                 
00ae48 add      x21, x21, #0xdf8                               ; @
00ae4c mov      x0, x22                                       
00ae50 bl       #0x242a0                                      
00ae54 cbz      w0, #0xaea4                                   
00ae58 adrp     x19, #0x3a000                                 
00ae5c ldr      x0, [x19, #0x100]                              ; CLASS _OBJC_CLASS_$_NSUserDefaults
00ae60 bl       #0x25920                                      
00ae64 mov      x29, x29                                      
00ae68 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ae6c mov      x23, x0                                       
00ae70 adrp     x3, #0x34000                                  
00ae74 add      x3, x3, #0xe18                                 ; @WPPulse_GlobalBadgeMaterial
00ae78 mov      x2, x21                                       
00ae7c bl       #0x25160                                      
00ae80 mov      x0, x23                                       
00ae84 bl       #0x232f4                                       ; _objc_release
00ae88 ldr      x0, [x19, #0x100]                              ; CLASS _OBJC_CLASS_$_NSUserDefaults
00ae8c bl       #0x25920                                      
00ae90 mov      x29, x29                                      
00ae94 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00ae98 mov      x23, x0                                       
00ae9c bl       #0x25aa0                                      
00aea0 b        #0xb03c                                       
00aea4 str      x24, [sp, #8]                                 
00aea8 adrp     x8, #0x3a000                                  
00aeac ldr      x0, [x8, #0xf8]                                ; CLASS WCPulseSessionMgr
00aeb0 bl       #0x25800                                      
00aeb4 mov      x29, x29                                      
00aeb8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00aebc mov      x24, x0                                       
00aec0 bl       #0x23f00                                      
00aec4 mov      x29, x29                                      
00aec8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00aecc mov      x25, x0                                       
00aed0 bl       #0x24540                                      
00aed4 mov      x23, x0                                       
00aed8 mov      x0, x25                                       
00aedc bl       #0x232f4                                       ; _objc_release
00aee0 mov      x0, x24                                       
00aee4 bl       #0x232f4                                       ; _objc_release
00aee8 mov      x24, #0                                       
00aeec adrp     x25, #0x34000                                 
00aef0 add      x25, x25, #0x898                               ; @id
00aef4 mov      x0, x23                                       
00aef8 bl       #0x239c0                                      
00aefc cmp      x24, x0                                       
00af00 b.hs     #0xafec                                       
00af04 mov      x0, x23                                       
00af08 mov      x2, x24                                       
00af0c bl       #0x24660                                      
00af10 mov      x29, x29                                      
00af14 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00af18 mov      x26, x0                                       
00af1c mov      x2, x25                                       
00af20 bl       #0x246a0                                      
00af24 mov      x29, x29                                      
00af28 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00af2c mov      x27, x0                                       
00af30 mov      x0, x22                                       
00af34 bl       #0x25d60                                      
00af38 mov      x29, x29                                      
00af3c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00af40 mov      x28, x0                                       
00af44 mov      x0, x27                                       
00af48 mov      x2, x28                                       
00af4c bl       #0x24260                                      
00af50 mov      x19, x0                                       
00af54 mov      x0, x28                                       
00af58 bl       #0x232f4                                       ; _objc_release
00af5c mov      x0, x27                                       
00af60 bl       #0x232f4                                       ; _objc_release
00af64 mov      x0, x26                                       
00af68 bl       #0x232f4                                       ; _objc_release
00af6c cbnz     w19, #0xaf78                                  
00af70 add      x24, x24, #1                                  
00af74 b        #0xaef4                                       
00af78 mov      x0, x23                                       
00af7c mov      x2, x24                                       
00af80 bl       #0x24660                                      
00af84 mov      x29, x29                                      
00af88 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00af8c mov      x26, x0                                       
00af90 bl       #0x24540                                      
00af94 mov      x25, x0                                       
00af98 mov      x0, x26                                       
00af9c bl       #0x232f4                                       ; _objc_release
00afa0 mov      x0, x21                                       
00afa4 bl       #0x24380                                      
00afa8 cbz      x0, #0xafc4                                   
00afac adrp     x3, #0x34000                                  
00afb0 add      x3, x3, #0xe38                                 ; @customMaterialIcon
00afb4 mov      x0, x25                                       
00afb8 mov      x2, x21                                       
00afbc bl       #0x25180                                      
00afc0 b        #0xafd4                                       
00afc4 adrp     x2, #0x34000                                  
00afc8 add      x2, x2, #0xe38                                 ; @customMaterialIcon
00afcc mov      x0, x25                                       
00afd0 bl       #0x24940                                      
00afd4 mov      x0, x23                                       
00afd8 mov      x2, x25                                       
00afdc mov      x3, x24                                       
00afe0 bl       #0x25140                                      
00afe4 mov      x0, x25                                       
00afe8 bl       #0x232f4                                       ; _objc_release
00afec adrp     x8, #0x3a000                                  
00aff0 ldr      x0, [x8, #0xf8]                                ; CLASS WCPulseSessionMgr
00aff4 bl       #0x25800                                      
00aff8 mov      x29, x29                                      
00affc bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00b000 mov      x24, x0                                       
00b004 mov      x2, x23                                       
00b008 bl       #0x24fc0                                      
00b00c mov      x0, x24                                       
00b010 bl       #0x232f4                                       ; _objc_release
00b014 adrp     x8, #0x3a000                                  
00b018 ldr      x0, [x8, #0xf8]                                ; CLASS WCPulseSessionMgr
00b01c bl       #0x25800                                      
00b020 mov      x29, x29                                      
00b024 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00b028 mov      x24, x0                                       
00b02c bl       #0x24a20                                      
00b030 mov      x0, x24                                       
00b034 bl       #0x232f4                                       ; _objc_release
00b038 ldr      x24, [sp, #8]                                 
00b03c mov      x0, x23                                       
00b040 bl       #0x232f4                                       ; _objc_release
00b044 adrp     x8, #0x3a000                                  
00b048 ldr      x0, [x8, #0x178]                               ; CLASS _OBJC_CLASS_$_NSNotificationCenter
00b04c bl       #0x23b00                                      
00b050 mov      x29, x29                                      
00b054 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00b058 mov      x23, x0                                       
00b05c adrp     x2, #0x34000                                  
00b060 add      x2, x2, #0xe58                                 ; @WPMaterialUpdated
00b064 mov      x3, #0                                        
00b068 bl       #0x24760                                      
00b06c mov      x0, x23                                       
00b070 bl       #0x232f4                                       ; _objc_release
00b074 mov      x0, x22                                       
00b078 mov      w2, #1                                        
00b07c mov      x3, #0                                        
00b080 bl       #0x23c20                                      
00b084 mov      x0, x21                                       
00b088 bl       #0x232f4                                       ; _objc_release
00b08c mov      x0, x20                                       
00b090 bl       #0x232f4                                       ; _objc_release
00b094 mov      x0, x24                                       
00b098 ldp      x29, x30, [sp, #0x60]                         
00b09c ldp      x20, x19, [sp, #0x50]                         
00b0a0 ldp      x22, x21, [sp, #0x40]                         
00b0a4 ldp      x24, x23, [sp, #0x30]                         
00b0a8 ldp      x26, x25, [sp, #0x20]                         
00b0ac ldp      x28, x27, [sp, #0x10]                         
00b0b0 add      sp, sp, #0x70                                 
00b0b4 b        #0x232f4                                       ; _objc_release
00b0b8 b        #0xb15c                                       
00b0bc b        #0xb16c                                       
00b0c0 b        #0xb0c4                                       
00b0c4 mov      x22, x0                                       
00b0c8 mov      x0, x24                                       
00b0cc b        #0xb164                                       
00b0d0 b        #0xb108                                       
00b0d4 mov      x22, x0                                       
00b0d8 mov      x0, x25                                       
00b0dc bl       #0x232f4                                       ; _objc_release
00b0e0 b        #0xb0e8                                       
00b0e4 mov      x22, x0                                       
00b0e8 mov      x0, x24                                       
00b0ec b        #0xb174                                       
00b0f0 b        #0xb108                                       
00b0f4 b        #0xb134                                       
00b0f8 mov      x22, x0                                       
00b0fc mov      x0, x25                                       
00b100 b        #0xb164                                       
00b104 b        #0xb16c                                       
00b108 str      x24, [sp, #8]                                 
00b10c b        #0xb16c                                       
00b110 b        #0xb114                                       
00b114 str      x24, [sp, #8]                                 
00b118 mov      x22, x0                                       
00b11c b        #0xb180                                       
00b120 str      x24, [sp, #8]                                 
00b124 mov      x22, x0                                       
00b128 mov      x0, x23                                       
00b12c b        #0xb17c                                       
00b130 str      x24, [sp, #8]                                 
00b134 mov      x22, x0                                       
00b138 b        #0xb178                                       
00b13c mov      x22, x0                                       
00b140 mov      x0, x28                                       
00b144 bl       #0x232f4                                       ; _objc_release
00b148 b        #0xb150                                       
00b14c mov      x22, x0                                       
00b150 mov      x0, x27                                       
00b154 bl       #0x232f4                                       ; _objc_release
00b158 b        #0xb160                                       
00b15c mov      x22, x0                                       
00b160 mov      x0, x26                                       
00b164 bl       #0x232f4                                       ; _objc_release
00b168 b        #0xb170                                       
00b16c mov      x22, x0                                       
00b170 mov      x0, x23                                       
00b174 bl       #0x232f4                                       ; _objc_release
00b178 mov      x0, x21                                       
00b17c bl       #0x232f4                                       ; _objc_release
00b180 mov      x0, x20                                       
00b184 bl       #0x232f4                                       ; _objc_release
00b188 ldr      x0, [sp, #8]                                  
00b18c bl       #0x232f4                                       ; _objc_release
00b190 mov      x0, x22                                       
00b194 bl       #0x231b0                                       ; __Unwind_Resume

WPMaterialSelectVC.cancel:
00b198 mov      w2, #1                                        
00b19c mov      x3, #0                                        
00b1a0 b        #0x23c20                                      

WPMaterialSelectVC.typeId:
00b1a4 adrp     x8, #0x3a000                                  
00b1a8 ldrsw    x8, [x8, #0x2e8]                              
00b1ac ldr      x0, [x0, x8]                                  
00b1b0 ret                                                    

WPMaterialSelectVC.setTypeId::
00b1b4 mov      x1, x2                                        
00b1b8 adrp     x8, #0x3a000                                  
00b1bc ldrsw    x8, [x8, #0x2e8]                              
00b1c0 add      x0, x0, x8                                    
00b1c4 b        #0x23348                                       ; _objc_storeStrong

WPMaterialSelectVC.isForGlobalBadge:
00b1c8 adrp     x8, #0x3a000                                  
00b1cc ldrsw    x8, [x8, #0x2ec]                              
00b1d0 ldrb     w0, [x0, x8]                                  
00b1d4 ret                                                    

WPMaterialSelectVC.setIsForGlobalBadge::
00b1d8 adrp     x8, #0x3a000                                  
00b1dc ldrsw    x8, [x8, #0x2ec]                              
00b1e0 strb     w2, [x0, x8]                                  
00b1e4 ret                                                    

WPMaterialSelectVC.files:
00b1e8 adrp     x8, #0x3a000                                  
00b1ec ldrsw    x8, [x8, #0x2f0]                              
00b1f0 ldr      x0, [x0, x8]                                  
00b1f4 ret                                                    

WPMaterialSelectVC.setFiles::
00b1f8 mov      x1, x2                                        
00b1fc adrp     x8, #0x3a000                                  
00b200 ldrsw    x8, [x8, #0x2f0]                              
00b204 add      x0, x0, x8                                    
00b208 b        #0x23348                                       ; _objc_storeStrong

WPMaterialSelectVC.tableView:
00b20c adrp     x8, #0x3a000                                  
00b210 ldrsw    x8, [x8, #0x2f4]                              
00b214 ldr      x0, [x0, x8]                                  
00b218 ret                                                    

WPMaterialSelectVC.setTableView::
00b21c mov      x1, x2                                        
00b220 adrp     x8, #0x3a000                                  
00b224 ldrsw    x8, [x8, #0x2f4]                              
00b228 add      x0, x0, x8                                    
00b22c b        #0x23348                                       ; _objc_storeStrong
