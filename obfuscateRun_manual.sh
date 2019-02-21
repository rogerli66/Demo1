kubectl exec -ti <pod> -- bash 
curl --request POST \
  --url http://localhost:8080/api/rcif/rffl06 \
  --header 'content-type: application/json' \
  --data '{ "filePath": "/MDM_INPUT/RCIF/RFFL06/RFFL06.BIN", "recordLimit": -1, "useCsvParser": false, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl09 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "/MDM_INPUT/RCIF/RFFL09/RFFL09.BIN", "recordLimit": -1, "useCsvParser": false, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl10 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "/MDM_INPUT/RCIF/RFFL10/RFFL10.BIN", "recordLimit": -1, "useCsvParser": false, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl13 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "/MDM_INPUT/RCIF/RFFL13/RFFL13.BIN", "recordLimit": -1, "useCsvParser": false, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl18 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "/MDM_INPUT/RCIF/RFFL18/RFFL18.BIN", "recordLimit": -1, "useCsvParser": false, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl25 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "/MDM_INPUT/RCIF/RFFL25/RFFL25.BIN", "recordLimit": -1, "useCsvParser": false, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl33 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "/MDM_INPUT/RCIF/RFFL33/RFFL33.BIN", "recordLimit": -1, "useCsvParser": false, "batchId": 8675309 }'

curl --request POST \
    --url http://localhost:8080/api/rcif/rffl34 \
    --header 'content-type: application/json' \
    --data '{ "filePath": "/MDM_INPUT/RCIF/RFFL34/RFFL34.BIN", "recordLimit": -1, "useCsvParser": false, "batchId": 8675309 }'


curl --request POST \
  --url http://localhost:8080/api/rcif/aggregate \
  --header 'content-type: application/json' \
  --data '{ "batchId": 8675309 }'


2018-09-28 21:34:58,768 [l-4-thread-4] ERROR       c.t.m.c.a.incoming.rcif.RfflRecord [] - Failed to parse LocalDate: Text '19057407' could not be parsed: Invalid value for MonthOfYear (valid values 1 - 12): 74
2018-09-28 21:40:48,502 [-scheduler-2] WARN   c.t.m.a.rcif.service.IntegrationService [] - Unexpected condition: A data file and a CNTL file are expected in the following directory: /MDM_INPUT/RCIF/RFFL33

2018-09-28 21:41:20,499 [l-4-thread-3] ERROR                 net.sf.cobol2j.RecordSet [] - Cannot parse field: RFCEM-CUST-NO. Data: '1000020913  0', Picture: 9(13), Type: 9, Size: 13
2018-09-28 21:41:20,500 [l-4-thread-3] ERROR                 net.sf.cobol2j.RecordSet [] - Total bytes processed before error: 16905378
2018-09-28 21:41:20,500 [l-4-thread-3] ERROR  c.t.m.c.a.i.r.p.CobolCopybookFileParser [] - Couldn't parse record nr: 67894.
net.sf.cobol2j.RecordParseException: Couldn't parse record nr: 67894.
        at net.sf.cobol2j.RecordSet.next(RecordSet.java:107)
        at com.tcf.mdm.common.aggregate.incoming.rcif.parser.CobolCopybookFileParser$1.next(CobolCopybookFileParser.java:70)
        at org.apache.commons.collections4.iterators.IteratorIterable$1.next(IteratorIterable.java:76)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.processRffl25(RcifFileService.java:1422)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.loadRffl25File(RcifFileService.java:616)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$FastClassBySpringCGLIB$$fe9abb3b.invoke(<generated>)
        at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
        at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$EnhancerBySpringCGLIB$$c20f3272.loadRffl25File(<generated>)
        at com.tcf.mdm.common.aggregate.AggregatorRequestExecutor.lambda$executeUnblocking$1(AggregatorRequestExecutor.java:44)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
Caused by: net.sf.cobol2j.FieldParseException:
        at net.sf.cobol2j.RecordSet.readZoned(RecordSet.java:466)
        at net.sf.cobol2j.RecordSet.getFieldsValues(RecordSet.java:189)
        at net.sf.cobol2j.RecordSet.getFieldsValues(RecordSet.java:244)
        at net.sf.cobol2j.RecordSet.next(RecordSet.java:89)
        ... 14 common frames omitted
