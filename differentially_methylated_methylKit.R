library(methylKit)
file.list<-list("/public/home/wyyy/HPV/WGBS/Mehtykit_input/WPP-W-15.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WPP-W-37.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WPP-W-38.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WPP-W-39.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WPP-W-44.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WPP-W-45.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WPP-W-57.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WPP-W-59.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1002.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1003.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1004.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1005.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1008.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1009.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1010.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1011.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1016.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1017.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1020.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1021.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1026.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1027.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1032.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1033.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1034.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1035.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1038.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1039.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1044.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1045.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1046.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1047.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1058.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-1059.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-10.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-11.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-60.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-61.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-62.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-63.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-64.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-65.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-70.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-71.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-74.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-75.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-78.CpG.methykit.txt",
                "/public/home/wyyy/HPV/WGBS/Mehtykit_input/WP-W-79.CpG.methykit.txt")
myobj = methRead(file.list,
                 assembly = "hg38",
                 sample.id = list("WPP-W-15","WPP-W-37","WPP-W-38","WPP-W-39","WPP-W-44","WPP-W-45","WPP-W-57","WPP-W-59",
                                  "WP-W-1002","WP-W-1003","WP-W-1004","WP-W-1005","WP-W-1008","WP-W-1009",
                                  "WP-W-1010","WP-W-1011","WP-W-1016","WP-W-1017","WP-W-1020","WP-W-1021",
                                  "WP-W-1026","WP-W-1027","WP-W-1032","WP-W-1033","WP-W-1034","WP-W-1035",
                                  "WP-W-1038","WP-W-1039","WP-W-1044","WP-W-1045","WP-W-1046","WP-W-1047",
                                  "WP-W-1058","WP-W-1059","WP-W-10","WP-W-11","WP-W-60","WP-W-61","WP-W-62","WP-W-63","WP-W-64",
                                  "WP-W-65","WP-W-70","WP-W-71","WP-W-74","WP-W-75","WP-W-78","WP-W-79"),
                 treatment = c(0,0,1,0,1,0,0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0),
                 context = "CpG")
meth<-unite(myobj, destrand=FALSE)
myDiff<-calculateDiffMeth(meth)
myDiff25p_all<-getMethylDiff(myDiff,difference=25,qvalue=0.01,type="all")
save(meth,myDiff,myDiff25p_all,file = "/public/home/wyyy/HPV/WGBS/methylKit_dml.RData")
regions<-tileMethylCounts(myobj,win.size=1000,step.size=1000)
save(myobj,regions,file = "/public/home/wyyy/HPV/WGBS/methylKit_base.RData")
meth_region<-unite(regions, destrand=FALSE)
DiffRegion<-calculateDiffMeth(meth_region)
DiffRegion_all<-getMethylDiff(DiffRegion,difference=25,qvalue=0.01,type="all")
save(meth_region,DiffRegion,DiffRegion_all,file = "/public/home/wyyy/HPV/WGBS/methylKit_region.RData")
