# Cyclistic-bike-share
Cyclistic, a bike-sharing service, caters to a diverse user base, including annual members and casual riders. This is an analysis showing a facet of how casual riders and annual members use their service. 
Understanding how these two groups utilize Cyclistic bikes differently can provide valuable insights for the company's operations and marketing strategies. By delving into various metrics such as bike types used, trip frequencies, ride durations, and peak hours, we can gain a comprehensive understanding of the distinctive behaviors exhibited by annual members and casual riders.
The business task at hand is aimed at increasing the number of annual users, this can be achieved in a number of ways, one of which is by converting the casual riders to annual members.
The data used is gotten from [here](https://divvy-tripdata.s3.amazonaws.com/index.html).

All the data manipulation and cleaning was done through mssql and the sql scripts involved are
1. [Data combination](https://github.com/adeyemo-emmanuel/Cyclistic-bike-share/blob/main/1.%20data%20combination.sql)
2. [Data exploration](https://github.com/adeyemo-emmanuel/Cyclistic-bike-share/blob/main/2.%20data%20exploration.sql)
3. [Data cleaning](https://github.com/adeyemo-emmanuel/Cyclistic-bike-share/blob/main/3.%20data%20cleaning.sql)
4. [Data analysis](https://github.com/adeyemo-emmanuel/Cyclistic-bike-share/blob/main/4.%20data%20analysis.sql)

The visualization of this analysis is in Tableau [here](https://public.tableau.com/app/profile/emmanuel.adeyemo/viz/CyclisticBikeTrip/CyclisticDashboard)

When it comes to bike preferences, annual members and casual riders exhibit varying trends. The majority of all riders opt for classic bikes, with annual members showing a substantial count of 1,708,640 trips with casual riders counting for a total of 888,779 trips, meanwhile trips including the electric bikes was a recorded 902,525 trips for annual members whereas casual riders ride a total of 694,550 trips. Docked bikes are only used by casual riders, with 174,858 trips recorded.

**Trip Frequencies**

Examining trip frequencies on a daily and monthly basis unveils interesting disparities between annual members and casual riders. While casual riders tend to utilize the service more on weekends, with the highest number of trips occurring on Saturdays (367,344 trips) and Sundays (301,316 trips), annual members demonstrate a consistent usage pattern throughout the weekdays, with Tuesday, Wednesday, and Thursday recording over 400,000 trips each.

**Average Ride Duration**

The average ride duration also differs significantly between the two groups. Casual riders have longer rides, especially on Sundays (27 minutes) and Saturdays (26 minutes), while annual members opt for shorter rides, with Sundays and Saturdays both averaging 13 minutes per ride.

**Peak Hours**

Both groups exhibit similar peak hours, with the period between 16:00 and 18:00 hours being the busiest. However, annual members contribute to a higher number of trips during these hours compared to casual riders, with over 220,000 trips recorded for annual members during this time frame.

**Monthly Trends**

Monthly usage trends also provide valuable insights. Casual riders show a relatively consistent pattern across June (292,068 trips), July (311,678 trips), and August (270,095 trips). In contrast, annual members display a steady increase in usage from June (328,282 trips) to August (335,230 trips), suggesting a growing commitment to the service during the summer months.This basically indicates that bike hailing are most common during the summer months with the peak trips being between June and August.
