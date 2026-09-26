.class public Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetCallingPackage;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetCallingPackage"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getCallingPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 p0, 0x0

    .line 109
    aget-object p0, p3, p0

    check-cast p0, Landroid/os/IBinder;

    .line 110
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p1

    .line 111
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result p2

    .line 110
    invoke-virtual {p1, p0, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 113
    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->-$$Nest$smgetVirtualPackageFallback()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    return-object p1

    :cond_22
    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityClientProxy.GetLaunchedFromPackage (top.niunaijun.blackbox.fake.service.IActivityClientProxy$GetLaunchedFromPackage)
