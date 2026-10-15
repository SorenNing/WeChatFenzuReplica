
WCPulseSessionMgr.shared:
004bf8 adrp     x8, #0x3a000                                  
004bfc ldr      x8, [x8, #0x770]                              
004c00 cmn      x8, #1                                        
004c04 b.ne     #0x4c14                                       
004c08 adrp     x8, #0x3a000                                  
004c0c ldr      x0, [x8, #0x768]                              
004c10 b        #0x23318                                       ; _objc_retainAutoreleaseReturnValue
004c14 stp      x29, x30, [sp, #-0x10]!                       
004c18 mov      x29, sp                                       
004c1c bl       #0x23118                                      
004c20 ldp      x29, x30, [sp], #0x10                         
004c24 b        #0x4c08                                       
004c28 stp      x20, x19, [sp, #-0x20]!                       
004c2c stp      x29, x30, [sp, #0x10]                         
004c30 add      x29, sp, #0x10                                
004c34 adrp     x8, #0x3a000                                  
004c38 ldr      x0, [x8, #0xf8]                                ; CLASS WCPulseSessionMgr
004c3c bl       #0x2321c                                       ; _objc_alloc_init
004c40 adrp     x20, #0x3a000                                 
004c44 ldr      x8, [x20, #0x768]                             
004c48 str      x0, [x20, #0x768]                             
004c4c mov      x0, x8                                        
004c50 bl       #0x232f4                                       ; _objc_release
004c54 ldr      x0, [x20, #0x768]                             
004c58 adrp     x2, #0x34000                                  
004c5c add      x2, x2, #0x858                                 ; @全部
004c60 bl       #0x24dc0                                      
004c64 ldr      x0, [x20, #0x768]                             
004c68 adrp     x19, #0x34000                                 
004c6c ldr      x19, [x19, #0x120]                             ; ___NSArray0__struct
004c70 mov      x2, x19                                       
004c74 bl       #0x24ba0                                      
004c78 ldr      x0, [x20, #0x768]                             
004c7c mov      x2, x19                                       
004c80 bl       #0x24f20                                      
004c84 ldr      x0, [x20, #0x768]                             
004c88 mov      x2, x19                                       
004c8c bl       #0x24f00                                      
004c90 ldr      x0, [x20, #0x768]                             
004c94 adrp     x2, #0x34000                                  
004c98 ldr      x2, [x2, #0x128]                               ; ___NSDictionary0__struct
004c9c bl       #0x25680                                      
004ca0 ldr      x0, [x20, #0x768]                             
004ca4 ldp      x29, x30, [sp, #0x10]                         
004ca8 ldp      x20, x19, [sp], #0x20                         
004cac b        #0x257a0                                      

WCPulseSessionMgr.setupDefaultGroups:
004cb0 stp      x28, x27, [sp, #-0x60]!                       
004cb4 stp      x26, x25, [sp, #0x10]                         
004cb8 stp      x24, x23, [sp, #0x20]                         
004cbc stp      x22, x21, [sp, #0x30]                         
004cc0 stp      x20, x19, [sp, #0x40]                         
004cc4 stp      x29, x30, [sp, #0x50]                         
004cc8 add      x29, sp, #0x50                                
004ccc sub      sp, sp, #0x1a0                                
004cd0 mov      x22, x0                                       
004cd4 adrp     x8, #0x34000                                  
004cd8 ldr      x8, [x8, #0x170]                               ; ___stack_chk_guard
004cdc ldr      x8, [x8]                                      
004ce0 stur     x8, [x29, #-0x60]                             
004ce4 adrp     x21, #0x3a000                                 
004ce8 ldr      x0, [x21, #0x100]                              ; CLASS _OBJC_CLASS_$_NSUserDefaults
004cec bl       #0x25920                                      
004cf0 mov      x29, x29                                      
004cf4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
004cf8 mov      x20, x0                                       
004cfc adrp     x2, #0x34000                                  
004d00 add      x2, x2, #0x778                                 ; @WPGroupConfigs_v2
004d04 bl       #0x24680                                      
004d08 mov      x29, x29                                      
004d0c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
004d10 mov      x19, x0                                       
004d14 mov      x0, x20                                       
004d18 bl       #0x232f4                                       ; _objc_release
004d1c str      x19, [sp, #8]                                 
004d20 cbz      x19, #0x4f90                                  
004d24 mov      x0, x19                                       
004d28 bl       #0x239c0                                      
004d2c ldr      x19, [sp, #8]                                 
004d30 cbz      x0, #0x4f90                                   
004d34 mov      x0, x19                                       
004d38 bl       #0x24540                                      
004d3c mov      x20, x0                                       
004d40 mov      x0, x22                                       
004d44 mov      x2, x20                                       
004d48 bl       #0x24fc0                                      
004d4c mov      x0, x20                                       
004d50 bl       #0x232f4                                       ; _objc_release
004d54 mov      x0, x22                                       
004d58 bl       #0x23420                                      
004d5c mov      x29, x29                                      
004d60 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
004d64 str      x0, [sp]                                      
004d68 ldr      x0, [x21, #0x100]                              ; CLASS _OBJC_CLASS_$_NSUserDefaults
004d6c bl       #0x25920                                      
004d70 mov      x29, x29                                      
004d74 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
004d78 mov      x23, x0                                       
004d7c adrp     x2, #0x34000                                  
004d80 add      x2, x2, #0x878                                 ; @WPPulse_LastGroup
004d84 bl       #0x259e0                                      
004d88 mov      x29, x29                                      
004d8c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
004d90 mov      x21, x0                                       
004d94 mov      x0, x23                                       
004d98 bl       #0x232f4                                       ; _objc_release
004d9c cbz      x21, #0x4e60                                  
004da0 movi     v0.16b, #0                                    
004da4 stp      q0, q0, [sp, #0x70]                           
004da8 stp      q0, q0, [sp, #0x50]                           
004dac ldr      x0, [sp]                                      
004db0 bl       #0x23300                                       ; _objc_retain
004db4 mov      x23, x0                                       
004db8 add      x2, sp, #0x50                                 
004dbc sub      x3, x29, #0xe0                                
004dc0 mov      w4, #0x10                                     
004dc4 bl       #0x239e0                                      
004dc8 mov      x25, x0                                       
004dcc cbz      x0, #0x4e58                                   
004dd0 ldr      x8, [sp, #0x60]                               
004dd4 ldr      x20, [x8]                                     
004dd8 adrp     x24, #0x34000                                 
004ddc add      x24, x24, #0x898                               ; @id
004de0 mov      x19, #0                                       
004de4 ldr      x8, [sp, #0x60]                               
004de8 ldr      x8, [x8]                                      
004dec cmp      x8, x20                                       
004df0 b.eq     #0x4dfc                                       
004df4 mov      x0, x23                                       
004df8 bl       #0x2327c                                       ; _objc_enumerationMutation
004dfc ldr      x8, [sp, #0x58]                               
004e00 ldr      x0, [x8, x19, lsl #3]                         
004e04 mov      x2, x24                                       
004e08 bl       #0x246a0                                      
004e0c mov      x29, x29                                      
004e10 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
004e14 mov      x26, x0                                       
004e18 mov      x2, x21                                       
004e1c bl       #0x24260                                      
004e20 mov      x27, x0                                       
004e24 mov      x0, x26                                       
004e28 bl       #0x232f4                                       ; _objc_release
004e2c cbnz     w27, #0x4f9c                                  
004e30 add      x19, x19, #1                                  
004e34 cmp      x25, x19                                      
004e38 b.ne     #0x4de4                                       
004e3c add      x2, sp, #0x50                                 
004e40 sub      x3, x29, #0xe0                                
004e44 mov      x0, x23                                       
004e48 mov      w4, #0x10                                     
004e4c bl       #0x239e0                                      
004e50 mov      x25, x0                                       
004e54 cbnz     x0, #0x4de0                                   
004e58 mov      x0, x23                                       
004e5c bl       #0x232f4                                       ; _objc_release
004e60 ldr      x0, [sp]                                      
004e64 bl       #0x239c0                                      
004e68 cbz      x0, #0x4fb0                                   
004e6c movi     v0.16b, #0                                    
004e70 stp      q0, q0, [sp, #0x30]                           
004e74 stp      q0, q0, [sp, #0x10]                           
004e78 ldr      x0, [sp]                                      
004e7c bl       #0x23300                                       ; _objc_retain
004e80 mov      x23, x0                                       
004e84 add      x2, sp, #0x10                                 
004e88 add      x3, sp, #0x90                                 
004e8c mov      w4, #0x10                                     
004e90 bl       #0x239e0                                      
004e94 mov      x25, x0                                       
004e98 cbz      x0, #0x4f44                                   
004e9c ldr      x8, [sp, #0x20]                               
004ea0 ldr      x20, [x8]                                     
004ea4 adrp     x24, #0x34000                                 
004ea8 add      x24, x24, #0x898                               ; @id
004eac mov      x19, #0                                       
004eb0 ldr      x8, [sp, #0x20]                               
004eb4 ldr      x8, [x8]                                      
004eb8 cmp      x8, x20                                       
004ebc b.eq     #0x4ec8                                       
004ec0 mov      x0, x23                                       
004ec4 bl       #0x2327c                                       ; _objc_enumerationMutation
004ec8 ldr      x8, [sp, #0x18]                               
004ecc ldr      x0, [x8, x19, lsl #3]                         
004ed0 mov      x2, x24                                       
004ed4 bl       #0x246a0                                      
004ed8 mov      x29, x29                                      
004edc bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
004ee0 mov      x26, x0                                       
004ee4 mov      x0, x22                                       
004ee8 bl       #0x23a60                                      
004eec mov      x29, x29                                      
004ef0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
004ef4 mov      x27, x0                                       
004ef8 mov      x0, x26                                       
004efc mov      x2, x27                                       
004f00 bl       #0x24260                                      
004f04 mov      x28, x0                                       
004f08 mov      x0, x27                                       
004f0c bl       #0x232f4                                       ; _objc_release
004f10 mov      x0, x26                                       
004f14 bl       #0x232f4                                       ; _objc_release
004f18 tbnz     w28, #0, #0x4fa8                              
004f1c add      x19, x19, #1                                  
004f20 cmp      x25, x19                                      
004f24 b.ne     #0x4eb0                                       
004f28 add      x2, sp, #0x10                                 
004f2c add      x3, sp, #0x90                                 
004f30 mov      x0, x23                                       
004f34 mov      w4, #0x10                                     
004f38 bl       #0x239e0                                      
004f3c mov      x25, x0                                       
004f40 cbnz     x0, #0x4eac                                   
004f44 mov      x0, x23                                       
004f48 bl       #0x232f4                                       ; _objc_release
004f4c mov      x0, x23                                       
004f50 bl       #0x23e00                                      
004f54 mov      x29, x29                                      
004f58 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
004f5c mov      x23, x0                                       
004f60 adrp     x2, #0x34000                                  
004f64 add      x2, x2, #0x898                                 ; @id
004f68 bl       #0x246a0                                      
004f6c mov      x29, x29                                      
004f70 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
004f74 mov      x24, x0                                       
004f78 mov      x0, x22                                       
004f7c mov      x2, x24                                       
004f80 bl       #0x24dc0                                      
004f84 mov      x0, x24                                       
004f88 bl       #0x232f4                                       ; _objc_release
004f8c b        #0x4fa8                                       
004f90 mov      x0, x22                                       
004f94 bl       #0x24980                                      
004f98 b        #0x4fc0                                       
004f9c mov      x0, x22                                       
004fa0 mov      x2, x21                                       
004fa4 bl       #0x24dc0                                      
004fa8 mov      x0, x23                                       
004fac bl       #0x232f4                                       ; _objc_release
004fb0 mov      x0, x21                                       
004fb4 bl       #0x232f4                                       ; _objc_release
004fb8 ldr      x0, [sp]                                      
004fbc bl       #0x232f4                                       ; _objc_release
004fc0 ldr      x0, [sp, #8]                                  
004fc4 bl       #0x232f4                                       ; _objc_release
004fc8 ldur     x8, [x29, #-0x60]                             
004fcc adrp     x9, #0x34000                                  
004fd0 ldr      x9, [x9, #0x170]                               ; ___stack_chk_guard
004fd4 ldr      x9, [x9]                                      
004fd8 cmp      x9, x8                                        
004fdc b.ne     #0x5000                                       
004fe0 add      sp, sp, #0x1a0                                
004fe4 ldp      x29, x30, [sp, #0x50]                         
004fe8 ldp      x20, x19, [sp, #0x40]                         
004fec ldp      x22, x21, [sp, #0x30]                         
004ff0 ldp      x24, x23, [sp, #0x20]                         
004ff4 ldp      x26, x25, [sp, #0x10]                         
004ff8 ldp      x28, x27, [sp], #0x60                         
004ffc ret                                                    
005000 bl       #0x231bc                                       ; ___stack_chk_fail
005004 mov      x22, x0                                       
005008 mov      x0, x24                                       
00500c bl       #0x232f4                                       ; _objc_release
005010 b        #0x5018                                       
005014 mov      x22, x0                                       
005018 mov      x0, x23                                       
00501c bl       #0x232f4                                       ; _objc_release
005020 b        #0x50d0                                       
005024 b        #0x5034                                       
005028 b        #0x50a4                                       
00502c b        #0x50c4                                       
005030 b        #0x50a4                                       
005034 mov      x22, x0                                       
005038 b        #0x50d0                                       
00503c mov      x22, x0                                       
005040 mov      x0, x23                                       
005044 bl       #0x232f4                                       ; _objc_release
005048 b        #0x50d8                                       
00504c mov      x22, x0                                       
005050 b        #0x50d8                                       
005054 b        #0x507c                                       
005058 mov      x22, x0                                       
00505c mov      x0, x20                                       
005060 bl       #0x232f4                                       ; _objc_release
005064 b        #0x50e0                                       
005068 b        #0x50c4                                       
00506c mov      x22, x0                                       
005070 mov      x0, x20                                       
005074 bl       #0x232f4                                       ; _objc_release
005078 b        #0x50f0                                       
00507c mov      x22, x0                                       
005080 b        #0x50e0                                       
005084 mov      x22, x0                                       
005088 b        #0x5098                                       
00508c mov      x22, x0                                       
005090 mov      x0, x27                                       
005094 bl       #0x232f4                                       ; _objc_release
005098 mov      x0, x26                                       
00509c bl       #0x232f4                                       ; _objc_release
0050a0 b        #0x50a8                                       
0050a4 mov      x22, x0                                       
0050a8 mov      x0, x23                                       
0050ac bl       #0x232f4                                       ; _objc_release
0050b0 b        #0x50d0                                       
0050b4 mov      x22, x0                                       
0050b8 mov      x0, x26                                       
0050bc bl       #0x232f4                                       ; _objc_release
0050c0 b        #0x50c8                                       
0050c4 mov      x22, x0                                       
0050c8 mov      x0, x23                                       
0050cc bl       #0x232f4                                       ; _objc_release
0050d0 mov      x0, x21                                       
0050d4 bl       #0x232f4                                       ; _objc_release
0050d8 ldr      x0, [sp]                                      
0050dc bl       #0x232f4                                       ; _objc_release
0050e0 ldr      x0, [sp, #8]                                  
0050e4 bl       #0x232f4                                       ; _objc_release
0050e8 b        #0x50f0                                       
0050ec mov      x22, x0                                       
0050f0 mov      x0, x22                                       
0050f4 bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.activeGroupConfigs:
0050f8 sub      sp, sp, #0x130                                
0050fc stp      x28, x27, [sp, #0xd0]                         
005100 stp      x26, x25, [sp, #0xe0]                         
005104 stp      x24, x23, [sp, #0xf0]                         
005108 stp      x22, x21, [sp, #0x100]                        
00510c stp      x20, x19, [sp, #0x110]                        
005110 stp      x29, x30, [sp, #0x120]                        
005114 add      x29, sp, #0x120                               
005118 mov      x20, x0                                       
00511c adrp     x8, #0x34000                                  
005120 ldr      x8, [x8, #0x170]                               ; ___stack_chk_guard
005124 ldr      x8, [x8]                                      
005128 stur     x8, [x29, #-0x58]                             
00512c adrp     x8, #0x3a000                                  
005130 ldr      x0, [x8, #0x108]                               ; CLASS _OBJC_CLASS_$_NSMutableArray
005134 bl       #0x23680                                      
005138 mov      x29, x29                                      
00513c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005140 mov      x19, x0                                       
005144 movi     v0.16b, #0                                    
005148 stp      q0, q0, [sp, #0x20]                           
00514c stp      q0, q0, [sp]                                  
005150 mov      x0, x20                                       
005154 bl       #0x23f00                                      
005158 mov      x29, x29                                      
00515c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005160 mov      x20, x0                                       
005164 mov      x2, sp                                        
005168 add      x3, sp, #0x48                                 
00516c mov      w4, #0x10                                     
005170 bl       #0x239e0                                      
005174 mov      x22, x0                                       
005178 cbz      x0, #0x5210                                   
00517c ldr      x8, [sp, #0x10]                               
005180 ldr      x26, [x8]                                     
005184 adrp     x21, #0x34000                                 
005188 add      x21, x21, #0x8b8                               ; @visible
00518c mov      x27, #0                                       
005190 ldr      x8, [sp, #0x10]                               
005194 ldr      x8, [x8]                                      
005198 cmp      x8, x26                                       
00519c b.eq     #0x51a8                                       
0051a0 mov      x0, x20                                       
0051a4 bl       #0x2327c                                       ; _objc_enumerationMutation
0051a8 ldr      x8, [sp, #8]                                  
0051ac ldr      x23, [x8, x27, lsl #3]                        
0051b0 mov      x0, x23                                       
0051b4 mov      x2, x21                                       
0051b8 bl       #0x246a0                                      
0051bc mov      x29, x29                                      
0051c0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0051c4 mov      x24, x0                                       
0051c8 bl       #0x23760                                      
0051cc mov      x25, x0                                       
0051d0 mov      x0, x24                                       
0051d4 bl       #0x232f4                                       ; _objc_release
0051d8 cbz      w25, #0x51e8                                  
0051dc mov      x0, x19                                       
0051e0 mov      x2, x23                                       
0051e4 bl       #0x23480                                      
0051e8 add      x27, x27, #1                                  
0051ec cmp      x22, x27                                      
0051f0 b.ne     #0x5190                                       
0051f4 mov      x2, sp                                        
0051f8 add      x3, sp, #0x48                                 
0051fc mov      x0, x20                                       
005200 mov      w4, #0x10                                     
005204 bl       #0x239e0                                      
005208 mov      x22, x0                                       
00520c cbnz     x0, #0x518c                                   
005210 mov      x0, x20                                       
005214 bl       #0x232f4                                       ; _objc_release
005218 ldur     x8, [x29, #-0x58]                             
00521c adrp     x9, #0x34000                                  
005220 ldr      x9, [x9, #0x170]                               ; ___stack_chk_guard
005224 ldr      x9, [x9]                                      
005228 cmp      x9, x8                                        
00522c b.ne     #0x5254                                       
005230 mov      x0, x19                                       
005234 ldp      x29, x30, [sp, #0x120]                        
005238 ldp      x20, x19, [sp, #0x110]                        
00523c ldp      x22, x21, [sp, #0x100]                        
005240 ldp      x24, x23, [sp, #0xf0]                         
005244 ldp      x26, x25, [sp, #0xe0]                         
005248 ldp      x28, x27, [sp, #0xd0]                         
00524c add      sp, sp, #0x130                                
005250 b        #0x23240                                       ; _objc_autoreleaseReturnValue
005254 bl       #0x231bc                                       ; ___stack_chk_fail
005258 b        #0x5278                                       
00525c mov      x21, x0                                       
005260 b        #0x5284                                       
005264 b        #0x5278                                       
005268 mov      x21, x0                                       
00526c mov      x0, x24                                       
005270 bl       #0x232f4                                       ; _objc_release
005274 b        #0x527c                                       
005278 mov      x21, x0                                       
00527c mov      x0, x20                                       
005280 bl       #0x232f4                                       ; _objc_release
005284 mov      x0, x19                                       
005288 bl       #0x232f4                                       ; _objc_release
00528c b        #0x5294                                       
005290 mov      x21, x0                                       
005294 mov      x0, x21                                       
005298 bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.hiddenGroupConfigs:
00529c sub      sp, sp, #0x130                                
0052a0 stp      x28, x27, [sp, #0xd0]                         
0052a4 stp      x26, x25, [sp, #0xe0]                         
0052a8 stp      x24, x23, [sp, #0xf0]                         
0052ac stp      x22, x21, [sp, #0x100]                        
0052b0 stp      x20, x19, [sp, #0x110]                        
0052b4 stp      x29, x30, [sp, #0x120]                        
0052b8 add      x29, sp, #0x120                               
0052bc mov      x20, x0                                       
0052c0 adrp     x8, #0x34000                                  
0052c4 ldr      x8, [x8, #0x170]                               ; ___stack_chk_guard
0052c8 ldr      x8, [x8]                                      
0052cc stur     x8, [x29, #-0x58]                             
0052d0 adrp     x8, #0x3a000                                  
0052d4 ldr      x0, [x8, #0x108]                               ; CLASS _OBJC_CLASS_$_NSMutableArray
0052d8 bl       #0x23680                                      
0052dc mov      x29, x29                                      
0052e0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0052e4 mov      x19, x0                                       
0052e8 movi     v0.16b, #0                                    
0052ec stp      q0, q0, [sp, #0x20]                           
0052f0 stp      q0, q0, [sp]                                  
0052f4 mov      x0, x20                                       
0052f8 bl       #0x23f00                                      
0052fc mov      x29, x29                                      
005300 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005304 mov      x20, x0                                       
005308 mov      x2, sp                                        
00530c add      x3, sp, #0x48                                 
005310 mov      w4, #0x10                                     
005314 bl       #0x239e0                                      
005318 mov      x22, x0                                       
00531c cbz      x0, #0x53b4                                   
005320 ldr      x8, [sp, #0x10]                               
005324 ldr      x26, [x8]                                     
005328 adrp     x21, #0x34000                                 
00532c add      x21, x21, #0x8b8                               ; @visible
005330 mov      x27, #0                                       
005334 ldr      x8, [sp, #0x10]                               
005338 ldr      x8, [x8]                                      
00533c cmp      x8, x26                                       
005340 b.eq     #0x534c                                       
005344 mov      x0, x20                                       
005348 bl       #0x2327c                                       ; _objc_enumerationMutation
00534c ldr      x8, [sp, #8]                                  
005350 ldr      x23, [x8, x27, lsl #3]                        
005354 mov      x0, x23                                       
005358 mov      x2, x21                                       
00535c bl       #0x246a0                                      
005360 mov      x29, x29                                      
005364 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005368 mov      x24, x0                                       
00536c bl       #0x23760                                      
005370 mov      x25, x0                                       
005374 mov      x0, x24                                       
005378 bl       #0x232f4                                       ; _objc_release
00537c tbnz     w25, #0, #0x538c                              
005380 mov      x0, x19                                       
005384 mov      x2, x23                                       
005388 bl       #0x23480                                      
00538c add      x27, x27, #1                                  
005390 cmp      x22, x27                                      
005394 b.ne     #0x5334                                       
005398 mov      x2, sp                                        
00539c add      x3, sp, #0x48                                 
0053a0 mov      x0, x20                                       
0053a4 mov      w4, #0x10                                     
0053a8 bl       #0x239e0                                      
0053ac mov      x22, x0                                       
0053b0 cbnz     x0, #0x5330                                   
0053b4 mov      x0, x20                                       
0053b8 bl       #0x232f4                                       ; _objc_release
0053bc ldur     x8, [x29, #-0x58]                             
0053c0 adrp     x9, #0x34000                                  
0053c4 ldr      x9, [x9, #0x170]                               ; ___stack_chk_guard
0053c8 ldr      x9, [x9]                                      
0053cc cmp      x9, x8                                        
0053d0 b.ne     #0x53f8                                       
0053d4 mov      x0, x19                                       
0053d8 ldp      x29, x30, [sp, #0x120]                        
0053dc ldp      x20, x19, [sp, #0x110]                        
0053e0 ldp      x22, x21, [sp, #0x100]                        
0053e4 ldp      x24, x23, [sp, #0xf0]                         
0053e8 ldp      x26, x25, [sp, #0xe0]                         
0053ec ldp      x28, x27, [sp, #0xd0]                         
0053f0 add      sp, sp, #0x130                                
0053f4 b        #0x23240                                       ; _objc_autoreleaseReturnValue
0053f8 bl       #0x231bc                                       ; ___stack_chk_fail
0053fc b        #0x541c                                       
005400 mov      x21, x0                                       
005404 b        #0x5428                                       
005408 b        #0x541c                                       
00540c mov      x21, x0                                       
005410 mov      x0, x24                                       
005414 bl       #0x232f4                                       ; _objc_release
005418 b        #0x5420                                       
00541c mov      x21, x0                                       
005420 mov      x0, x20                                       
005424 bl       #0x232f4                                       ; _objc_release
005428 mov      x0, x19                                       
00542c bl       #0x232f4                                       ; _objc_release
005430 b        #0x5438                                       
005434 mov      x21, x0                                       
005438 mov      x0, x21                                       
00543c bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.saveConfigs:
005440 stp      x22, x21, [sp, #-0x30]!                       
005444 stp      x20, x19, [sp, #0x10]                         
005448 stp      x29, x30, [sp, #0x20]                         
00544c add      x29, sp, #0x20                                
005450 mov      x20, x0                                       
005454 adrp     x21, #0x3a000                                 
005458 ldr      x0, [x21, #0x100]                              ; CLASS _OBJC_CLASS_$_NSUserDefaults
00545c bl       #0x25920                                      
005460 mov      x29, x29                                      
005464 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005468 mov      x19, x0                                       
00546c mov      x0, x20                                       
005470 bl       #0x23f00                                      
005474 mov      x29, x29                                      
005478 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00547c mov      x20, x0                                       
005480 adrp     x3, #0x34000                                  
005484 add      x3, x3, #0x778                                 ; @WPGroupConfigs_v2
005488 mov      x0, x19                                       
00548c mov      x2, x20                                       
005490 bl       #0x25160                                      
005494 mov      x0, x20                                       
005498 bl       #0x232f4                                       ; _objc_release
00549c mov      x0, x19                                       
0054a0 bl       #0x232f4                                       ; _objc_release
0054a4 ldr      x0, [x21, #0x100]                              ; CLASS _OBJC_CLASS_$_NSUserDefaults
0054a8 bl       #0x25920                                      
0054ac mov      x29, x29                                      
0054b0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0054b4 mov      x19, x0                                       
0054b8 bl       #0x25aa0                                      
0054bc mov      x0, x19                                       
0054c0 ldp      x29, x30, [sp, #0x20]                         
0054c4 ldp      x20, x19, [sp, #0x10]                         
0054c8 ldp      x22, x21, [sp], #0x30                         
0054cc b        #0x232f4                                       ; _objc_release
0054d0 b        #0x54e8                                       
0054d4 mov      x1, x20                                       
0054d8 mov      x20, x0                                       
0054dc mov      x0, x1                                        
0054e0 bl       #0x232f4                                       ; _objc_release
0054e4 b        #0x54ec                                       
0054e8 mov      x20, x0                                       
0054ec mov      x0, x19                                       
0054f0 bl       #0x232f4                                       ; _objc_release
0054f4 mov      x0, x20                                       
0054f8 bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.renameGroup:toName::
0054fc stp      x26, x25, [sp, #-0x50]!                       
005500 stp      x24, x23, [sp, #0x10]                         
005504 stp      x22, x21, [sp, #0x20]                         
005508 stp      x20, x19, [sp, #0x30]                         
00550c stp      x29, x30, [sp, #0x40]                         
005510 add      x29, sp, #0x40                                
005514 mov      x20, x3                                       
005518 mov      x21, x0                                       
00551c mov      x0, x2                                        
005520 bl       #0x23300                                       ; _objc_retain
005524 mov      x19, x0                                       
005528 mov      x0, x20                                       
00552c bl       #0x23300                                       ; _objc_retain
005530 mov      x20, x0                                       
005534 mov      x22, #0                                       
005538 adrp     x24, #0x34000                                 
00553c add      x24, x24, #0x898                               ; @id
005540 mov      x0, x21                                       
005544 bl       #0x23f00                                      
005548 mov      x29, x29                                      
00554c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005550 mov      x23, x0                                       
005554 bl       #0x239c0                                      
005558 mov      x25, x0                                       
00555c mov      x0, x23                                       
005560 bl       #0x232f4                                       ; _objc_release
005564 cmp      x22, x25                                      
005568 b.hs     #0x5630                                       
00556c mov      x0, x21                                       
005570 bl       #0x23f00                                      
005574 mov      x29, x29                                      
005578 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00557c mov      x25, x0                                       
005580 mov      x2, x22                                       
005584 bl       #0x24660                                      
005588 mov      x29, x29                                      
00558c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005590 mov      x26, x0                                       
005594 bl       #0x24540                                      
005598 mov      x23, x0                                       
00559c mov      x0, x26                                       
0055a0 bl       #0x232f4                                       ; _objc_release
0055a4 mov      x0, x25                                       
0055a8 bl       #0x232f4                                       ; _objc_release
0055ac mov      x0, x23                                       
0055b0 mov      x2, x24                                       
0055b4 bl       #0x246a0                                      
0055b8 mov      x29, x29                                      
0055bc bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0055c0 mov      x25, x0                                       
0055c4 mov      x2, x19                                       
0055c8 bl       #0x24260                                      
0055cc mov      x26, x0                                       
0055d0 mov      x0, x25                                       
0055d4 bl       #0x232f4                                       ; _objc_release
0055d8 cbnz     w26, #0x55ec                                  
0055dc mov      x0, x23                                       
0055e0 bl       #0x232f4                                       ; _objc_release
0055e4 add      x22, x22, #1                                  
0055e8 b        #0x5540                                       
0055ec adrp     x3, #0x34000                                  
0055f0 add      x3, x3, #0x8d8                                 ; @name
0055f4 mov      x0, x23                                       
0055f8 mov      x2, x20                                       
0055fc bl       #0x25180                                      
005600 mov      x0, x21                                       
005604 bl       #0x23f00                                      
005608 mov      x29, x29                                      
00560c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005610 mov      x24, x0                                       
005614 mov      x2, x23                                       
005618 mov      x3, x22                                       
00561c bl       #0x25140                                      
005620 mov      x0, x24                                       
005624 bl       #0x232f4                                       ; _objc_release
005628 mov      x0, x23                                       
00562c bl       #0x232f4                                       ; _objc_release
005630 mov      x0, x21                                       
005634 bl       #0x24a20                                      
005638 mov      x0, x20                                       
00563c bl       #0x232f4                                       ; _objc_release
005640 mov      x0, x19                                       
005644 ldp      x29, x30, [sp, #0x40]                         
005648 ldp      x20, x19, [sp, #0x30]                         
00564c ldp      x22, x21, [sp, #0x20]                         
005650 ldp      x24, x23, [sp, #0x10]                         
005654 ldp      x26, x25, [sp], #0x50                         
005658 b        #0x232f4                                       ; _objc_release
00565c mov      x21, x0                                       
005660 mov      x0, x24                                       
005664 b        #0x569c                                       
005668 b        #0x56a4                                       
00566c b        #0x56b4                                       
005670 mov      x21, x0                                       
005674 b        #0x568c                                       
005678 b        #0x56a4                                       
00567c b        #0x56b4                                       
005680 mov      x21, x0                                       
005684 mov      x0, x26                                       
005688 bl       #0x232f4                                       ; _objc_release
00568c mov      x0, x25                                       
005690 b        #0x56ac                                       
005694 mov      x21, x0                                       
005698 mov      x0, x25                                       
00569c bl       #0x232f4                                       ; _objc_release
0056a0 b        #0x56a8                                       
0056a4 mov      x21, x0                                       
0056a8 mov      x0, x23                                       
0056ac bl       #0x232f4                                       ; _objc_release
0056b0 b        #0x56b8                                       
0056b4 mov      x21, x0                                       
0056b8 mov      x0, x20                                       
0056bc bl       #0x232f4                                       ; _objc_release
0056c0 mov      x0, x19                                       
0056c4 bl       #0x232f4                                       ; _objc_release
0056c8 mov      x0, x21                                       
0056cc bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.setGroup:visible::
0056d0 stp      x26, x25, [sp, #-0x50]!                       
0056d4 stp      x24, x23, [sp, #0x10]                         
0056d8 stp      x22, x21, [sp, #0x20]                         
0056dc stp      x20, x19, [sp, #0x30]                         
0056e0 stp      x29, x30, [sp, #0x40]                         
0056e4 add      x29, sp, #0x40                                
0056e8 mov      x21, x3                                       
0056ec mov      x20, x0                                       
0056f0 mov      x0, x2                                        
0056f4 bl       #0x23300                                       ; _objc_retain
0056f8 mov      x19, x0                                       
0056fc mov      x22, #0                                       
005700 adrp     x24, #0x34000                                 
005704 add      x24, x24, #0x898                               ; @id
005708 mov      x0, x20                                       
00570c bl       #0x23f00                                      
005710 mov      x29, x29                                      
005714 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005718 mov      x23, x0                                       
00571c bl       #0x239c0                                      
005720 mov      x25, x0                                       
005724 mov      x0, x23                                       
005728 bl       #0x232f4                                       ; _objc_release
00572c cmp      x22, x25                                      
005730 b.hs     #0x581c                                       
005734 mov      x0, x20                                       
005738 bl       #0x23f00                                      
00573c mov      x29, x29                                      
005740 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005744 mov      x25, x0                                       
005748 mov      x2, x22                                       
00574c bl       #0x24660                                      
005750 mov      x29, x29                                      
005754 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005758 mov      x26, x0                                       
00575c bl       #0x24540                                      
005760 mov      x23, x0                                       
005764 mov      x0, x26                                       
005768 bl       #0x232f4                                       ; _objc_release
00576c mov      x0, x25                                       
005770 bl       #0x232f4                                       ; _objc_release
005774 mov      x0, x23                                       
005778 mov      x2, x24                                       
00577c bl       #0x246a0                                      
005780 mov      x29, x29                                      
005784 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005788 mov      x25, x0                                       
00578c mov      x2, x19                                       
005790 bl       #0x24260                                      
005794 mov      x26, x0                                       
005798 mov      x0, x25                                       
00579c bl       #0x232f4                                       ; _objc_release
0057a0 cbnz     w26, #0x57b4                                  
0057a4 mov      x0, x23                                       
0057a8 bl       #0x232f4                                       ; _objc_release
0057ac add      x22, x22, #1                                  
0057b0 b        #0x5708                                       
0057b4 adrp     x8, #0x3a000                                  
0057b8 ldr      x0, [x8, #0x110]                               ; CLASS _OBJC_CLASS_$_NSNumber
0057bc mov      x2, x21                                       
0057c0 bl       #0x245e0                                      
0057c4 mov      x29, x29                                      
0057c8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0057cc mov      x24, x0                                       
0057d0 adrp     x3, #0x34000                                  
0057d4 add      x3, x3, #0x8b8                                 ; @visible
0057d8 mov      x0, x23                                       
0057dc mov      x2, x24                                       
0057e0 bl       #0x25180                                      
0057e4 mov      x0, x24                                       
0057e8 bl       #0x232f4                                       ; _objc_release
0057ec mov      x0, x20                                       
0057f0 bl       #0x23f00                                      
0057f4 mov      x29, x29                                      
0057f8 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0057fc mov      x24, x0                                       
005800 mov      x2, x23                                       
005804 mov      x3, x22                                       
005808 bl       #0x25140                                      
00580c mov      x0, x24                                       
005810 bl       #0x232f4                                       ; _objc_release
005814 mov      x0, x23                                       
005818 bl       #0x232f4                                       ; _objc_release
00581c tbnz     w21, #0, #0x58cc                              
005820 mov      x0, x20                                       
005824 bl       #0x23a60                                      
005828 mov      x29, x29                                      
00582c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005830 mov      x21, x0                                       
005834 mov      x2, x19                                       
005838 bl       #0x24260                                      
00583c mov      x22, x0                                       
005840 mov      x0, x21                                       
005844 bl       #0x232f4                                       ; _objc_release
005848 cbz      w22, #0x58cc                                  
00584c mov      x0, x20                                       
005850 bl       #0x23420                                      
005854 mov      x29, x29                                      
005858 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
00585c mov      x21, x0                                       
005860 bl       #0x239c0                                      
005864 cbz      x0, #0x58b4                                   
005868 mov      x0, x21                                       
00586c bl       #0x23e00                                      
005870 mov      x29, x29                                      
005874 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005878 mov      x22, x0                                       
00587c adrp     x2, #0x34000                                  
005880 add      x2, x2, #0x898                                 ; @id
005884 bl       #0x246a0                                      
005888 mov      x29, x29                                      
00588c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005890 mov      x23, x0                                       
005894 mov      x0, x20                                       
005898 mov      x2, x23                                       
00589c bl       #0x24dc0                                      
0058a0 mov      x0, x23                                       
0058a4 bl       #0x232f4                                       ; _objc_release
0058a8 mov      x0, x22                                       
0058ac bl       #0x232f4                                       ; _objc_release
0058b0 b        #0x58c4                                       
0058b4 adrp     x2, #0x34000                                  
0058b8 add      x2, x2, #0x858                                 ; @全部
0058bc mov      x0, x20                                       
0058c0 bl       #0x24dc0                                      
0058c4 mov      x0, x21                                       
0058c8 bl       #0x232f4                                       ; _objc_release
0058cc mov      x0, x20                                       
0058d0 bl       #0x24a20                                      
0058d4 mov      x0, x19                                       
0058d8 ldp      x29, x30, [sp, #0x40]                         
0058dc ldp      x20, x19, [sp, #0x30]                         
0058e0 ldp      x22, x21, [sp, #0x20]                         
0058e4 ldp      x24, x23, [sp, #0x10]                         
0058e8 ldp      x26, x25, [sp], #0x50                         
0058ec b        #0x232f4                                       ; _objc_release
0058f0 mov      x20, x0                                       
0058f4 mov      x0, x23                                       
0058f8 bl       #0x232f4                                       ; _objc_release
0058fc b        #0x5904                                       
005900 mov      x20, x0                                       
005904 mov      x0, x22                                       
005908 bl       #0x232f4                                       ; _objc_release
00590c b        #0x592c                                       
005910 b        #0x5980                                       
005914 b        #0x5918                                       
005918 mov      x20, x0                                       
00591c mov      x0, x24                                       
005920 b        #0x5968                                       
005924 b        #0x5928                                       
005928 mov      x20, x0                                       
00592c mov      x0, x21                                       
005930 b        #0x5978                                       
005934 b        #0x5970                                       
005938 b        #0x5980                                       
00593c mov      x20, x0                                       
005940 b        #0x5958                                       
005944 b        #0x5970                                       
005948 b        #0x5980                                       
00594c mov      x20, x0                                       
005950 mov      x0, x26                                       
005954 bl       #0x232f4                                       ; _objc_release
005958 mov      x0, x25                                       
00595c b        #0x5978                                       
005960 mov      x20, x0                                       
005964 mov      x0, x25                                       
005968 bl       #0x232f4                                       ; _objc_release
00596c b        #0x5974                                       
005970 mov      x20, x0                                       
005974 mov      x0, x23                                       
005978 bl       #0x232f4                                       ; _objc_release
00597c b        #0x5984                                       
005980 mov      x20, x0                                       
005984 mov      x0, x19                                       
005988 bl       #0x232f4                                       ; _objc_release
00598c mov      x0, x20                                       
005990 bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.moveGroup:forward::
005994 stp      x28, x27, [sp, #-0x60]!                       
005998 stp      x26, x25, [sp, #0x10]                         
00599c stp      x24, x23, [sp, #0x20]                         
0059a0 stp      x22, x21, [sp, #0x30]                         
0059a4 stp      x20, x19, [sp, #0x40]                         
0059a8 stp      x29, x30, [sp, #0x50]                         
0059ac add      x29, sp, #0x50                                
0059b0 mov      x22, x3                                       
0059b4 mov      x20, x0                                       
0059b8 mov      x0, x2                                        
0059bc bl       #0x23300                                       ; _objc_retain
0059c0 mov      x19, x0                                       
0059c4 mov      x21, #0                                       
0059c8 adrp     x23, #0x34000                                 
0059cc add      x23, x23, #0x898                               ; @id
0059d0 mov      x0, x20                                       
0059d4 bl       #0x23f00                                      
0059d8 mov      x29, x29                                      
0059dc bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
0059e0 mov      x24, x0                                       
0059e4 bl       #0x239c0                                      
0059e8 mov      x25, x0                                       
0059ec mov      x0, x24                                       
0059f0 bl       #0x232f4                                       ; _objc_release
0059f4 cmp      x21, x25                                      
0059f8 b.hs     #0x5af8                                       
0059fc mov      x0, x20                                       
005a00 bl       #0x23f00                                      
005a04 mov      x29, x29                                      
005a08 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005a0c mov      x24, x0                                       
005a10 mov      x2, x21                                       
005a14 bl       #0x24660                                      
005a18 mov      x29, x29                                      
005a1c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005a20 mov      x25, x0                                       
005a24 mov      x2, x23                                       
005a28 bl       #0x246a0                                      
005a2c mov      x29, x29                                      
005a30 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005a34 mov      x26, x0                                       
005a38 mov      x2, x19                                       
005a3c bl       #0x24260                                      
005a40 mov      x27, x0                                       
005a44 mov      x0, x26                                       
005a48 bl       #0x232f4                                       ; _objc_release
005a4c mov      x0, x25                                       
005a50 bl       #0x232f4                                       ; _objc_release
005a54 mov      x0, x24                                       
005a58 bl       #0x232f4                                       ; _objc_release
005a5c tbnz     w27, #0, #0x5a68                              
005a60 add      x21, x21, #1                                  
005a64 b        #0x59d0                                       
005a68 cbz      x21, #0x5aa4                                  
005a6c cbz      w22, #0x5aa4                                  
005a70 mov      x0, x20                                       
005a74 bl       #0x23f00                                      
005a78 mov      x29, x29                                      
005a7c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005a80 mov      x22, x0                                       
005a84 sub      x3, x21, #1                                    ; nil
005a88 mov      x2, x21                                       
005a8c bl       #0x23cc0                                      
005a90 mov      x0, x22                                       
005a94 bl       #0x232f4                                       ; _objc_release
005a98 mov      x0, x20                                       
005a9c bl       #0x24a20                                      
005aa0 b        #0x5af8                                       
005aa4 tbnz     w22, #0, #0x5af8                              
005aa8 mov      x0, x20                                       
005aac bl       #0x23f00                                      
005ab0 mov      x29, x29                                      
005ab4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005ab8 mov      x22, x0                                       
005abc bl       #0x239c0                                      
005ac0 sub      x23, x0, #1                                   
005ac4 mov      x0, x22                                       
005ac8 bl       #0x232f4                                       ; _objc_release
005acc cmp      x21, x23                                      
005ad0 b.hs     #0x5af8                                       
005ad4 mov      x0, x20                                       
005ad8 bl       #0x23f00                                      
005adc mov      x29, x29                                      
005ae0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005ae4 mov      x22, x0                                       
005ae8 add      x3, x21, #1                                   
005aec mov      x2, x21                                       
005af0 bl       #0x23cc0                                      
005af4 b        #0x5a90                                       
005af8 mov      x0, x19                                       
005afc ldp      x29, x30, [sp, #0x50]                         
005b00 ldp      x20, x19, [sp, #0x40]                         
005b04 ldp      x22, x21, [sp, #0x30]                         
005b08 ldp      x24, x23, [sp, #0x20]                         
005b0c ldp      x26, x25, [sp, #0x10]                         
005b10 ldp      x28, x27, [sp], #0x60                         
005b14 b        #0x232f4                                       ; _objc_release
005b18 b        #0x5b20                                       
005b1c b        #0x5b20                                       
005b20 mov      x20, x0                                       
005b24 mov      x0, x22                                       
005b28 b        #0x5b5c                                       
005b2c b        #0x5b64                                       
005b30 mov      x20, x0                                       
005b34 b        #0x5b48                                       
005b38 b        #0x5b54                                       
005b3c mov      x20, x0                                       
005b40 mov      x0, x26                                       
005b44 bl       #0x232f4                                       ; _objc_release
005b48 mov      x0, x25                                       
005b4c bl       #0x232f4                                       ; _objc_release
005b50 b        #0x5b58                                       
005b54 mov      x20, x0                                       
005b58 mov      x0, x24                                       
005b5c bl       #0x232f4                                       ; _objc_release
005b60 b        #0x5b68                                       
005b64 mov      x20, x0                                       
005b68 mov      x0, x19                                       
005b6c bl       #0x232f4                                       ; _objc_release
005b70 mov      x0, x20                                       
005b74 bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.resetConfigs:
005b78 stp      x20, x19, [sp, #-0x20]!                       
005b7c stp      x29, x30, [sp, #0x10]                         
005b80 add      x29, sp, #0x10                                
005b84 mov      x19, x0                                       
005b88 adrp     x0, #0x36000                                  
005b8c add      x0, x0, #0x298                                 ; _OBJC_CLASS_$_NSConstantArray
005b90 bl       #0x24540                                      
005b94 mov      x20, x0                                       
005b98 mov      x0, x19                                       
005b9c mov      x2, x20                                       
005ba0 bl       #0x24fc0                                      
005ba4 mov      x0, x20                                       
005ba8 bl       #0x232f4                                       ; _objc_release
005bac adrp     x2, #0x34000                                  
005bb0 add      x2, x2, #0x858                                 ; @全部
005bb4 mov      x0, x19                                       
005bb8 bl       #0x24dc0                                      
005bbc mov      x0, x19                                       
005bc0 ldp      x29, x30, [sp, #0x10]                         
005bc4 ldp      x20, x19, [sp], #0x20                         
005bc8 b        #0x24a20                                      
005bcc mov      x19, x0                                       
005bd0 mov      x0, x20                                       
005bd4 bl       #0x232f4                                       ; _objc_release
005bd8 mov      x0, x19                                       
005bdc bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.reloadSessions:
005be0 sub      sp, sp, #0x70                                 
005be4 stp      x28, x27, [sp, #0x10]                         
005be8 stp      x26, x25, [sp, #0x20]                         
005bec stp      x24, x23, [sp, #0x30]                         
005bf0 stp      x22, x21, [sp, #0x40]                         
005bf4 stp      x20, x19, [sp, #0x50]                         
005bf8 stp      x29, x30, [sp, #0x60]                         
005bfc add      x29, sp, #0x60                                
005c00 mov      x19, x0                                       
005c04 adrp     x9, #0x3a000                                  
005c08 ldrb     w8, [x9, #0x850]                              
005c0c adrp     x27, #0x3a000                                 
005c10 tbz      w8, #0, #0x5c20                               
005c14 adrp     x24, #0x34000                                 
005c18 ldr      x24, [x24, #0x120]                             ; ___NSArray0__struct
005c1c b        #0x600c                                       
005c20 mov      w8, #1                                        
005c24 strb     w8, [x9, #0x850]                              
005c28 adrp     x8, #0x3a000                                  
005c2c ldr      x0, [x8, #0x108]                               ; CLASS _OBJC_CLASS_$_NSMutableArray
005c30 bl       #0x23680                                      
005c34 mov      x29, x29                                      
005c38 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005c3c mov      x20, x0                                       
005c40 adrp     x0, #0x35000                                  
005c44 add      x0, x0, #0x9f8                                 ; @MainSessionMgr
005c48 bl       #0x9024                                       
005c4c mov      x29, x29                                      
005c50 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005c54 mov      x21, x0                                       
005c58 cbz      x0, #0x5d18                                   
005c5c adrp     x2, #0x35000                                  
005c60 add      x2, x2, #0xa18                                 ; @topSessions
005c64 mov      x0, x21                                       
005c68 bl       #0x25e20                                      
005c6c mov      x29, x29                                      
005c70 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005c74 mov      x22, x0                                       
005c78 adrp     x2, #0x35000                                  
005c7c add      x2, x2, #0xa38                                 ; @normalSessions
005c80 mov      x0, x21                                       
005c84 bl       #0x25e20                                      
005c88 mov      x29, x29                                      
005c8c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005c90 mov      x23, x0                                       
005c94 ldr      x0, [x27, #0x118]                              ; CLASS _OBJC_CLASS_$_NSArray
005c98 bl       #0x232d0                                       ; _objc_opt_class
005c9c mov      x1, x0                                        
005ca0 mov      x0, x22                                       
005ca4 bl       #0x232dc                                       ; _objc_opt_isKindOfClass
005ca8 tbz      w0, #0, #0x5cb8                               
005cac mov      x0, x20                                       
005cb0 mov      x2, x22                                       
005cb4 bl       #0x234a0                                      
005cb8 ldr      x0, [x27, #0x118]                              ; CLASS _OBJC_CLASS_$_NSArray
005cbc bl       #0x232d0                                       ; _objc_opt_class
005cc0 mov      x1, x0                                        
005cc4 mov      x0, x23                                       
005cc8 bl       #0x232dc                                       ; _objc_opt_isKindOfClass
005ccc tbz      w0, #0, #0x5cdc                               
005cd0 mov      x0, x20                                       
005cd4 mov      x2, x23                                       
005cd8 bl       #0x234a0                                      
005cdc mov      x0, x20                                       
005ce0 bl       #0x239c0                                      
005ce4 cbz      x0, #0x5d08                                   
005ce8 adrp     x8, #0x3a000                                  
005cec strb     wzr, [x8, #0x850]                             
005cf0 mov      x0, x20                                       
005cf4 bl       #0x239a0                                      
005cf8 mov      x24, x0                                       
005cfc mov      x0, x23                                       
005d00 bl       #0x232f4                                       ; _objc_release
005d04 b        #0x5ff4                                       
005d08 mov      x0, x23                                       
005d0c bl       #0x232f4                                       ; _objc_release
005d10 mov      x0, x22                                       
005d14 bl       #0x232f4                                       ; _objc_release
005d18 adrp     x0, #0x34000                                  
005d1c add      x0, x0, #0xbd8                                 ; @MMNewSessionMgr
005d20 bl       #0x9024                                       
005d24 mov      x29, x29                                      
005d28 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005d2c mov      x22, x0                                       
005d30 cbz      x0, #0x5eb0                                   
005d34 adrp     x8, #0x38000                                  
005d38 ldr      x23, [x8, #0xf58]                              ; SEL GetSessionInfoList
005d3c mov      x0, x22                                       
005d40 mov      x1, x23                                       
005d44 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
005d48 tbz      w0, #0, #0x5d9c                               
005d4c mov      x0, x22                                       
005d50 mov      x1, x23                                       
005d54 bl       #0x232b8                                       ; _objc_msgSend
005d58 mov      x29, x29                                      
005d5c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005d60 mov      x24, x0                                       
005d64 ldr      x0, [x27, #0x118]                              ; CLASS _OBJC_CLASS_$_NSArray
005d68 bl       #0x232d0                                       ; _objc_opt_class
005d6c mov      x1, x0                                        
005d70 mov      x0, x24                                       
005d74 bl       #0x232dc                                       ; _objc_opt_isKindOfClass
005d78 tbz      w0, #0, #0x5d94                               
005d7c mov      x0, x24                                       
005d80 bl       #0x239c0                                      
005d84 cbz      x0, #0x5d94                                   
005d88 adrp     x8, #0x3a000                                  
005d8c strb     wzr, [x8, #0x850]                             
005d90 b        #0x5ff4                                       
005d94 mov      x0, x24                                       
005d98 bl       #0x232f4                                       ; _objc_release
005d9c adrp     x8, #0x39000                                  
005da0 ldr      x23, [x8, #0x118]                              ; SEL GetSessionCount
005da4 mov      x0, x22                                       
005da8 mov      x1, x23                                       
005dac bl       #0x232e8                                       ; _objc_opt_respondsToSelector
005db0 tbz      w0, #0, #0x5eb0                               
005db4 mov      x0, x22                                       
005db8 mov      x1, x23                                       
005dbc bl       #0x232b8                                       ; _objc_msgSend
005dc0 cmp      w0, #0x1f4                                    
005dc4 mov      w8, #0x1f4                                    
005dc8 csel     w25, w0, w8, lo                               
005dcc cbz      w0, #0x5e1c                                   
005dd0 mov      w23, #0                                       
005dd4 adrp     x8, #0x39000                                  
005dd8 ldr      x24, [x8, #0x120]                              ; SEL GetSessionAtIndex:
005ddc mov      x0, x22                                       
005de0 mov      x1, x24                                       
005de4 mov      x2, x23                                       
005de8 bl       #0x232b8                                       ; _objc_msgSend
005dec mov      x29, x29                                      
005df0 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005df4 mov      x26, x0                                       
005df8 cbz      x0, #0x5e08                                   
005dfc mov      x0, x20                                       
005e00 mov      x2, x26                                       
005e04 bl       #0x23480                                      
005e08 mov      x0, x26                                       
005e0c bl       #0x232f4                                       ; _objc_release
005e10 add      w23, w23, #1                                  
005e14 cmp      w25, w23                                      
005e18 b.ne     #0x5ddc                                       
005e1c mov      x0, x20                                       
005e20 bl       #0x239c0                                      
005e24 cbz      x0, #0x5eb0                                   
005e28 adrp     x8, #0x3a000                                  
005e2c strb     wzr, [x8, #0x850]                             
005e30 mov      x0, x20                                       
005e34 bl       #0x239a0                                      
005e38 b        #0x5ff0                                       
005e3c b        #0x5e94                                       
005e40 b        #0x5e94                                       
005e44 b        #0x5e94                                       
005e48 mov      x25, x1                                       
005e4c mov      x23, x0                                       
005e50 mov      x0, x24                                       
005e54 b        #0x5e8c                                       
005e58 mov      x23, x0                                       
005e5c b        #0x6110                                       
005e60 mov      x24, x1                                       
005e64 mov      x23, x0                                       
005e68 b        #0x6150                                       
005e6c mov      x24, x1                                       
005e70 mov      x23, x0                                       
005e74 b        #0x6158                                       
005e78 b        #0x5e94                                       
005e7c b        #0x6128                                       
005e80 mov      x25, x1                                       
005e84 mov      x23, x0                                       
005e88 mov      x0, x26                                       
005e8c bl       #0x232f4                                       ; _objc_release
005e90 b        #0x5e9c                                       
005e94 mov      x25, x1                                       
005e98 mov      x23, x0                                       
005e9c cmp      w25, #1                                       
005ea0 b.ne     #0x6108                                       
005ea4 mov      x0, x23                                       
005ea8 bl       #0x2324c                                       ; _objc_begin_catch
005eac bl       #0x23270                                       ; _objc_end_catch
005eb0 mov      x0, x20                                       
005eb4 bl       #0x239c0                                      
005eb8 cbnz     x0, #0x5fe0                                   
005ebc adrp     x0, #0x3a000                                  
005ec0 add      x0, x0, #0x750                                
005ec4 bl       #0x232ac                                       ; _objc_loadWeakRetained
005ec8 mov      x23, x0                                       
005ecc bl       #0x232f4                                       ; _objc_release
005ed0 cbz      x23, #0x5fe0                                  
005ed4 adrp     x0, #0x3a000                                  
005ed8 add      x0, x0, #0x750                                
005edc bl       #0x232ac                                       ; _objc_loadWeakRetained
005ee0 mov      x24, x0                                       
005ee4 adrp     x2, #0x35000                                  
005ee8 add      x2, x2, #0xf8                                  ; @m_tableView
005eec bl       #0x25e20                                      
005ef0 mov      x29, x29                                      
005ef4 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005ef8 mov      x23, x0                                       
005efc mov      x0, x24                                       
005f00 bl       #0x232f4                                       ; _objc_release
005f04 str      x23, [sp, #8]                                 
005f08 cbz      x23, #0x5fd4                                  
005f0c adrp     x0, #0x3a000                                  
005f10 add      x0, x0, #0x750                                
005f14 bl       #0x232ac                                       ; _objc_loadWeakRetained
005f18 mov      x24, x0                                       
005f1c adrp     x8, #0x39000                                  
005f20 ldr      x23, [x8, #0x140]                              ; SEL logicGetSessionAtIndexPath:
005f24 mov      x1, x23                                       
005f28 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
005f2c mov      x25, x0                                       
005f30 mov      x0, x24                                       
005f34 bl       #0x232f4                                       ; _objc_release
005f38 tbz      w25, #0, #0x5fd4                              
005f3c ldr      x0, [sp, #8]                                  
005f40 mov      x2, #0                                        
005f44 bl       #0x245c0                                      
005f48 mov      x25, x0                                       
005f4c cmp      x0, #1                                        
005f50 b.lt     #0x5fd4                                       
005f54 mov      x27, #0                                       
005f58 adrp     x8, #0x3a000                                  
005f5c ldr      x0, [x8, #0x258]                               ; CLASS _OBJC_CLASS_$_NSIndexPath
005f60 mov      x2, x27                                       
005f64 mov      x3, #0                                        
005f68 bl       #0x24020                                      
005f6c mov      x29, x29                                      
005f70 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005f74 mov      x26, x0                                       
005f78 adrp     x0, #0x3a000                                  
005f7c add      x0, x0, #0x750                                
005f80 bl       #0x232ac                                       ; _objc_loadWeakRetained
005f84 mov      x28, x0                                       
005f88 mov      x1, x23                                       
005f8c mov      x2, x26                                       
005f90 bl       #0x232b8                                       ; _objc_msgSend
005f94 mov      x29, x29                                      
005f98 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
005f9c mov      x24, x0                                       
005fa0 mov      x0, x28                                       
005fa4 bl       #0x232f4                                       ; _objc_release
005fa8 cbz      x24, #0x5fb8                                  
005fac mov      x0, x20                                       
005fb0 mov      x2, x24                                       
005fb4 bl       #0x23480                                      
005fb8 mov      x0, x24                                       
005fbc bl       #0x232f4                                       ; _objc_release
005fc0 mov      x0, x26                                       
005fc4 bl       #0x232f4                                       ; _objc_release
005fc8 add      x27, x27, #1                                  
005fcc cmp      x25, x27                                      
005fd0 b.ne     #0x5f58                                       
005fd4 ldr      x0, [sp, #8]                                  
005fd8 bl       #0x232f4                                       ; _objc_release
005fdc adrp     x27, #0x3a000                                 
005fe0 adrp     x8, #0x3a000                                  
005fe4 strb     wzr, [x8, #0x850]                             
005fe8 mov      x0, x20                                       
005fec bl       #0x239a0                                      
005ff0 mov      x24, x0                                       
005ff4 mov      x0, x22                                       
005ff8 bl       #0x232f4                                       ; _objc_release
005ffc mov      x0, x21                                       
006000 bl       #0x232f4                                       ; _objc_release
006004 mov      x0, x20                                       
006008 bl       #0x232f4                                       ; _objc_release
00600c mov      x0, x19                                       
006010 mov      x2, x24                                       
006014 bl       #0x24ba0                                      
006018 mov      x0, x24                                       
00601c bl       #0x232f4                                       ; _objc_release
006020 mov      x0, x19                                       
006024 bl       #0x23560                                      
006028 mov      x29, x29                                      
00602c bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
006030 mov      x20, x0                                       
006034 ldr      x0, [x27, #0x118]                              ; CLASS _OBJC_CLASS_$_NSArray
006038 bl       #0x232d0                                       ; _objc_opt_class
00603c mov      x1, x0                                        
006040 mov      x0, x20                                       
006044 bl       #0x232dc                                       ; _objc_opt_isKindOfClass
006048 mov      x21, x0                                       
00604c mov      x0, x20                                       
006050 bl       #0x232f4                                       ; _objc_release
006054 tbnz     w21, #0, #0x6068                              
006058 adrp     x2, #0x34000                                  
00605c ldr      x2, [x2, #0x120]                               ; ___NSArray0__struct
006060 mov      x0, x19                                       
006064 bl       #0x24ba0                                      
006068 mov      x0, x19                                       
00606c ldp      x29, x30, [sp, #0x60]                         
006070 ldp      x20, x19, [sp, #0x50]                         
006074 ldp      x22, x21, [sp, #0x40]                         
006078 ldp      x24, x23, [sp, #0x30]                         
00607c ldp      x26, x25, [sp, #0x20]                         
006080 ldp      x28, x27, [sp, #0x10]                         
006084 add      sp, sp, #0x70                                 
006088 b        #0x24840                                      
00608c b        #0x60c0                                       
006090 mov      x25, x1                                       
006094 mov      x23, x0                                       
006098 mov      x0, x24                                       
00609c b        #0x60e0                                       
0060a0 mov      x25, x1                                       
0060a4 mov      x23, x0                                       
0060a8 str      x24, [sp, #8]                                 
0060ac b        #0x60e4                                       
0060b0 mov      x25, x1                                       
0060b4 mov      x23, x0                                       
0060b8 mov      x28, x24                                      
0060bc b        #0x60d4                                       
0060c0 mov      x25, x1                                       
0060c4 mov      x23, x0                                       
0060c8 b        #0x60e4                                       
0060cc mov      x25, x1                                       
0060d0 mov      x23, x0                                       
0060d4 mov      x0, x28                                       
0060d8 bl       #0x232f4                                       ; _objc_release
0060dc mov      x0, x26                                       
0060e0 bl       #0x232f4                                       ; _objc_release
0060e4 ldr      x0, [sp, #8]                                  
0060e8 bl       #0x232f4                                       ; _objc_release
0060ec cmp      w25, #1                                       
0060f0 b.ne     #0x6108                                       
0060f4 mov      x0, x23                                       
0060f8 bl       #0x2324c                                       ; _objc_begin_catch
0060fc bl       #0x23270                                       ; _objc_end_catch
006100 b        #0x5fdc                                       
006104 mov      x23, x0                                       
006108 mov      x0, x22                                       
00610c bl       #0x232f4                                       ; _objc_release
006110 mov      x0, x21                                       
006114 bl       #0x232f4                                       ; _objc_release
006118 b        #0x612c                                       
00611c mov      x23, x0                                       
006120 mov      x0, x24                                       
006124 b        #0x6130                                       
006128 mov      x23, x0                                       
00612c mov      x0, x20                                       
006130 bl       #0x232f4                                       ; _objc_release
006134 mov      x0, x23                                       
006138 bl       #0x231b0                                       ; __Unwind_Resume
00613c mov      x24, x1                                       
006140 mov      x1, x23                                       
006144 mov      x23, x0                                       
006148 mov      x0, x1                                        
00614c bl       #0x232f4                                       ; _objc_release
006150 mov      x0, x22                                       
006154 bl       #0x232f4                                       ; _objc_release
006158 cmp      w24, #1                                       
00615c b.ne     #0x6110                                       
006160 mov      x0, x23                                       
006164 bl       #0x2324c                                       ; _objc_begin_catch
006168 bl       #0x23270                                       ; _objc_end_catch
00616c b        #0x5d18                                       

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

WCPulseSessionMgr.isChatSession::
007abc stp      x20, x19, [sp, #-0x20]!                       
007ac0 stp      x29, x30, [sp, #0x10]                         
007ac4 add      x29, sp, #0x10                                
007ac8 mov      x0, x2                                        
007acc bl       #0x23300                                       ; _objc_retain
007ad0 mov      x19, x0                                       
007ad4 cbz      x0, #0x7b04                                   
007ad8 adrp     x8, #0x38000                                  
007adc ldr      x20, [x8, #0xf18]                              ; SEL isChatSession
007ae0 mov      x0, x19                                       
007ae4 mov      x1, x20                                       
007ae8 bl       #0x232e8                                       ; _objc_opt_respondsToSelector
007aec tbz      w0, #0, #0x7b24                               
007af0 mov      x0, x19                                       
007af4 mov      x1, x20                                       
007af8 bl       #0x232b8                                       ; _objc_msgSend
007afc mov      x20, x0                                       
007b00 b        #0x7b40                                       
007b04 mov      w20, #0                                       
007b08 b        #0x7b40                                       
007b0c mov      x20, x0                                       
007b10 cmp      w1, #1                                        
007b14 b.ne     #0x7b60                                       
007b18 mov      x0, x20                                       
007b1c bl       #0x2324c                                       ; _objc_begin_catch
007b20 bl       #0x23270                                       ; _objc_end_catch
007b24 mov      x0, x19                                       
007b28 bl       #0x79a0                                       
007b2c mov      x29, x29                                      
007b30 bl       #0x23324                                       ; _objc_retainAutoreleasedReturnValue
007b34 cmp      x0, #0                                        
007b38 cset     w20, ne                                       
007b3c bl       #0x232f4                                       ; _objc_release
007b40 mov      x0, x19                                       
007b44 bl       #0x232f4                                       ; _objc_release
007b48 mov      x0, x20                                       
007b4c ldp      x29, x30, [sp, #0x10]                         
007b50 ldp      x20, x19, [sp], #0x20                         
007b54 ret                                                    
007b58 b        #0x7b5c                                       
007b5c mov      x20, x0                                       
007b60 mov      x0, x19                                       
007b64 bl       #0x232f4                                       ; _objc_release
007b68 mov      x0, x20                                       
007b6c bl       #0x231b0                                       ; __Unwind_Resume

WCPulseSessionMgr.groupConfigs:
007b70 ldr      x0, [x0, #8]                                  
007b74 ret                                                    

WCPulseSessionMgr.setGroupConfigs::
007b78 mov      x1, x2                                        
007b7c add      x0, x0, #8                                    
007b80 b        #0x23348                                       ; _objc_storeStrong

WCPulseSessionMgr.currentSelectGroup:
007b84 ldr      x0, [x0, #0x10]                               
007b88 ret                                                    

WCPulseSessionMgr.setCurrentSelectGroup::
007b8c mov      x1, x2                                        
007b90 add      x0, x0, #0x10                                 
007b94 b        #0x23348                                       ; _objc_storeStrong

WCPulseSessionMgr.allSessions:
007b98 ldr      x0, [x0, #0x18]                               
007b9c ret                                                    

WCPulseSessionMgr.setAllSessions::
007ba0 mov      x1, x2                                        
007ba4 add      x0, x0, #0x18                                 
007ba8 b        #0x23348                                       ; _objc_storeStrong

WCPulseSessionMgr.filteredTopSessions:
007bac ldr      x0, [x0, #0x20]                               
007bb0 ret                                                    

WCPulseSessionMgr.setFilteredTopSessions::
007bb4 mov      x1, x2                                        
007bb8 add      x0, x0, #0x20                                 
007bbc b        #0x23348                                       ; _objc_storeStrong

WCPulseSessionMgr.filteredNormalSessions:
007bc0 ldr      x0, [x0, #0x28]                               
007bc4 ret                                                    

WCPulseSessionMgr.setFilteredNormalSessions::
007bc8 mov      x1, x2                                        
007bcc add      x0, x0, #0x28                                 
007bd0 b        #0x23348                                       ; _objc_storeStrong

WCPulseSessionMgr.unreadCounts:
007bd4 ldr      x0, [x0, #0x30]                               
007bd8 ret                                                    

WCPulseSessionMgr.setUnreadCounts::
007bdc mov      x1, x2                                        
007be0 add      x0, x0, #0x30                                 
007be4 b        #0x23348                                       ; _objc_storeStrong

WCPulseSessionMgr..cxx_destruct:
007be8 stp      x20, x19, [sp, #-0x20]!                       
007bec stp      x29, x30, [sp, #0x10]                         
007bf0 add      x29, sp, #0x10                                
007bf4 mov      x19, x0                                       
007bf8 add      x0, x0, #0x30                                 
007bfc mov      x1, #0                                        
007c00 bl       #0x23348                                       ; _objc_storeStrong
007c04 add      x0, x19, #0x28                                
007c08 mov      x1, #0                                        
007c0c bl       #0x23348                                       ; _objc_storeStrong
007c10 add      x0, x19, #0x20                                
007c14 mov      x1, #0                                        
007c18 bl       #0x23348                                       ; _objc_storeStrong
007c1c add      x0, x19, #0x18                                
007c20 mov      x1, #0                                        
007c24 bl       #0x23348                                       ; _objc_storeStrong
007c28 add      x0, x19, #0x10                                
007c2c mov      x1, #0                                        
007c30 bl       #0x23348                                       ; _objc_storeStrong
007c34 add      x0, x19, #8                                   
007c38 mov      x1, #0                                        
007c3c ldp      x29, x30, [sp, #0x10]                         
007c40 ldp      x20, x19, [sp], #0x20                         
007c44 b        #0x23348                                       ; _objc_storeStrong
