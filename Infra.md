![image](https://github.com/pacha5065/Axi/assets/28640408/24738b4a-34cf-4243-9389-cb0840d01103)
Question: 
You are tasked with setting up a kubernetes cluster to host new web services. The web services will be providing a public API to an existing internal systems. The internal systems are hosted on a virtual network named "internal-assets", and it is imperative that a high level of security is maintained around this virtual network. Please provide a brief description of the infrastructure you would put in place. You can describe your set up in words or pictures, but please ensure you account for the following constraints:

You have a choice of which hosting provider it is deployed with.
Your cluster is going to host web services that need to be published on the internet.
A support team will need to be notified if web services lose connectivity to the internal assets
Developers should be able to deploy code in an automated manner.
The cluster will need to be able to access pre-existing internal systems on the "internal-assets" virtual network. Describe how we can access that securely.

Answer:

1. I will be using AWS for hosting these web services.
2. We can host these web services within the AWS but in a different VPC where the ELB is deployed.
3. So that, we can do VPC peering between the VPC which is hosting the internal systems and expost them through this ELB
4. To get a notification on failures, we can configure the ELB such way that we keep doing the health checks of webservices from the internal systems. For extra logging and monitoring we can use AWS cloud watch
5. We can keep this network securily by introducing
   Network policies to restrict the traffic between pods
   Security groups to control traffic at the instance level
6. For Developers to deploy the code in an automated manner, they can make use of CICD approach with either flux or Argo gitops approach.

