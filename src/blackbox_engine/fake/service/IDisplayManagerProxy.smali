.class public Ltop/niunaijun/blackbox/fake/service/IDisplayManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "IDisplayManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IDisplayManagerProxy$CreateVirtualDisplay;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 1

    .line 29
    invoke-static {}, Lblack/android/hardware/display/BRDisplayManagerGlobal;->get()Lblack/android/hardware/display/DisplayManagerGlobalStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/hardware/display/DisplayManagerGlobalStatic;->getInstance()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lblack/android/hardware/display/BRDisplayManagerGlobal;->get(Ljava/lang/Object;)Lblack/android/hardware/display/DisplayManagerGlobalContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/hardware/display/DisplayManagerGlobalContext;->mDm()Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 34
    invoke-static {}, Lblack/android/hardware/display/BRDisplayManagerGlobal;->get()Lblack/android/hardware/display/DisplayManagerGlobalStatic;

    move-result-object p1

    invoke-interface {p1}, Lblack/android/hardware/display/DisplayManagerGlobalStatic;->getInstance()Ljava/lang/Object;

    move-result-object p1

    .line 35
    invoke-static {p1}, Lblack/android/hardware/display/BRDisplayManagerGlobal;->get(Ljava/lang/Object;)Lblack/android/hardware/display/DisplayManagerGlobalContext;

    move-result-object p1

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/IDisplayManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lblack/android/hardware/display/DisplayManagerGlobalContext;->_set_mDm(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    .line 40
    invoke-static {}, Lblack/android/hardware/display/BRDisplayManagerGlobal;->get()Lblack/android/hardware/display/DisplayManagerGlobalStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/hardware/display/DisplayManagerGlobalStatic;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lblack/android/hardware/display/BRDisplayManagerGlobal;->get(Ljava/lang/Object;)Lblack/android/hardware/display/DisplayManagerGlobalContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/hardware/display/DisplayManagerGlobalContext;->mDm()Landroid/os/IInterface;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/IDisplayManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p0

    if-eq v0, p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IDisplayManagerProxy.CreateVirtualDisplay (top.niunaijun.blackbox.fake.service.IDisplayManagerProxy$CreateVirtualDisplay)
