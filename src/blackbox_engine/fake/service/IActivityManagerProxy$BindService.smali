.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindService;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindService"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "bindService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 264
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private static clearVirtualServiceInstanceName(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 5

    .line 310
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v1, "bindIsolatedService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "bindServiceInstance"

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 316
    :cond_15
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/IServiceConnection;

    .line 315
    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getParamsIndex([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    if-ltz v0, :cond_34

    .line 318
    array-length v0, p1

    if-ge v1, v0, :cond_34

    .line 320
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v1

    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_34

    const/4 p0, 0x0

    .line 323
    aput-object p0, p1, v1

    return-void

    .line 321
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported isolated-service signature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static isExecutableSystemService(Landroid/content/Intent;)Z
    .registers 2

    .line 304
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_b

    .line 305
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 306
    :goto_f
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isOpenPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x2

    .line 268
    aget-object v0, p3, p0

    check-cast v0, Landroid/content/Intent;

    .line 269
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isExternalAuthIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 270
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 v1, 0x3

    .line 273
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x4

    .line 274
    aget-object v3, p3, v2

    check-cast v3, Landroid/app/IServiceConnection;

    .line 276
    const-string v4, "_B_|_UserId"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2a

    .line 277
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v4

    .line 278
    :cond_2a
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1, v4}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_79

    .line 279
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_3a

    goto :goto_79

    .line 283
    :cond_3a
    invoke-static {p2, p3}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindService;->clearVirtualServiceInstanceName(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 284
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v7

    if-nez v3, :cond_45

    const/4 v8, 0x0

    goto :goto_49

    .line 285
    :cond_45
    invoke-interface {v3}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 284
    :goto_49
    invoke-virtual {v7, v0, v8, v1, v4}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_54

    .line 289
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_54
    if-eqz v3, :cond_72

    .line 292
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_6c

    .line 293
    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 296
    :cond_6c
    invoke-static {v3, v0}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->createProxy(Landroid/app/IServiceConnection;Landroid/content/Intent;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 297
    aput-object v0, p3, v2

    .line 299
    :cond_72
    aput-object v1, p3, p0

    .line 300
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 280
    :cond_79
    :goto_79
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindService;->isExecutableSystemService(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_84

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected isEnable()Z
    .registers 1

    .line 328
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isBlackProcess()Z

    move-result p0

    if-nez p0, :cond_17

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isServerProcess()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.BindServiceInstance (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$BindServiceInstance)
