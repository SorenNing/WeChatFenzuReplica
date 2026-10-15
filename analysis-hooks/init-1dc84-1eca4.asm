01dc84 sub      sp, sp, #0x170                                
01dc88 stp      x28, x27, [sp, #0x110]                        
01dc8c stp      x26, x25, [sp, #0x120]                        
01dc90 stp      x24, x23, [sp, #0x130]                        
01dc94 stp      x22, x21, [sp, #0x140]                        
01dc98 stp      x20, x19, [sp, #0x150]                        
01dc9c stp      x29, x30, [sp, #0x160]                        
01dca0 add      x29, sp, #0x160                               
01dca4 adrp     x8, #0x34000                                  
01dca8 ldr      x8, [x8, #0x170]                               ; ___stack_chk_guard
01dcac ldr      x8, [x8]                                      
01dcb0 stur     x8, [x29, #-0x60]                             
01dcb4 bl       #0x23234                                       ; _objc_autoreleasePoolPush
01dcb8 str      x0, [sp, #8]                                  
01dcbc movi     v0.16b, #0                                    
01dcc0 stp      q0, q0, [sp, #0x10]                           
01dcc4 stp      q0, q0, [sp, #0x30]                           
01dcc8 adrp     x8, #0x34000                                  
01dccc ldr      x8, [x8, #0x208]                               ; _UITextFieldTextDidChangeNotification
01dcd0 ldr      x8, [x8]                                      
01dcd4 adrp     x9, #0x34000                                  
01dcd8 ldr      x9, [x9, #0x200]                               ; _UITextFieldTextDidBeginEditingNotification
01dcdc ldr      x9, [x9]                                      
01dce0 stp      x8, x9, [sp, #0x50]                           
01dce4 adrp     x8, #0x34000                                  
01dce8 ldr      x8, [x8, #0x210]                               ; _UITextFieldTextDidEndEditingNotification
01dcec ldr      x8, [x8]                                      
01dcf0 adrp     x9, #0x34000                                  
01dcf4 ldr      x9, [x9, #0x220]                               ; _UITextViewTextDidChangeNotification
01dcf8 ldr      x9, [x9]                                      
01dcfc stp      x8, x9, [sp, #0x60]                           
01dd00 adrp     x8, #0x34000                                  
01dd04 ldr      x8, [x8, #0x218]                               ; _UITextViewTextDidBeginEditingNotification
01dd08 adrp     x9, #0x34000                                  
01dd0c ldr      x9, [x9, #0x228]                               ; _UITextViewTextDidEndEditingNotification
01dd10 ldr      x8, [x8]                                      
01dd14 ldr      x9, [x9]                                      
01dd18 stp      x8, x9, [sp, #0x70]                           
01dd1c adrp     x8, #0x3a000                                  
01dd20 ldr      x0, [x8, #0x118]                               ; CLASS _OBJC_CLASS_$_NSArray
01dd24 add      x2, sp, #0x50                                 
01dd28 mov      w3, #6                                        
01dd2c bl       #0x236e0                                      
01dd30 mov      x29, x29                                      
01dd34 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01dd38 mov      x19, x0                                       
01dd3c add      x2, sp, #0x10                                 
01dd40 add      x3, sp, #0x80                                 
01dd44 mov      w4, #0x10                                     
01dd48 bl       #0x239e0                                      
01dd4c mov      x21, x0                                       
01dd50 adrp     x27, #0x3a000                                 
01dd54 adrp     x26, #0x3a000                                 
01dd58 cbz      x0, #0x1de10                                  
01dd5c ldr      x8, [sp, #0x20]                               
01dd60 ldr      x28, [x8]                                     
01dd64 adrp     x22, #0x34000                                 
01dd68 add      x22, x22, #0x648                               ; __NSConcreteGlobalBlock
01dd6c mov      x20, #0                                       
01dd70 ldr      x8, [sp, #0x20]                               
01dd74 ldr      x8, [x8]                                      
01dd78 cmp      x8, x28                                       
01dd7c b.eq     #0x1dd88                                      
01dd80 mov      x0, x19                                       
01dd84 bl       #0x2327c                                       ; _objc_enumerationMutation
01dd88 ldr      x8, [sp, #0x18]                               
01dd8c ldr      x24, [x8, x20, lsl #3]                        
01dd90 ldr      x0, [x27, #0x178]                              ; CLASS _OBJC_CLASS_$_NSNotificationCenter
01dd94 bl       #0x23b00                                      
01dd98 mov      x29, x29                                      
01dd9c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01dda0 mov      x23, x0                                       
01dda4 ldr      x0, [x26, #0x238]                              ; CLASS _OBJC_CLASS_$_NSOperationQueue
01dda8 bl       #0x244c0                                      
01ddac mov      x29, x29                                      
01ddb0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01ddb4 mov      x25, x0                                       
01ddb8 mov      x0, x23                                       
01ddbc mov      x2, x24                                       
01ddc0 mov      x3, #0                                        
01ddc4 mov      x4, x25                                       
01ddc8 mov      x5, x22                                       
01ddcc bl       #0x234c0                                      
01ddd0 mov      x29, x29                                      
01ddd4 bl       #0x23360                                       ; _objc_unsafeClaimAutoreleasedReturnValue
01ddd8 mov      x0, x25                                       
01dddc bl       #0x232f4                                       ; _objc_release
01dde0 mov      x0, x23                                       
01dde4 bl       #0x232f4                                       ; _objc_release
01dde8 add      x20, x20, #1                                  
01ddec cmp      x21, x20                                      
01ddf0 b.ne     #0x1dd70                                      
01ddf4 add      x2, sp, #0x10                                 
01ddf8 add      x3, sp, #0x80                                 
01ddfc mov      x0, x19                                       
01de00 mov      w4, #0x10                                     
01de04 bl       #0x239e0                                      
01de08 mov      x21, x0                                       
01de0c cbnz     x0, #0x1dd6c                                  
01de10 mov      x0, x19                                       
01de14 bl       #0x232f4                                       ; _objc_release
01de18 bl       #0x2315c                                       ; _NSHomeDirectory
01de1c mov      x29, x29                                      
01de20 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01de24 mov      x21, x0                                       
01de28 adrp     x2, #0x34000                                  
01de2c add      x2, x2, #0xd38                                 ; @Library/分组素材
01de30 bl       #0x25960                                      
01de34 mov      x29, x29                                      
01de38 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01de3c mov      x19, x0                                       
01de40 mov      x0, x21                                       
01de44 bl       #0x232f4                                       ; _objc_release
01de48 adrp     x20, #0x3a000                                 
01de4c ldr      x0, [x20, #0x180]                              ; CLASS _OBJC_CLASS_$_NSFileManager
01de50 bl       #0x23b20                                      
01de54 mov      x29, x29                                      
01de58 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01de5c mov      x21, x0                                       
01de60 mov      x2, x19                                       
01de64 bl       #0x23d00                                      
01de68 mov      x22, x0                                       
01de6c mov      x0, x21                                       
01de70 bl       #0x232f4                                       ; _objc_release
01de74 tbnz     w22, #0, #0x1dea8                             
01de78 ldr      x0, [x20, #0x180]                              ; CLASS _OBJC_CLASS_$_NSFileManager
01de7c bl       #0x23b20                                      
01de80 mov      x29, x29                                      
01de84 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01de88 mov      x21, x0                                       
01de8c mov      x2, x19                                       
01de90 mov      w3, #1                                        
01de94 mov      x4, #0                                        
01de98 mov      x5, #0                                        
01de9c bl       #0x23a00                                      
01dea0 mov      x0, x21                                       
01dea4 bl       #0x232f4                                       ; _objc_release
01dea8 mov      x0, x19                                       
01deac bl       #0x232f4                                       ; _objc_release
01deb0 adrp     x19, #0x3a000                                 
01deb4 ldr      x0, [x19, #0xf8]                               ; CLASS WCPulseSessionMgr
01deb8 bl       #0x25800                                      
01debc mov      x29, x29                                      
01dec0 bl       #0x23360                                       ; _objc_unsafeClaimAutoreleasedReturnValue
01dec4 ldr      x0, [x19, #0xf8]                               ; CLASS WCPulseSessionMgr
01dec8 bl       #0x25800                                      
01decc mov      x29, x29                                      
01ded0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01ded4 mov      x19, x0                                       
01ded8 bl       #0x248a0                                      
01dedc mov      x0, x19                                       
01dee0 bl       #0x232f4                                       ; _objc_release
01dee4 ldr      x0, [x27, #0x178]                              ; CLASS _OBJC_CLASS_$_NSNotificationCenter
01dee8 bl       #0x23b00                                      
01deec mov      x29, x29                                      
01def0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01def4 mov      x19, x0                                       
01def8 ldr      x0, [x26, #0x238]                              ; CLASS _OBJC_CLASS_$_NSOperationQueue
01defc bl       #0x244c0                                      
01df00 mov      x29, x29                                      
01df04 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01df08 mov      x21, x0                                       
01df0c adrp     x2, #0x34000                                  
01df10 add      x2, x2, #0x758                                 ; @TagSelectionChanged
01df14 adrp     x5, #0x34000                                  
01df18 add      x5, x5, #0x668                                 ; __NSConcreteGlobalBlock
01df1c mov      x0, x19                                       
01df20 mov      x3, #0                                        
01df24 mov      x4, x21                                       
01df28 bl       #0x234c0                                      
01df2c mov      x29, x29                                      
01df30 bl       #0x23360                                       ; _objc_unsafeClaimAutoreleasedReturnValue
01df34 mov      x0, x21                                       
01df38 bl       #0x232f4                                       ; _objc_release
01df3c mov      x0, x19                                       
01df40 bl       #0x232f4                                       ; _objc_release
01df44 ldr      x0, [x27, #0x178]                              ; CLASS _OBJC_CLASS_$_NSNotificationCenter
01df48 bl       #0x23b00                                      
01df4c mov      x29, x29                                      
01df50 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01df54 mov      x19, x0                                       
01df58 ldr      x0, [x26, #0x238]                              ; CLASS _OBJC_CLASS_$_NSOperationQueue
01df5c bl       #0x244c0                                      
01df60 mov      x29, x29                                      
01df64 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01df68 mov      x21, x0                                       
01df6c adrp     x2, #0x34000                                  
01df70 add      x2, x2, #0xcd8                                 ; @WPCustomGroupUpdated
01df74 adrp     x5, #0x34000                                  
01df78 add      x5, x5, #0x6a8                                 ; __NSConcreteGlobalBlock
01df7c mov      x0, x19                                       
01df80 mov      x3, #0                                        
01df84 mov      x4, x21                                       
01df88 bl       #0x234c0                                      
01df8c mov      x29, x29                                      
01df90 bl       #0x23360                                       ; _objc_unsafeClaimAutoreleasedReturnValue
01df94 mov      x0, x21                                       
01df98 bl       #0x232f4                                       ; _objc_release
01df9c mov      x0, x19                                       
01dfa0 bl       #0x232f4                                       ; _objc_release
01dfa4 ldr      x0, [x27, #0x178]                              ; CLASS _OBJC_CLASS_$_NSNotificationCenter
01dfa8 bl       #0x23b00                                      
01dfac mov      x29, x29                                      
01dfb0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01dfb4 mov      x19, x0                                       
01dfb8 ldr      x0, [x26, #0x238]                              ; CLASS _OBJC_CLASS_$_NSOperationQueue
01dfbc bl       #0x244c0                                      
01dfc0 mov      x29, x29                                      
01dfc4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01dfc8 mov      x21, x0                                       
01dfcc adrp     x2, #0x34000                                  
01dfd0 add      x2, x2, #0xe58                                 ; @WPMaterialUpdated
01dfd4 adrp     x5, #0x34000                                  
01dfd8 add      x5, x5, #0x6c8                                 ; __NSConcreteGlobalBlock
01dfdc mov      x0, x19                                       
01dfe0 mov      x3, #0                                        
01dfe4 mov      x4, x21                                       
01dfe8 bl       #0x234c0                                      
01dfec mov      x29, x29                                      
01dff0 bl       #0x23360                                       ; _objc_unsafeClaimAutoreleasedReturnValue
01dff4 mov      x0, x21                                       
01dff8 bl       #0x232f4                                       ; _objc_release
01dffc mov      x0, x19                                       
01e000 bl       #0x232f4                                       ; _objc_release
01e004 ldr      x0, [sp, #8]                                  
01e008 bl       #0x23228                                       ; _objc_autoreleasePoolPop
01e00c ldur     x8, [x29, #-0x60]                             
01e010 adrp     x9, #0x34000                                  
01e014 ldr      x9, [x9, #0x170]                               ; ___stack_chk_guard
01e018 ldr      x9, [x9]                                      
01e01c cmp      x9, x8                                        
01e020 b.ne     #0x1e044                                      
01e024 ldp      x29, x30, [sp, #0x160]                        
01e028 ldp      x20, x19, [sp, #0x150]                        
01e02c ldp      x22, x21, [sp, #0x140]                        
01e030 ldp      x24, x23, [sp, #0x130]                        
01e034 ldp      x26, x25, [sp, #0x120]                        
01e038 ldp      x28, x27, [sp, #0x110]                        
01e03c add      sp, sp, #0x170                                
01e040 ret                                                    
01e044 bl       #0x231bc                                       ; ___stack_chk_fail
01e048 mov      x20, x0                                       
01e04c mov      x0, x21                                       
01e050 bl       #0x232f4                                       ; _objc_release
01e054 b        #0x1e0e4                                      
01e058 mov      x20, x0                                       
01e05c mov      x0, x21                                       
01e060 bl       #0x232f4                                       ; _objc_release
01e064 b        #0x1e0e4                                      
01e068 b        #0x1e0e0                                      
01e06c mov      x20, x0                                       
01e070 mov      x0, x21                                       
01e074 bl       #0x232f4                                       ; _objc_release
01e078 b        #0x1e0e4                                      
01e07c b        #0x1e0e0                                      
01e080 mov      x20, x0                                       
01e084 mov      x0, x21                                       
01e088 bl       #0x232f4                                       ; _objc_release
01e08c b        #0x1e0e4                                      
01e090 b        #0x1e0e0                                      
01e094 b        #0x1e0e0                                      
01e098 mov      x20, x0                                       
01e09c mov      x0, x21                                       
01e0a0 bl       #0x232f4                                       ; _objc_release
01e0a4 b        #0x1e0e4                                      
01e0a8 mov      x20, x0                                       
01e0ac mov      x19, x21                                      
01e0b0 b        #0x1e0e4                                      
01e0b4 b        #0x1e0e0                                      
01e0b8 b        #0x1e0e0                                      
01e0bc b        #0x1e0e0                                      
01e0c0 mov      x20, x0                                       
01e0c4 b        #0x1e0d4                                      
01e0c8 mov      x20, x0                                       
01e0cc mov      x0, x25                                       
01e0d0 bl       #0x232f4                                       ; _objc_release
01e0d4 mov      x0, x23                                       
01e0d8 bl       #0x232f4                                       ; _objc_release
01e0dc b        #0x1e0e4                                      
01e0e0 mov      x20, x0                                       
01e0e4 mov      x0, x19                                       
01e0e8 bl       #0x232f4                                       ; _objc_release
01e0ec b        #0x1e0f4                                      
01e0f0 mov      x20, x0                                       
01e0f4 mov      x0, x20                                       
01e0f8 bl       #0x231b0                                       ; __Unwind_Resume
01e0fc sub      sp, sp, #0x80                                 
01e100 stp      x24, x23, [sp, #0x40]                         
01e104 stp      x22, x21, [sp, #0x50]                         
01e108 stp      x20, x19, [sp, #0x60]                         
01e10c stp      x29, x30, [sp, #0x70]                         
01e110 add      x29, sp, #0x70                                
01e114 mov      x0, x1                                        
01e118 bl       #0x23300                                       ; _objc_retain
01e11c bl       #0x23300                                       ; _objc_retain
01e120 mov      x19, x0                                       
01e124 bl       #0x24640                                      
01e128 mov      x29, x29                                      
01e12c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e130 bl       #0x23300                                       ; _objc_retain
01e134 mov      x20, x0                                       
01e138 adrp     x8, #0x3a000                                  
01e13c ldr      x0, [x8, #0x150]                               ; CLASS _OBJC_CLASS_$_UITextField
01e140 bl       #0x232d0                                       ; _objc_opt_class
01e144 mov      x1, x0                                        
01e148 mov      x0, x20                                       
01e14c bl       #0x232dc                                       ; _objc_opt_isKindOfClass
01e150 tbnz     w0, #0, #0x1e170                              
01e154 adrp     x8, #0x3a000                                  
01e158 ldr      x0, [x8, #0x278]                               ; CLASS _OBJC_CLASS_$_UITextView
01e15c bl       #0x232d0                                       ; _objc_opt_class
01e160 mov      x1, x0                                        
01e164 mov      x0, x20                                       
01e168 bl       #0x232dc                                       ; _objc_opt_isKindOfClass
01e16c tbz      w0, #0, #0x1e1ec                              
01e170 adrp     x0, #0x35000                                  
01e174 add      x0, x0, #0xe98                                 ; @WCSearchBar
01e178 bl       #0x23150                                       ; _NSClassFromString
01e17c mov      x21, x0                                       
01e180 mov      x0, x20                                       
01e184 bl       #0x25a80                                      
01e188 mov      x29, x29                                      
01e18c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e190 mov      x22, x0                                       
01e194 cbz      x0, #0x1e1ec                                  
01e198 adrp     x24, #0x3a000                                 
01e19c ldr      x0, [x24, #0x280]                              ; CLASS _OBJC_CLASS_$_UISearchBar
01e1a0 bl       #0x232d0                                       ; _objc_opt_class
01e1a4 mov      x1, x0                                        
01e1a8 mov      x0, x22                                       
01e1ac bl       #0x232dc                                       ; _objc_opt_isKindOfClass
01e1b0 tbnz     w0, #0, #0x1e1f4                              
01e1b4 cbz      x21, #0x1e1c8                                 
01e1b8 mov      x0, x22                                       
01e1bc mov      x1, x21                                       
01e1c0 bl       #0x232dc                                       ; _objc_opt_isKindOfClass
01e1c4 tbnz     w0, #0, #0x1e1f4                              
01e1c8 mov      x0, x22                                       
01e1cc bl       #0x25a80                                      
01e1d0 mov      x29, x29                                      
01e1d4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e1d8 mov      x23, x0                                       
01e1dc mov      x0, x22                                       
01e1e0 bl       #0x232f4                                       ; _objc_release
01e1e4 mov      x22, x23                                      
01e1e8 cbnz     x23, #0x1e19c                                 
01e1ec mov      x0, x20                                       
01e1f0 b        #0x1e2c8                                      
01e1f4 mov      x0, x22                                       
01e1f8 bl       #0x232f4                                       ; _objc_release
01e1fc mov      x0, x20                                       
01e200 bl       #0x232f4                                       ; _objc_release
01e204 adrp     x1, #0x3a000                                  
01e208 add      x1, x1, #0x852                                
01e20c mov      x0, x20                                       
01e210 bl       #0x23288                                       ; _objc_getAssociatedObject
01e214 mov      x29, x29                                      
01e218 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e21c mov      x22, x0                                       
01e220 bl       #0x25dc0                                      
01e224 add      x21, x0, #1                                   
01e228 mov      x0, x22                                       
01e22c bl       #0x232f4                                       ; _objc_release
01e230 adrp     x8, #0x3a000                                  
01e234 ldr      x0, [x8, #0x110]                               ; CLASS _OBJC_CLASS_$_NSNumber
01e238 mov      x2, x21                                       
01e23c bl       #0x24620                                      
01e240 mov      x29, x29                                      
01e244 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e248 mov      x22, x0                                       
01e24c adrp     x1, #0x3a000                                  
01e250 add      x1, x1, #0x852                                
01e254 mov      x0, x20                                       
01e258 mov      x2, x22                                       
01e25c mov      w3, #1                                        
01e260 bl       #0x23330                                       ; _objc_setAssociatedObject
01e264 mov      x0, x22                                       
01e268 bl       #0x232f4                                       ; _objc_release
01e26c mov      x0, x19                                       
01e270 bl       #0x24560                                      
01e274 mov      x29, x29                                      
01e278 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e27c mov      x22, x0                                       
01e280 adrp     x8, #0x34000                                  
01e284 ldr      x8, [x8, #0x210]                               ; _UITextFieldTextDidEndEditingNotification
01e288 ldr      x2, [x8]                                      
01e28c bl       #0x24260                                      
01e290 cbnz     w0, #0x1e2c4                                  
01e294 mov      x0, x19                                       
01e298 bl       #0x24560                                      
01e29c mov      x29, x29                                      
01e2a0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e2a4 mov      x23, x0                                       
01e2a8 adrp     x8, #0x34000                                  
01e2ac ldr      x8, [x8, #0x228]                               ; _UITextViewTextDidEndEditingNotification
01e2b0 ldr      x2, [x8]                                      
01e2b4 bl       #0x24260                                      
01e2b8 cbz      w0, #0x1e2fc                                  
01e2bc mov      x0, x23                                       
01e2c0 bl       #0x232f4                                       ; _objc_release
01e2c4 mov      x0, x22                                       
01e2c8 bl       #0x232f4                                       ; _objc_release
01e2cc mov      x0, x20                                       
01e2d0 bl       #0x232f4                                       ; _objc_release
01e2d4 mov      x0, x19                                       
01e2d8 bl       #0x232f4                                       ; _objc_release
01e2dc mov      x0, x19                                       
01e2e0 bl       #0x232f4                                       ; _objc_release
01e2e4 ldp      x29, x30, [sp, #0x70]                         
01e2e8 ldp      x20, x19, [sp, #0x60]                         
01e2ec ldp      x22, x21, [sp, #0x50]                         
01e2f0 ldp      x24, x23, [sp, #0x40]                         
01e2f4 add      sp, sp, #0x80                                 
01e2f8 ret                                                    
01e2fc mov      x0, x20                                       
01e300 bl       #0x228c8                                      
01e304 mov      x24, x0                                       
01e308 mov      x0, x23                                       
01e30c bl       #0x232f4                                       ; _objc_release
01e310 mov      x0, x22                                       
01e314 bl       #0x232f4                                       ; _objc_release
01e318 tbz      w24, #0, #0x1e2cc                             
01e31c add      x0, sp, #0x38                                 
01e320 mov      x1, x20                                       
01e324 bl       #0x232a0                                       ; _objc_initWeak
01e328 mov      x0, #0                                        
01e32c mov      w1, #0x5e00                                   
01e330 movk     w1, #0xb2d0, lsl #16                          
01e334 bl       #0x23204                                       ; _dispatch_time
01e338 mov      x22, x0                                       
01e33c adrp     x8, #0x34000                                  
01e340 ldr      x8, [x8, #0x158]                               ; __NSConcreteStackBlock
01e344 str      x8, [sp, #8]                                  
01e348 adrp     x8, #0x2c000                                  
01e34c ldr      d0, [x8, #0x8a8]                              
01e350 adrp     x8, #0x22000                                  
01e354 add      x8, x8, #0xa94                                
01e358 str      d0, [sp, #0x10]                               
01e35c adrp     x9, #0x34000                                  
01e360 add      x9, x9, #0x6e8                                
01e364 stp      x8, x9, [sp, #0x18]                           
01e368 add      x23, sp, #8                                   
01e36c add      x0, x23, #0x20                                
01e370 add      x1, sp, #0x38                                 
01e374 bl       #0x23258                                       ; _objc_copyWeak
01e378 str      x21, [sp, #0x30]                              
01e37c adrp     x1, #0x34000                                  
01e380 ldr      x1, [x1, #0x178]                               ; __dispatch_main_q
01e384 add      x2, sp, #8                                    
01e388 mov      x0, x22                                       
01e38c bl       #0x231d4                                       ; _dispatch_after
01e390 add      x0, x23, #0x20                                
01e394 bl       #0x23264                                       ; _objc_destroyWeak
01e398 add      x0, sp, #0x38                                 
01e39c bl       #0x23264                                       ; _objc_destroyWeak
01e3a0 b        #0x1e2cc                                      
01e3a4 mov      x21, x0                                       
01e3a8 mov      x0, x23                                       
01e3ac bl       #0x232f4                                       ; _objc_release
01e3b0 b        #0x1e3c0                                      
01e3b4 b        #0x1e3bc                                      
01e3b8 b        #0x1e3bc                                      
01e3bc mov      x21, x0                                       
01e3c0 mov      x0, x22                                       
01e3c4 b        #0x1e3f8                                      
01e3c8 b        #0x1e3e0                                      
01e3cc b        #0x1e3e0                                      
01e3d0 mov      x21, x0                                       
01e3d4 b        #0x1e3fc                                      
01e3d8 mov      x21, x0                                       
01e3dc b        #0x1e404                                      
01e3e0 mov      x21, x0                                       
01e3e4 b        #0x1e3f4                                      
01e3e8 mov      x21, x0                                       
01e3ec mov      x0, x22                                       
01e3f0 bl       #0x232f4                                       ; _objc_release
01e3f4 mov      x0, x20                                       
01e3f8 bl       #0x232f4                                       ; _objc_release
01e3fc mov      x0, x20                                       
01e400 bl       #0x232f4                                       ; _objc_release
01e404 mov      x0, x19                                       
01e408 bl       #0x232f4                                       ; _objc_release
01e40c mov      x0, x19                                       
01e410 bl       #0x232f4                                       ; _objc_release
01e414 mov      x0, x21                                       
01e418 bl       #0x231b0                                       ; __Unwind_Resume
01e41c stp      x22, x21, [sp, #-0x30]!                       
01e420 stp      x20, x19, [sp, #0x10]                         
01e424 stp      x29, x30, [sp, #0x20]                         
01e428 add      x29, sp, #0x20                                
01e42c mov      x0, x1                                        
01e430 bl       #0x23300                                       ; _objc_retain
01e434 mov      x19, x0                                       
01e438 bl       #0xf3f8                                       
01e43c adrp     x8, #0x3a000                                  
01e440 ldrb     w8, [x8, #0x790]                              
01e444 tbz      w8, #0, #0x1e508                              
01e448 mov      x0, x19                                       
01e44c bl       #0x25de0                                      
01e450 mov      x29, x29                                      
01e454 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e458 mov      x21, x0                                       
01e45c adrp     x2, #0x35000                                  
01e460 add      x2, x2, #0x338                                 ; @selectedTag
01e464 bl       #0x246a0                                      
01e468 mov      x29, x29                                      
01e46c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e470 mov      x20, x0                                       
01e474 mov      x0, x21                                       
01e478 bl       #0x232f4                                       ; _objc_release
01e47c adrp     x8, #0x3a000                                  
01e480 ldr      x0, [x8, #0x1a8]                               ; CLASS _OBJC_CLASS_$_NSString
01e484 bl       #0x232d0                                       ; _objc_opt_class
01e488 mov      x1, x0                                        
01e48c mov      x0, x20                                       
01e490 bl       #0x232dc                                       ; _objc_opt_isKindOfClass
01e494 tbz      w0, #0, #0x1e4ec                              
01e498 mov      x0, x20                                       
01e49c bl       #0x24380                                      
01e4a0 cbz      x0, #0x1e4ec                                  
01e4a4 adrp     x22, #0x3a000                                 
01e4a8 ldr      x0, [x22, #0xf8]                               ; CLASS WCPulseSessionMgr
01e4ac bl       #0x25800                                      
01e4b0 mov      x29, x29                                      
01e4b4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e4b8 mov      x21, x0                                       
01e4bc mov      x2, x20                                       
01e4c0 bl       #0x24dc0                                      
01e4c4 mov      x0, x21                                       
01e4c8 bl       #0x232f4                                       ; _objc_release
01e4cc ldr      x0, [x22, #0xf8]                               ; CLASS WCPulseSessionMgr
01e4d0 bl       #0x25800                                      
01e4d4 mov      x29, x29                                      
01e4d8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e4dc mov      x21, x0                                       
01e4e0 bl       #0x24840                                      
01e4e4 mov      x0, x21                                       
01e4e8 bl       #0x232f4                                       ; _objc_release
01e4ec adrp     x0, #0x34000                                  
01e4f0 ldr      x0, [x0, #0x178]                               ; __dispatch_main_q
01e4f4 adrp     x1, #0x34000                                  
01e4f8 add      x1, x1, #0x688                                 ; __NSConcreteGlobalBlock
01e4fc bl       #0x231e0                                       ; _dispatch_async
01e500 mov      x0, x20                                       
01e504 bl       #0x232f4                                       ; _objc_release
01e508 mov      x0, x19                                       
01e50c ldp      x29, x30, [sp, #0x20]                         
01e510 ldp      x20, x19, [sp, #0x10]                         
01e514 ldp      x22, x21, [sp], #0x30                         
01e518 b        #0x232f4                                       ; _objc_release
01e51c b        #0x1e520                                      
01e520 mov      x1, x21                                       
01e524 mov      x21, x0                                       
01e528 mov      x0, x1                                        
01e52c bl       #0x232f4                                       ; _objc_release
01e530 b        #0x1e554                                      
01e534 mov      x1, x21                                       
01e538 mov      x21, x0                                       
01e53c mov      x0, x1                                        
01e540 b        #0x1e558                                      
01e544 b        #0x1e548                                      
01e548 mov      x21, x0                                       
01e54c b        #0x1e55c                                      
01e550 mov      x21, x0                                       
01e554 mov      x0, x20                                       
01e558 bl       #0x232f4                                       ; _objc_release
01e55c mov      x0, x19                                       
01e560 bl       #0x232f4                                       ; _objc_release
01e564 mov      x0, x21                                       
01e568 bl       #0x231b0                                       ; __Unwind_Resume
01e56c stp      x28, x27, [sp, #-0x60]!                       
01e570 stp      x26, x25, [sp, #0x10]                         
01e574 stp      x24, x23, [sp, #0x20]                         
01e578 stp      x22, x21, [sp, #0x30]                         
01e57c stp      x20, x19, [sp, #0x40]                         
01e580 stp      x29, x30, [sp, #0x50]                         
01e584 add      x29, sp, #0x50                                
01e588 sub      sp, sp, #0x330                                
01e58c adrp     x8, #0x34000                                  
01e590 ldr      x8, [x8, #0x170]                               ; ___stack_chk_guard
01e594 ldr      x8, [x8]                                      
01e598 stur     x8, [x29, #-0x60]                             
01e59c movi     v0.16b, #0                                    
01e5a0 stp      q0, q0, [sp, #0xe0]                           
01e5a4 stp      q0, q0, [sp, #0x100]                          
01e5a8 adrp     x8, #0x3a000                                  
01e5ac ldr      x0, [x8, #0xf0]                                ; CLASS _OBJC_CLASS_$_UIApplication
01e5b0 bl       #0x25820                                      
01e5b4 mov      x29, x29                                      
01e5b8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e5bc mov      x20, x0                                       
01e5c0 bl       #0x25f00                                      
01e5c4 mov      x29, x29                                      
01e5c8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e5cc mov      x19, x0                                       
01e5d0 mov      x0, x20                                       
01e5d4 bl       #0x232f4                                       ; _objc_release
01e5d8 add      x2, sp, #0xe0                                 
01e5dc sub      x3, x29, #0xe0                                
01e5e0 mov      x0, x19                                       
01e5e4 mov      w4, #0x10                                     
01e5e8 str      x19, [sp, #8]                                 
01e5ec bl       #0x239e0                                      
01e5f0 cbz      x0, #0x1e9f0                                  
01e5f4 ldr      x8, [sp, #0xf0]                               
01e5f8 ldr      x8, [x8]                                      
01e5fc str      x8, [sp, #0x18]                               
01e600 adrp     x25, #0x35000                                 
01e604 add      x25, x25, #0x158                               ; @MainFrame
01e608 adrp     x28, #0x3a000                                 
01e60c str      x0, [sp]                                      
01e610 mov      x24, #0                                       
01e614 ldr      x8, [sp, #0xf0]                               
01e618 ldr      x8, [x8]                                      
01e61c ldr      x9, [sp, #0x18]                               
01e620 cmp      x8, x9                                        
01e624 b.eq     #0x1e630                                      
01e628 mov      x0, x19                                       
01e62c bl       #0x2327c                                       ; _objc_enumerationMutation
01e630 ldr      x8, [sp, #0xe8]                               
01e634 ldr      x0, [x8, x24, lsl #3]                         
01e638 bl       #0x249e0                                      
01e63c mov      x29, x29                                      
01e640 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e644 mov      x2, x0                                        
01e648 cbz      x0, #0x1e92c                                  
01e64c adrp     x8, #0x3a000                                  
01e650 ldr      x0, [x8, #0x108]                               ; CLASS _OBJC_CLASS_$_NSMutableArray
01e654 str      x2, [sp, #0x10]                               
01e658 bl       #0x236c0                                      
01e65c mov      x29, x29                                      
01e660 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e664 mov      x21, x0                                       
01e668 mov      x0, x21                                       
01e66c bl       #0x239c0                                      
01e670 cbz      x0, #0x1e918                                  
01e674 mov      x0, x21                                       
01e678 bl       #0x24340                                      
01e67c mov      x29, x29                                      
01e680 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e684 mov      x22, x0                                       
01e688 mov      x0, x21                                       
01e68c bl       #0x248e0                                      
01e690 mov      x0, x22                                       
01e694 bl       #0x232d0                                       ; _objc_opt_class
01e698 bl       #0x23168                                       ; _NSStringFromClass
01e69c mov      x29, x29                                      
01e6a0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e6a4 mov      x23, x0                                       
01e6a8 mov      x2, x25                                       
01e6ac bl       #0x23900                                      
01e6b0 cbnz     w0, #0x1e958                                  
01e6b4 movi     v0.16b, #0                                    
01e6b8 stp      q0, q0, [sp, #0xc0]                           
01e6bc stp      q0, q0, [sp, #0xa0]                           
01e6c0 mov      x0, x22                                       
01e6c4 bl       #0x23820                                      
01e6c8 mov      x29, x29                                      
01e6cc bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e6d0 mov      x26, x0                                       
01e6d4 add      x2, sp, #0xa0                                 
01e6d8 add      x3, sp, #0x220                                
01e6dc mov      w4, #0x10                                     
01e6e0 bl       #0x239e0                                      
01e6e4 mov      x27, x0                                       
01e6e8 cbz      x0, #0x1e748                                  
01e6ec ldr      x8, [sp, #0xb0]                               
01e6f0 ldr      x20, [x8]                                     
01e6f4 mov      x19, #0                                       
01e6f8 ldr      x8, [sp, #0xb0]                               
01e6fc ldr      x8, [x8]                                      
01e700 cmp      x8, x20                                       
01e704 b.eq     #0x1e710                                      
01e708 mov      x0, x26                                       
01e70c bl       #0x2327c                                       ; _objc_enumerationMutation
01e710 ldr      x8, [sp, #0xa8]                               
01e714 ldr      x2, [x8, x19, lsl #3]                         
01e718 mov      x0, x21                                       
01e71c bl       #0x23480                                      
01e720 add      x19, x19, #1                                  
01e724 cmp      x27, x19                                      
01e728 b.ne     #0x1e6f8                                      
01e72c add      x2, sp, #0xa0                                 
01e730 add      x3, sp, #0x220                                
01e734 mov      x0, x26                                       
01e738 mov      w4, #0x10                                     
01e73c bl       #0x239e0                                      
01e740 mov      x27, x0                                       
01e744 cbnz     x0, #0x1e6f4                                  
01e748 mov      x0, x26                                       
01e74c bl       #0x232f4                                       ; _objc_release
01e750 mov      x0, x22                                       
01e754 bl       #0x24800                                      
01e758 mov      x29, x29                                      
01e75c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e760 cmp      x0, #0                                        
01e764 cset     w19, eq                                       
01e768 bl       #0x232f4                                       ; _objc_release
01e76c tbnz     w19, #0, #0x1e798                             
01e770 mov      x0, x22                                       
01e774 bl       #0x24800                                      
01e778 mov      x29, x29                                      
01e77c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e780 mov      x26, x0                                       
01e784 mov      x0, x21                                       
01e788 mov      x2, x26                                       
01e78c bl       #0x23480                                      
01e790 mov      x0, x26                                       
01e794 bl       #0x232f4                                       ; _objc_release
01e798 adrp     x8, #0x3a000                                  
01e79c ldr      x0, [x8, #0x1b8]                               ; CLASS _OBJC_CLASS_$_UINavigationController
01e7a0 bl       #0x232d0                                       ; _objc_opt_class
01e7a4 mov      x1, x0                                        
01e7a8 mov      x0, x22                                       
01e7ac bl       #0x232dc                                       ; _objc_opt_isKindOfClass
01e7b0 tbz      w0, #0, #0x1e850                              
01e7b4 movi     v0.16b, #0                                    
01e7b8 stp      q0, q0, [sp, #0x80]                           
01e7bc stp      q0, q0, [sp, #0x60]                           
01e7c0 mov      x0, x22                                       
01e7c4 bl       #0x25e60                                      
01e7c8 mov      x29, x29                                      
01e7cc bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e7d0 mov      x26, x0                                       
01e7d4 add      x2, sp, #0x60                                 
01e7d8 add      x3, sp, #0x1a0                                
01e7dc mov      w4, #0x10                                     
01e7e0 bl       #0x239e0                                      
01e7e4 mov      x27, x0                                       
01e7e8 cbz      x0, #0x1e848                                  
01e7ec ldr      x8, [sp, #0x70]                               
01e7f0 ldr      x20, [x8]                                     
01e7f4 mov      x19, #0                                       
01e7f8 ldr      x8, [sp, #0x70]                               
01e7fc ldr      x8, [x8]                                      
01e800 cmp      x8, x20                                       
01e804 b.eq     #0x1e810                                      
01e808 mov      x0, x26                                       
01e80c bl       #0x2327c                                       ; _objc_enumerationMutation
01e810 ldr      x8, [sp, #0x68]                               
01e814 ldr      x2, [x8, x19, lsl #3]                         
01e818 mov      x0, x21                                       
01e81c bl       #0x23480                                      
01e820 add      x19, x19, #1                                  
01e824 cmp      x27, x19                                      
01e828 b.ne     #0x1e7f8                                      
01e82c add      x2, sp, #0x60                                 
01e830 add      x3, sp, #0x1a0                                
01e834 mov      x0, x26                                       
01e838 mov      w4, #0x10                                     
01e83c bl       #0x239e0                                      
01e840 mov      x27, x0                                       
01e844 cbnz     x0, #0x1e7f4                                  
01e848 mov      x0, x26                                       
01e84c bl       #0x232f4                                       ; _objc_release
01e850 ldr      x0, [x28, #0x240]                              ; CLASS _OBJC_CLASS_$_UITabBarController
01e854 bl       #0x232d0                                       ; _objc_opt_class
01e858 mov      x1, x0                                        
01e85c mov      x0, x22                                       
01e860 bl       #0x232dc                                       ; _objc_opt_isKindOfClass
01e864 tbz      w0, #0, #0x1e904                              
01e868 movi     v0.16b, #0                                    
01e86c stp      q0, q0, [sp, #0x40]                           
01e870 stp      q0, q0, [sp, #0x20]                           
01e874 mov      x0, x22                                       
01e878 bl       #0x25e60                                      
01e87c mov      x29, x29                                      
01e880 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e884 mov      x26, x0                                       
01e888 add      x2, sp, #0x20                                 
01e88c add      x3, sp, #0x120                                
01e890 mov      w4, #0x10                                     
01e894 bl       #0x239e0                                      
01e898 mov      x27, x0                                       
01e89c cbz      x0, #0x1e8fc                                  
01e8a0 ldr      x8, [sp, #0x30]                               
01e8a4 ldr      x20, [x8]                                     
01e8a8 mov      x19, #0                                       
01e8ac ldr      x8, [sp, #0x30]                               
01e8b0 ldr      x8, [x8]                                      
01e8b4 cmp      x8, x20                                       
01e8b8 b.eq     #0x1e8c4                                      
01e8bc mov      x0, x26                                       
01e8c0 bl       #0x2327c                                       ; _objc_enumerationMutation
01e8c4 ldr      x8, [sp, #0x28]                               
01e8c8 ldr      x2, [x8, x19, lsl #3]                         
01e8cc mov      x0, x21                                       
01e8d0 bl       #0x23480                                      
01e8d4 add      x19, x19, #1                                  
01e8d8 cmp      x27, x19                                      
01e8dc b.ne     #0x1e8ac                                      
01e8e0 add      x2, sp, #0x20                                 
01e8e4 add      x3, sp, #0x120                                
01e8e8 mov      x0, x26                                       
01e8ec mov      w4, #0x10                                     
01e8f0 bl       #0x239e0                                      
01e8f4 mov      x27, x0                                       
01e8f8 cbnz     x0, #0x1e8a8                                  
01e8fc mov      x0, x26                                       
01e900 bl       #0x232f4                                       ; _objc_release
01e904 mov      x0, x23                                       
01e908 bl       #0x232f4                                       ; _objc_release
01e90c mov      x0, x22                                       
01e910 bl       #0x232f4                                       ; _objc_release
01e914 b        #0x1e668                                      
01e918 mov      x0, x21                                       
01e91c bl       #0x232f4                                       ; _objc_release
01e920 ldr      x0, [sp, #0x10]                               
01e924 bl       #0x232f4                                       ; _objc_release
01e928 ldr      x19, [sp, #8]                                 
01e92c add      x24, x24, #1                                  
01e930 ldr      x8, [sp]                                      
01e934 cmp      x24, x8                                       
01e938 b.ne     #0x1e614                                      
01e93c add      x2, sp, #0xe0                                 
01e940 sub      x3, x29, #0xe0                                
01e944 mov      x0, x19                                       
01e948 mov      w4, #0x10                                     
01e94c bl       #0x239e0                                      
01e950 cbnz     x0, #0x1e60c                                  
01e954 b        #0x1e9f0                                      
01e958 adrp     x8, #0x3a000                                  
01e95c ldr      x0, [x8, #0x100]                               ; CLASS _OBJC_CLASS_$_NSUserDefaults
01e960 bl       #0x25920                                      
01e964 mov      x29, x29                                      
01e968 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
01e96c mov      x25, x0                                       
01e970 adrp     x2, #0x35000                                  
01e974 add      x2, x2, #0x138                                 ; @WPPulse_HideTopBar
01e978 bl       #0x23740                                      
01e97c mov      x24, x0                                       
01e980 mov      x0, x25                                       
01e984 bl       #0x232f4                                       ; _objc_release
01e988 tbnz     w24, #0, #0x1e99c                             
01e98c adrp     x8, #0x39000                                  
01e990 ldr      x2, [x8, #0xcd0]                               ; SEL wp_installGlassHeaderUI
01e994 mov      x0, x22                                       
01e998 bl       #0x24700                                      
01e99c adrp     x8, #0x39000                                  
01e9a0 ldr      x2, [x8, #0xcd8]                               ; SEL wp_installSideDockUI
01e9a4 mov      x0, x22                                       
01e9a8 bl       #0x24700                                      
01e9ac adrp     x8, #0x39000                                  
01e9b0 ldr      x2, [x8, #0xc0]                                ; SEL wp_installListSwipeGestures
01e9b4 mov      x0, x22                                       
01e9b8 bl       #0x24700                                      
01e9bc adrp     x8, #0x39000                                  
01e9c0 ldr      x2, [x8, #0xce0]                               ; SEL wp_refreshMainList
01e9c4 mov      x0, x22                                       
01e9c8 bl       #0x24700                                      
01e9cc mov      x0, x23                                       
01e9d0 bl       #0x232f4                                       ; _objc_release
01e9d4 mov      x0, x22                                       
01e9d8 bl       #0x232f4                                       ; _objc_release
01e9dc mov      x0, x21                                       
01e9e0 bl       #0x232f4                                       ; _objc_release
01e9e4 ldr      x0, [sp, #0x10]                               
01e9e8 bl       #0x232f4                                       ; _objc_release
01e9ec ldr      x19, [sp, #8]                                 
01e9f0 mov      x0, x19                                       
01e9f4 bl       #0x232f4                                       ; _objc_release
01e9f8 ldur     x8, [x29, #-0x60]                             
01e9fc adrp     x9, #0x34000                                  
01ea00 ldr      x9, [x9, #0x170]                               ; ___stack_chk_guard
01ea04 ldr      x9, [x9]                                      
01ea08 cmp      x9, x8                                        
01ea0c b.ne     #0x1ea30                                      
01ea10 add      sp, sp, #0x330                                
01ea14 ldp      x29, x30, [sp, #0x50]                         
01ea18 ldp      x20, x19, [sp, #0x40]                         
01ea1c ldp      x22, x21, [sp, #0x30]                         
01ea20 ldp      x24, x23, [sp, #0x20]                         
01ea24 ldp      x26, x25, [sp, #0x10]                         
01ea28 ldp      x28, x27, [sp], #0x60                         
01ea2c ret                                                    
01ea30 bl       #0x231bc                                       ; ___stack_chk_fail
01ea34 b        #0x1ea68                                      
01ea38 mov      x24, x0                                       
01ea3c mov      x0, x25                                       
01ea40 bl       #0x232f4                                       ; _objc_release
01ea44 b        #0x1eaf4                                      
01ea48 b        #0x1ea68                                      
01ea4c b        #0x1ea68                                      
01ea50 mov      x24, x0                                       
01ea54 mov      x0, x20                                       
01ea58 bl       #0x232f4                                       ; _objc_release
01ea5c b        #0x1eb24                                      
01ea60 mov      x24, x0                                       
01ea64 b        #0x1eb0c                                      
01ea68 mov      x24, x0                                       
01ea6c b        #0x1eb14                                      
01ea70 b        #0x1eab4                                      
01ea74 b        #0x1eac8                                      
01ea78 b        #0x1eab4                                      
01ea7c b        #0x1eab4                                      
01ea80 b        #0x1ead8                                      
01ea84 mov      x24, x0                                       
01ea88 mov      x0, x26                                       
01ea8c bl       #0x232f4                                       ; _objc_release
01ea90 b        #0x1eaf4                                      
01ea94 b        #0x1eab4                                      
01ea98 b        #0x1eae8                                      
01ea9c b        #0x1eaac                                      
01eaa0 b        #0x1eaa4                                      
01eaa4 mov      x24, x0                                       
01eaa8 b        #0x1eb04                                      
01eaac mov      x24, x0                                       
01eab0 b        #0x1eafc                                      
01eab4 mov      x24, x0                                       
01eab8 b        #0x1eaf4                                      
01eabc b        #0x1eac8                                      
01eac0 b        #0x1ead8                                      
01eac4 b        #0x1eae8                                      
01eac8 mov      x24, x0                                       
01eacc mov      x0, x26                                       
01ead0 bl       #0x232f4                                       ; _objc_release
01ead4 b        #0x1eaf4                                      
01ead8 mov      x24, x0                                       
01eadc mov      x0, x26                                       
01eae0 bl       #0x232f4                                       ; _objc_release
01eae4 b        #0x1eaf4                                      
01eae8 mov      x24, x0                                       
01eaec mov      x0, x26                                       
01eaf0 bl       #0x232f4                                       ; _objc_release
01eaf4 mov      x0, x23                                       
01eaf8 bl       #0x232f4                                       ; _objc_release
01eafc mov      x0, x22                                       
01eb00 bl       #0x232f4                                       ; _objc_release
01eb04 mov      x0, x21                                       
01eb08 bl       #0x232f4                                       ; _objc_release
01eb0c ldr      x0, [sp, #0x10]                               
01eb10 bl       #0x232f4                                       ; _objc_release
01eb14 ldr      x0, [sp, #8]                                  
01eb18 bl       #0x232f4                                       ; _objc_release
01eb1c b        #0x1eb24                                      
01eb20 mov      x24, x0                                       
01eb24 mov      x0, x24                                       
01eb28 bl       #0x231b0                                       ; __Unwind_Resume
01eb2c stp      x22, x21, [sp, #-0x30]!                       
01eb30 stp      x20, x19, [sp, #0x10]                         
01eb34 stp      x29, x30, [sp, #0x20]                         
01eb38 add      x29, sp, #0x20                                
01eb3c adrp     x0, #0x3a000                                  
01eb40 add      x0, x0, #0x750                                
01eb44 bl       #0x232ac                                       ; _objc_loadWeakRetained
01eb48 cbz      x0, #0x1ebb4                                  
01eb4c mov      x19, x0                                       
01eb50 adrp     x0, #0x3a000                                  
01eb54 add      x0, x0, #0x750                                
01eb58 bl       #0x232ac                                       ; _objc_loadWeakRetained
01eb5c mov      x21, x0                                       
01eb60 adrp     x8, #0x39000                                  
01eb64 ldr      x20, [x8, #0xce0]                              ; SEL wp_refreshMainList
01eb68 mov      x1, x20                                       
01eb6c bl       #0x232e8                                       ; _objc_opt_respondsToSelector
01eb70 mov      x22, x0                                       
01eb74 mov      x0, x21                                       
01eb78 bl       #0x232f4                                       ; _objc_release
01eb7c mov      x0, x19                                       
01eb80 bl       #0x232f4                                       ; _objc_release
01eb84 tbz      w22, #0, #0x1ebb4                             
01eb88 adrp     x0, #0x3a000                                  
01eb8c add      x0, x0, #0x750                                
01eb90 bl       #0x232ac                                       ; _objc_loadWeakRetained
01eb94 mov      x19, x0                                       
01eb98 mov      x2, x20                                       
01eb9c bl       #0x24700                                      
01eba0 mov      x0, x19                                       
01eba4 ldp      x29, x30, [sp, #0x20]                         
01eba8 ldp      x20, x19, [sp, #0x10]                         
01ebac ldp      x22, x21, [sp], #0x30                         
01ebb0 b        #0x232f4                                       ; _objc_release
01ebb4 ldp      x29, x30, [sp, #0x20]                         
01ebb8 ldp      x20, x19, [sp, #0x10]                         
01ebbc ldp      x22, x21, [sp], #0x30                         
01ebc0 ret                                                    
01ebc4 mov      x20, x0                                       
01ebc8 b        #0x1ebd8                                      
01ebcc mov      x20, x0                                       
01ebd0 mov      x0, x21                                       
01ebd4 bl       #0x232f4                                       ; _objc_release
01ebd8 mov      x0, x19                                       
01ebdc bl       #0x232f4                                       ; _objc_release
01ebe0 mov      x0, x20                                       
01ebe4 bl       #0x231b0                                       ; __Unwind_Resume
01ebe8 stp      x22, x21, [sp, #-0x30]!                       
01ebec stp      x20, x19, [sp, #0x10]                         
01ebf0 stp      x29, x30, [sp, #0x20]                         
01ebf4 add      x29, sp, #0x20                                
01ebf8 adrp     x0, #0x3a000                                  
01ebfc add      x0, x0, #0x750                                
01ec00 bl       #0x232ac                                       ; _objc_loadWeakRetained
01ec04 cbz      x0, #0x1ec70                                  
01ec08 mov      x19, x0                                       
01ec0c adrp     x0, #0x3a000                                  
01ec10 add      x0, x0, #0x750                                
01ec14 bl       #0x232ac                                       ; _objc_loadWeakRetained
01ec18 mov      x21, x0                                       
01ec1c adrp     x8, #0x39000                                  
01ec20 ldr      x20, [x8, #0xcc0]                              ; SEL wp_forceRebuildGlassUI
01ec24 mov      x1, x20                                       
01ec28 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
01ec2c mov      x22, x0                                       
01ec30 mov      x0, x21                                       
01ec34 bl       #0x232f4                                       ; _objc_release
01ec38 mov      x0, x19                                       
01ec3c bl       #0x232f4                                       ; _objc_release
01ec40 tbz      w22, #0, #0x1ec70                             
01ec44 adrp     x0, #0x3a000                                  
01ec48 add      x0, x0, #0x750                                
01ec4c bl       #0x232ac                                       ; _objc_loadWeakRetained
01ec50 mov      x19, x0                                       
01ec54 mov      x2, x20                                       
01ec58 bl       #0x24700                                      
01ec5c mov      x0, x19                                       
01ec60 ldp      x29, x30, [sp, #0x20]                         
01ec64 ldp      x20, x19, [sp, #0x10]                         
01ec68 ldp      x22, x21, [sp], #0x30                         
01ec6c b        #0x232f4                                       ; _objc_release
01ec70 ldp      x29, x30, [sp, #0x20]                         
01ec74 ldp      x20, x19, [sp, #0x10]                         
01ec78 ldp      x22, x21, [sp], #0x30                         
01ec7c ret                                                    
01ec80 mov      x20, x0                                       
01ec84 b        #0x1ec94                                      
01ec88 mov      x20, x0                                       
01ec8c mov      x0, x21                                       
01ec90 bl       #0x232f4                                       ; _objc_release
01ec94 mov      x0, x19                                       
01ec98 bl       #0x232f4                                       ; _objc_release
01ec9c mov      x0, x20                                       
01eca0 bl       #0x231b0                                       ; __Unwind_Resume
