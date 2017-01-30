#Tidy Dataset Output
The dataset generated from the run_analysis script is a text file called "tidy_test_train.txt"  It is a 180 x 68 data frame with headers and contains the average of all mean and standard deviation measurements from the original data, grouped by activity and subject.  The output can be processed with this code:

<code>
read.table("./tidy_test_train.txt",header = TRUE)
</code>

##Groups of Observations
<ul>
<li>Activity: A Factor variable with 6 levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING</li>
<li>Subject: Represents by keys 1-30</li>
</ul>

##66 Measurements
These are all of measurements that were averaged for the output dataset.  Only the mean and standard deviations were preserved from the original data:
<ul>
<li>tBodyAccmeanX          </li>  
<li>tBodyAccmeanY          </li> 
<li>tBodyAccmeanZ          </li>  
<li>tBodyAccstdX           </li>  
<li>tBodyAccstdY           </li>  
<li>tBodyAccstdZ           </li> 
<li>tGravityAccmeanX       </li>  
<li>tGravityAccmeanY       </li>  
<li>tGravityAccmeanZ       </li>  
<li>tGravityAccstdX        </li> 
<li>tGravityAccstdY        </li> 
<li>tGravityAccstdZ        </li>  
<li>tBodyAccJerkmeanX      </li>  
<li>tBodyAccJerkmeanY      </li> 
<li>tBodyAccJerkmeanZ      </li>  
<li>tBodyAccJerkstdX       </li>  
<li>tBodyAccJerkstdY       </li>  
<li>tBodyAccJerkstdZ       </li> 
<li>tBodyGyromeanX         </li>  
<li>tBodyGyromeanY         </li>  
<li>tBodyGyromeanZ         </li>  
<li>tBodyGyrostdX          </li> 
<li>tBodyGyrostdY          </li>  
<li>tBodyGyrostdZ          </li>  
<li>tBodyGyroJerkmeanX     </li>  
<li>tBodyGyroJerkmeanY     </li> 
<li>tBodyGyroJerkmeanZ     </li>  
<li>tBodyGyroJerkstdX      </li>  
<li>tBodyGyroJerkstdY      </li>  
<li>tBodyGyroJerkstdZ      </li> 
<li>tBodyAccMagmean        </li>  
<li>tBodyAccMagstd         </li>  
<li>tGravityAccMagmean     </li>  
<li>tGravityAccMagstd      </li> 
<li>tBodyAccJerkMagmean    </li>  
<li>tBodyAccJerkMagstd     </li>  
<li>tBodyGyroMagmean       </li>  
<li>tBodyGyroMagstd        </li> 
<li>tBodyGyroJerkMagmean   </li>  
<li>tBodyGyroJerkMagstd    </li>  
<li>fBodyAccmeanX          </li>  
<li>fBodyAccmeanY          </li> 
<li>fBodyAccmeanZ          </li>  
<li>fBodyAccstdX           </li>  
<li>fBodyAccstdY           </li>  

<li>fBodyAccstdZ           </li> 
<li>fBodyAccJerkmeanX      </li>  
<li>fBodyAccJerkmeanY      </li>  
<li>fBodyAccJerkmeanZ      </li>  
<li>fBodyAccJerkstdX       </li> 
<li>fBodyAccJerkstdY       </li>  
<li>fBodyAccJerkstdZ       </li>  
<li>fBodyGyromeanX         </li>  
<li>fBodyGyromeanY         </li> 
<li>fBodyGyromeanZ         </li>  
<li>fBodyGyrostdX          </li>  
<li>fBodyGyrostdY          </li>  
<li>fBodyGyrostdZ          </li> 
<li>fBodyAccMagmean        </li>  
<li>fBodyAccMagstd         </li>  
<li>fBodyBodyAccJerkMagmean  </li>  
<li>fBodyBodyAccJerkMagstd  </li>  
<li>fBodyBodyGyroMagmean     </li>  
<li>fBodyBodyGyroMagstd      </li>  
<li>fBodyBodyGyroJerkMagmean </li>  
<li>fBodyBodyGyroJerkMagstd </li>  
</ul>
