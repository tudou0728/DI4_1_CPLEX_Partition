/*********************************************
 * OPL 12.6.1.0 Model
 * Author: liyuanyuan
 * Creation Date: 22 nov. 2017 at 17:19:01
 *********************************************/

 //Data
{string} Customers = ...;
float poid[Customers] = ...;

//Variables
dvar boolean partition1[Customers];

//Constraints
subject to {
	sum(a in Customers)
	  poid[a]*partition1[a]==1/2 * (sum(a in Customers) poid[a]);
}
	
	  