Caused by: java.lang.NumberFormatException: null
        at java.math.BigDecimal.<init>(BigDecimal.java:494)
        at java.math.BigDecimal.<init>(BigDecimal.java:383)
        at java.math.BigDecimal.<init>(BigDecimal.java:806)
        at net.sf.cobol2j.RecordSet.readZoned(RecordSet.java:464)
        ... 17 common frames omitted
2018-09-28 21:41:20,500 [l-4-thread-3] ERROR     c.t.m.a.rcif.service.RcifFileService [] - An exception occured:
java.lang.NullPointerException: null
        at com.tcf.mdm.common.aggregate.incoming.rcif.parser.CobolCopybookFileParser.parseDataToMap(CobolCopybookFileParser.java:119)
        at com.tcf.mdm.common.aggregate.incoming.rcif.parser.CobolCopybookFileParser.convertToMap(CobolCopybookFileParser.java:108)
        at com.tcf.mdm.common.aggregate.incoming.rcif.parser.CobolCopybookFileParser.convertToMap(CobolCopybookFileParser.java:21)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.processRffl25(RcifFileService.java:1426)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.loadRffl25File(RcifFileService.java:616)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$FastClassBySpringCGLIB$$fe9abb3b.invoke(<generated>)
        at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
        at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$EnhancerBySpringCGLIB$$c20f3272.loadRffl25File(<generated>)
        at com.tcf.mdm.common.aggregate.AggregatorRequestExecutor.lambda$executeUnblocking$1(AggregatorRequestExecutor.java:44)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
2018-09-28 21:41:20,501 [Thread-10] INFO  ConfigServletWebServerApplicationContext [] - Closing org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext@710636b0: startup date [Fri Sep 28 21:12:15 UTC 2018]; root of context hierarchy
2018-09-28 21:41:20,524 [Thread-10] INFO        com.zaxxer.hikari.HikariDataSource [] - HikariPool-1 - Shutdown initiated...
2018-09-28 21:41:20,528 [l-4-thread-5] ERROR   o.h.engine.jdbc.spi.SqlExceptionHelper [] - The connection is closed.
2018-09-28 21:41:20,564 [l-4-thread-4] ERROR     c.t.m.a.rcif.service.RcifFileService [] - An exception occured:
org.springframework.beans.factory.BeanCreationNotAllowedException: Error creating bean with name 'org.springframework.context.config.internalBeanConfigurerAspect': Singleton bean creation not allowed while singletons of this factory are in destruction (Do not request a bean from a BeanFactory in a destroy method implementation!)
        at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:214)
        at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:315)
        at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
        at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:304)
        at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
        at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeansOfType(DefaultListableBeanFactory.java:515)
        at org.springframework.beans.factory.BeanFactoryUtils.beansOfTypeIncludingAncestors(BeanFactoryUtils.java:290)
        at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.detectPersistenceExceptionTranslators(PersistenceExceptionTranslationInterceptor.java:168)
        at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:150)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:135)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.data.repository.core.support.SurroundingTransactionDetectorMethodInterceptor.invoke(SurroundingTransactionDetectorMethodInterceptor.java:61)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)
        at com.sun.proxy.$Proxy162.saveAll(Unknown Source)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.findExistingCrfCustomersUpdateOrCreate(RcifFileService.java:1078)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.processRffl13(RcifFileService.java:1014)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.loadRffl13File(RcifFileService.java:437)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$FastClassBySpringCGLIB$$fe9abb3b.invoke(<generated>)
        at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
        at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$EnhancerBySpringCGLIB$$c20f3272.loadRffl13File(<generated>)
        at com.tcf.mdm.common.aggregate.AggregatorRequestExecutor.lambda$executeUnblocking$1(AggregatorRequestExecutor.java:44)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
