.class public Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "IActivityClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$SetTaskDescription;,
        Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetActivityCallerUid;,
        Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetActivityCallerPackage;,
        Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetLaunchedFromUid;,
        Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetLaunchedFromPackage;,
        Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetCallingActivity;,
        Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetCallingPackage;,
        Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$ActivityDestroyed;,
        Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$ActivityResumed;,
        Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$FinishActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IActivityClientProxy"


# instance fields
.field private final who:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$smgetVirtualPackageFallback()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->getVirtualPackageFallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetVirtualUidFallback()I
    .registers 1

    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->getVirtualUidFallback()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    .line 26
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->who:Ljava/lang/Object;

    return-void
.end method

.method private static getVirtualPackageFallback()Ljava/lang/String;
    .registers 2

    .line 62
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 64
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    return-object v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getVirtualUidFallback()I
    .registers 2

    .line 68
    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->getVirtualPackageFallback()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v0

    if-gez v0, :cond_d

    goto :goto_1a

    .line 72
    :cond_d
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v1

    .line 71
    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result v0

    return v0

    :cond_1a
    :goto_1a
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public getProxyInvocation()Ljava/lang/Object;
    .registers 1

    .line 53
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected getWho()Ljava/lang/Object;
    .registers 1

    .line 31
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->who:Ljava/lang/Object;

    if-eqz p0, :cond_5

    return-object p0

    .line 34
    :cond_5
    invoke-static {}, Lblack/android/app/BRActivityClient;->get()Lblack/android/app/ActivityClientStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityClientStatic;->getInstance()Ljava/lang/Object;

    move-result-object p0

    .line 35
    invoke-static {p0}, Lblack/android/app/BRActivityClient;->get(Ljava/lang/Object;)Lblack/android/app/ActivityClientContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityClientContext;->INTERFACE_SINGLETON()Ljava/lang/Object;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lblack/android/util/BRSingleton;->get(Ljava/lang/Object;)Lblack/android/util/SingletonContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/util/SingletonContext;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 41
    invoke-static {}, Lblack/android/app/BRActivityClient;->get()Lblack/android/app/ActivityClientStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityClientStatic;->getInstance()Ljava/lang/Object;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lblack/android/app/BRActivityClient;->get(Ljava/lang/Object;)Lblack/android/app/ActivityClientContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityClientContext;->INTERFACE_SINGLETON()Ljava/lang/Object;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lblack/android/util/BRSingleton;->get(Ljava/lang/Object;)Lblack/android/util/SingletonContext;

    move-result-object p0

    invoke-interface {p0, p2}, Lblack/android/util/SingletonContext;->_set_mInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onlyProxy(Z)V
    .registers 2

    .line 58
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->onlyProxy(Z)V

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityClientProxy.ActivityDestroyed (top.niunaijun.blackbox.fake.service.IActivityClientProxy$ActivityDestroyed)
