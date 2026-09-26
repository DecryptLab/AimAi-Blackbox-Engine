.class public Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetLaunchedFromPackage;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLaunchedFromPackage"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getLaunchedFromPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 132
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

    .line 135
    aget-object p0, p3, p0

    check-cast p0, Landroid/os/IBinder;

    .line 136
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    .line 137
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    .line 136
    invoke-virtual {v0, p0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    return-object p0

    .line 141
    :cond_14
    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->-$$Nest$smgetVirtualPackageFallback()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1e

    .line 142
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_1e
    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityClientProxy.GetLaunchedFromUid (top.niunaijun.blackbox.fake.service.IActivityClientProxy$GetLaunchedFromUid)
