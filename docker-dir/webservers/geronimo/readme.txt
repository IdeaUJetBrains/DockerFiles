Default user and passwort for the console:
user: system
password: manager
http://192.168.99.100:18080/console/portal/0/Welcome?noxssShowTree=true#noxssPage=2461569649815039023

The application was not deployed.
Error parsing web.xml for .
org.apache.geronimo.common.DeploymentException: Error parsing web.xml for .
	at org.apache.geronimo.tomcat.deployment.TomcatModuleBuilder.createModule(TomcatModuleBuilder.java:198)
	at org.apache.geronimo.web25.deployment.AbstractWebModuleBuilder.createModule(AbstractWebModuleBuilder.java:192)
	at org.apache.geronimo.j2ee.deployment.SwitchingModuleBuilder.createModule(SwitchingModuleBuilder.java:94)
	at org.apache.geronimo.j2ee.deployment.EARConfigBuilder.getDeploymentPlan(EARConfigBuilder.java:298)
	at org.apache.geronimo.deployment.Deployer.deploy(Deployer.java:229)
	at org.apache.geronimo.deployment.Deployer.deploy(Deployer.java:136)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:622)
	at org.apache.geronimo.gbean.runtime.ReflectionMethodInvoker.invoke(ReflectionMethodInvoker.java:34)
	at org.apache.geronimo.gbean.runtime.GBeanOperation.invoke(GBeanOperation.java:130)
	at org.apache.geronimo.gbean.runtime.GBeanInstance.invoke(GBeanInstance.java:851)
	at org.apache.geronimo.kernel.basic.BasicKernel.invoke(BasicKernel.java:237)
	at org.apache.geronimo.deployment.plugin.local.AbstractDeployCommand.doDeploy(AbstractDeployCommand.java:116)
	at org.apache.geronimo.deployment.plugin.local.DistributeCommand.run(DistributeCommand.java:61)
	at java.lang.Thread.run(Thread.java:701)
Caused by: org.apache.xmlbeans.XmlException: Invalid deployment descriptor: errors:

error: cvc-complex-type.2.4a: Expected elements 'servlet-class@http://java.sun.com/xml/ns/javaee jsp-file@http://java.sun.com/xml/ns/javaee' instead of 'init-param@http://java.sun.com/xml/ns/javaee' here in element servlet@http://java.sun.com/xml/ns/javaee

error: cvc-complex-type.2.4c: Expected elements 'servlet-class@http://java.sun.com/xml/ns/javaee jsp-file@http://java.sun.com/xml/ns/javaee' before the end of the content in element servlet@http://java.sun.com/xml/ns/javaee

Descriptor:


    My JAX-RS Servlet
    MyApplication

      javax.ws.rs.Application
      MyApplication



    MyApplication
    /*
