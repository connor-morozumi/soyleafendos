for(i in seq_along(fastpFs)){
  message('Processing file ', testfastpFs[i], ' of ', length(testfastpFs))
  message('And R2 file ', testfastpRs[i], ' of ', length(testfastpFs))
  
  #Run fastp
  system2(fastp, args= c("--in1" , fastpFs[i],"--in2" , fastpRs[i], "--out1", fastpF.trim[i],"--out2", fastpR.trim[i], "-l", 50, "-h", "arch.html", "--trim_poly_g", "&>", "test.log"))
}
