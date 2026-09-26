.class public Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "SettingsProviderStub.java"

# interfaces
.implements Ltop/niunaijun/blackbox/fake/service/context/providers/BContentProvider;


# instance fields
.field private mAppPkg:Ljava/lang/String;

.field private mBase:Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 1

    .line 32
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;->mBase:Landroid/os/IInterface;

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    const-string p1, "asBinder"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 53
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;->mBase:Landroid/os/IInterface;

    invoke-static {p0, p2, p3}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->invokeBase(Landroid/os/IInterface;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 55
    :cond_13
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result p1

    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;->mAppPkg:Ljava/lang/String;

    invoke-static {p3, p1, v0}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->prepareArguments([Ljava/lang/Object;ILjava/lang/String;)V

    .line 56
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;->mBase:Landroid/os/IInterface;

    invoke-static {p0, p2, p3}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->invokeBase(Landroid/os/IInterface;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 1

    return-void
.end method

.method public wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .registers 3

    .line 24
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;->mBase:Landroid/os/IInterface;

    .line 25
    iput-object p2, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;->mAppPkg:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;->injectHook()V

    .line 27
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0
.end method