2018-09-28 21:41:20,565 [l-4-thread-5] ERROR     c.t.m.a.rcif.service.RcifFileService [] - An exception occured:
org.springframework.beans.factory.BeanCreationNotAllowedException: Error creating bean with name 'org.springframework.context.config.internalBeanConfigurerAspect': Singleton bean creation not allowed while singletons of this factory are in destruction (Do not request a bean from a BeanFactory in a destroy method implementation!)
        at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:214)
        at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:315)
        at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
        at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:304)
        at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
        at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeansOfType(DefaultListableBeanFactory.java:515)
        at org.springframework.beans.factory.BeanFactoryUtils.beansOfTypeIncludingAncestors(BeanFactoryUtils.java:290)
        at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.detectPersistenceExceptionTranslators(PersistenceExceptionTranslationInterceptor.java:168)
        at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:150)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:135)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.data.repository.core.support.SurroundingTransactionDetectorMethodInterceptor.invoke(SurroundingTransactionDetectorMethodInterceptor.java:61)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)
        at com.sun.proxy.$Proxy165.saveAll(Unknown Source)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.findExistingAlsUpdateOrCreate(RcifFileService.java:1199)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.processRffl18(RcifFileService.java:1118)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.loadRffl18File(RcifFileService.java:508)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$FastClassBySpringCGLIB$$fe9abb3b.invoke(<generated>)
        at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
        at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$EnhancerBySpringCGLIB$$c20f3272.loadRffl18File(<generated>)
        at com.tcf.mdm.common.aggregate.AggregatorRequestExecutor.lambda$executeUnblocking$1(AggregatorRequestExecutor.java:44)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
2018-09-28 21:41:20,566 [l-4-thread-1] ERROR     c.t.m.a.rcif.service.RcifFileService [] - An exception occured:
org.springframework.beans.factory.BeanCreationNotAllowedException: Error creating bean with name 'org.springframework.context.config.internalBeanConfigurerAspect': Singleton bean creation not allowed while singletons of this factory are in destruction (Do not request a bean from a BeanFactory in a destroy method implementation!)
        at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:214)
        at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:315)
        at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
        at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:304)
        at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
        at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeansOfType(DefaultListableBeanFactory.java:515)
        at org.springframework.beans.factory.BeanFactoryUtils.beansOfTypeIncludingAncestors(BeanFactoryUtils.java:290)
        at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.detectPersistenceExceptionTranslators(PersistenceExceptionTranslationInterceptor.java:168)
        at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:150)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:135)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.data.repository.core.support.SurroundingTransactionDetectorMethodInterceptor.invoke(SurroundingTransactionDetectorMethodInterceptor.java:61)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)
        at com.sun.proxy.$Proxy159.saveAll(Unknown Source)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.findExistingAccountsUpdateOrCreate(RcifFileService.java:740)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.processRffl06(RcifFileService.java:686)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.loadRffl06File(RcifFileService.java:317)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$FastClassBySpringCGLIB$$fe9abb3b.invoke(<generated>)
        at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
        at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$EnhancerBySpringCGLIB$$c20f3272.loadRffl06File(<generated>)
        at com.tcf.mdm.common.aggregate.AggregatorRequestExecutor.lambda$executeUnblocking$1(AggregatorRequestExecutor.java:44)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
2018-09-28 21:41:20,571 [Thread-10] INFO        com.zaxxer.hikari.HikariDataSource [] - HikariPool-1 - Shutdown completed.
2018-09-28 21:41:20,571 [l-4-thread-2] WARN    com.zaxxer.hikari.pool.ProxyConnection [] - HikariPool-1 - Connection ConnectionID:3 ClientConnectionId: 5e8a2a95-6c46-4f78-ad3a-2004c46edbe6 marked as broken because of SQLSTATE(08S01), ErrorCode(0)
com.microsoft.sqlserver.jdbc.SQLServerException: SSL peer shut down incorrectly
        at com.microsoft.sqlserver.jdbc.SQLServerConnection.terminate(SQLServerConnection.java:2435)
        at com.microsoft.sqlserver.jdbc.TDSChannel.read(IOBuffer.java:1991)
        at com.microsoft.sqlserver.jdbc.TDSReader.readPacket(IOBuffer.java:6310)
        at com.microsoft.sqlserver.jdbc.TDSCommand.startResponse(IOBuffer.java:7548)
        at com.microsoft.sqlserver.jdbc.TDSCommand.startResponse(IOBuffer.java:7507)
        at com.microsoft.sqlserver.jdbc.SQLServerConnection$1ConnectionCommand.doExecute(SQLServerConnection.java:2519)
        at com.microsoft.sqlserver.jdbc.TDSCommand.execute(IOBuffer.java:7151)
        at com.microsoft.sqlserver.jdbc.SQLServerConnection.executeCommand(SQLServerConnection.java:2478)
        at com.microsoft.sqlserver.jdbc.SQLServerConnection.connectionCommand(SQLServerConnection.java:2524)
        at com.microsoft.sqlserver.jdbc.SQLServerConnection.rollback(SQLServerConnection.java:2704)
        at com.zaxxer.hikari.pool.ProxyConnection.rollback(ProxyConnection.java:377)
        at com.zaxxer.hikari.pool.HikariProxyConnection.rollback(HikariProxyConnection.java)
        at org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor.rollback(AbstractLogicalConnectionImplementor.java:116)
        at org.hibernate.resource.transaction.backend.jdbc.internal.JdbcResourceLocalTransactionCoordinatorImpl$TransactionDriverControlImpl.rollback(JdbcResourceLocalTransactionCoordinatorImpl.java:251)
        at org.hibernate.engine.transaction.internal.TransactionImpl.rollback(TransactionImpl.java:100)
        at org.springframework.orm.jpa.JpaTransactionManager.doRollback(JpaTransactionManager.java:563)
        at org.springframework.transaction.support.AbstractPlatformTransactionManager.processRollback(AbstractPlatformTransactionManager.java:838)
        at org.springframework.transaction.support.AbstractPlatformTransactionManager.rollback(AbstractPlatformTransactionManager.java:812)
        at org.springframework.transaction.interceptor.TransactionAspectSupport.completeTransactionAfterThrowing(TransactionAspectSupport.java:550)
        at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:298)
        at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:135)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.data.repository.core.support.SurroundingTransactionDetectorMethodInterceptor.invoke(SurroundingTransactionDetectorMethodInterceptor.java:61)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)
        at com.sun.proxy.$Proxy161.saveAll(Unknown Source)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.findExistingCacsUpdateOrCreate(RcifFileService.java:850)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.processRffl09(RcifFileService.java:796)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.loadRffl09File(RcifFileService.java:364)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$FastClassBySpringCGLIB$$fe9abb3b.invoke(<generated>)
        at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
        at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$EnhancerBySpringCGLIB$$c20f3272.loadRffl09File(<generated>)
        at com.tcf.mdm.common.aggregate.AggregatorRequestExecutor.lambda$executeUnblocking$1(AggregatorRequestExecutor.java:44)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
