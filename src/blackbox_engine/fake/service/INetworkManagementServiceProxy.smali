.class public Ltop/niunaijun/blackbox/fake/service/INetworkManagementServiceProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "INetworkManagementServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/INetworkManagementServiceProxy$getNetworkStatsUidDetail;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "network_management"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "network_management"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 27
    invoke-static {}, Lblack/android/os/BRINetworkManagementServiceStub;->get()Lblack/android/os/INetworkManagementServiceStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "network_management"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/os/INetworkManagementServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 32
    const-string p1, "network_management"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/INetworkManagementServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 4

    .line 42
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 43
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;

    const-string v1, "setUidCleartextNetworkPolicy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/INetworkManagementServiceProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 44
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;

    const-string v1, "setUidMeteredNetworkBlacklist"

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/INetworkManagementServiceProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 45
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;

    const-string v1, "setUidMeteredNetworkWhitelist"

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/INetworkManagementServiceProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.INetworkManagementServiceProxy.getNetworkStatsUidDetail (top.niunaijun.blackbox.fake.service.INetworkManagementServiceProxy$getNetworkStatsUidDetail)
