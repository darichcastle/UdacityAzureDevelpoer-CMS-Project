Analyze, choose, and justify the appropriate resource option for deploying the app.
For both a VM or App Service solution for the CMS app:

Analyze costs, scalability, availability, and workflow
Choose the appropriate solution (VM or App Service) for deploying the app
Justify your choice


                            COST
Azure App Service makes it possible it possible to host web app, mobile app, or API app. It brings together everything you need to create your app with ease.
There are various types of plans which provides different options to test your app within your  given budget.

Instance		Cores		    Ram		        Storage 		Pay as you go
B1			      1		        1.75GB		    10GB			$0.075/hour


Azure VM
The B-series of Azure VM is as follows 
Instance		Cores		    Ram		        Storage 		Pay as you go
B1s			    1		        1GB		        4GB			    $0.0104/hour
 



                            SCALABILITY

Azure App Service
Storage can be added using other Azure services. That is plenty for an instance of an app. In this case is more used the horizontal scaling.


Azure VM
Whether we scale vertically or horizontally, our application has to be designed to take advantage of it. Otherwise we are burning money.
There is no point in multiple cores if the application does not run multiple threads and compute operations in parallel.
An application in Azure has fewer options, it is a service that is available until we cancel it.


                            AVAILABILITY

Azure App Services
An application in Azure has fewer options, it is a service that is available until we cancel it

Azure Virtual Machine
Having control of a virtual machine gives us much more control of the actions to be performed, but as we have seen in the course, this control implies an effort in the configuration of the machine and its security.

Just like with real machines, we can configure the VM to be available only when needed, for example during office hours, and not on weekends. This would help to reduce the running costs of our application


                            WORKFLOW


Azure App Services
App Services is a SaaS, so we don't need to get worried about system issues. So is easier for the client side. One the CI/CD approach to releasing new versions is learned, is a lot simpler to deploy on Azure App Services. In the course we have learned how to do it with Github Actions. When a new commit is released in the repository, the app is deployed again. We can also use automated testing to avoid problems before updating the app.

Azure Virtual Machine
A Virtual Machine is a PaaS. So we must handle installation, upgrades, and security of the machine. Even many of this operations can be automatizated, you need more expertice, and be always on track. Patch a system without messing with incompatibilities of other apps or services is an art. "With great power there must also come great responsibility".



                            RECOMMENDATION

As we just want to run a web service. Is recommended the use of Azure App Services.
That is also the workflow that we learned along the course. And that allowed people achieved without knowing system administration, that will requiere a virtual machine.
Also our requeriments for the app are not so big that can't be handle easily with a basic instance of a Azure App Services.