Caused by: javax.net.ssl.SSLException: SSL peer shut down incorrectly
        at sun.security.ssl.InputRecord.readV3Record(InputRecord.java:596)
        at sun.security.ssl.InputRecord.read(InputRecord.java:532)
        at sun.security.ssl.SSLSocketImpl.readRecord(SSLSocketImpl.java:983)
        at sun.security.ssl.SSLSocketImpl.readDataRecord(SSLSocketImpl.java:940)
        at sun.security.ssl.AppInputStream.read(AppInputStream.java:105)
        at com.microsoft.sqlserver.jdbc.TDSChannel.read(IOBuffer.java:1981)
        ... 43 common frames omitted
2018-09-28 21:41:20,575 [l-4-thread-2] ERROR     c.t.m.a.rcif.service.RcifFileService [] - An exception occured:
org.springframework.beans.factory.BeanCreationNotAllowedException: Error creating bean with name 'org.springframework.context.config.internalBeanConfigurerAspect': Singleton bean creation not allowed while singletons of this factory are in destruction (Do not request a bean from a BeanFactory in a destroy method implementation!)
        at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:214)
        at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:315)
        at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
        at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:304)
        at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)
        at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeansOfType(DefaultListableBeanFactory.java:515)
        at org.springframework.beans.factory.BeanFactoryUtils.beansOfTypeIncludingAncestors(BeanFactoryUtils.java:290)
        at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.detectPersistenceExceptionTranslators(PersistenceExceptionTranslationInterceptor.java:168)
        at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:150)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:135)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.data.repository.core.support.SurroundingTransactionDetectorMethodInterceptor.invoke(SurroundingTransactionDetectorMethodInterceptor.java:61)
        at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
        at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)
        at com.sun.proxy.$Proxy161.saveAll(Unknown Source)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.findExistingCacsUpdateOrCreate(RcifFileService.java:850)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.processRffl09(RcifFileService.java:796)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService.loadRffl09File(RcifFileService.java:364)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$FastClassBySpringCGLIB$$fe9abb3b.invoke(<generated>)
        at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
        at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)
        at com.tcf.mdm.aggregator.rcif.service.RcifFileService$$EnhancerBySpringCGLIB$$c20f3272.loadRffl09File(<generated>)
        at com.tcf.mdm.common.aggregate.AggregatorRequestExecutor.lambda$executeUnblocking$1(AggregatorRequestExecutor.java:44)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
2018-09-28 21:41:20,752 [Thread-10] INFO          i.m.datadog.DatadogMeterRegistry [] - successfully sent 168 metrics to datadog
