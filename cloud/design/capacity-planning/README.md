# Capacity Planning
Capacity planning is when an organization performs a [trend analysis](#trend-analysis) to identify requirements for future expansion. 

## Trend Analysis
Trend analysis is when an organization makes predictions based on system baselines, patterns, and anomalies. 

### Baseline  
A baseline describes where a system is now compared to where it was before. Two examples are the cost of licensing and user density. 

How can a baseline be used to make a prediction about capacity?
* If 5 licenses can support 100 servers, 6 licenses would be needed to support up to 120.
* Baseline: 5 licenses support current operations
* Prediction: 6 will be needed for future operations

**Licenses**  
*Perpetual License Model*  
In a Perpetual License Model, customers are billed upfront and licensed forever (the Return-On-Investment is not guaranteed since technology is always changing; scaling will eventually become a problem). 

*Subscription License Model*  
In a Subscription License Model, customers pay for what they used (this will eventually become more expensive than the Perpetual License Model). 

*Bring Your Own License Model*  
In a Bring Your Own License (BYOL) Model, customers are allowed to use the licenses they bought for an on-prem service to use the cloud version (no additional licenses need to be purchased)

**User Density**   
User density is how many concurrent connections are there when system performance is acceptable. 

### Patterns  
A pattern is when a design is repeated at specific intervals. One example is [system load](/compute/README.md#central-processing-unit). 

How can a pattern be used to make a prediction about capacity?
* If one CPU is overloaded every Monday morning, two CPUs may be necessary
* Baseline: one CPU is overloaded every Monday morning
* Prediction: two CPUs may be necessary

### Anomalies
An anomaly is anything outside of the normal range of expected behavior or performance of a system. 

How can an anomaly be used to make a prediction about capacity?
* It may be an indicator the baseline is changing. 