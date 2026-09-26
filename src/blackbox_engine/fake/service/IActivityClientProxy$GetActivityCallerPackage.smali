.class public Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetActivityCallerPackage;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetActivityCallerPackage"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getActivityCallerPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 162
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    .line 165
    aget-object p0, p3, p0

    check-cast p0, Landroid/os/IBinder;

    .line 166
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    .line 167
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    .line 166
    invoke-virtual {v0, p0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 168
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 169
    :cond_1d
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    .line 170
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    .line 169
    invoke-virtual {v0, p0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object v0

    :cond_29
    if-eqz v0, :cond_35

    .line 172
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 173
    :cond_35
    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->-$$Nest$smgetVirtualPackageFallback()Ljava/lang/String;

    move-result-object v0

    :cond_39
    if-nez v0, :cond_40

    .line 175
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_40
    return-object v0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityClientProxy.GetActivityCallerUid (top.niunaijun.blackbox.fake.service.IActivityClientProxy$GetActivityCallerUid)
