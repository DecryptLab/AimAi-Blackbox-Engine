.class public Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "ContentProviderStub.java"

# interfaces
.implements Ltop/niunaijun/blackbox/fake/service/context/providers/BContentProvider;


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentProviderStub"


# instance fields
.field private mAppPkg:Ljava/lang/String;

.field private mBase:Landroid/os/IInterface;

.field private mCallingUid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method

.method static invokeBase(Landroid/os/IInterface;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_e

    :cond_d
    move-object p0, p1

    .line 72
    :goto_e
    throw p0
.end method

.method static prepareArguments([Ljava/lang/Object;ILjava/lang/String;)V
    .registers 3

    .line 64
    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fixContentProviderArgs([Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 1

    .line 41
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->mBase:Landroid/os/IInterface;

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

    .line 56
    const-string p1, "asBinder"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 57
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->mBase:Landroid/os/IInterface;

    invoke-static {p0, p2, p3}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->invokeBase(Landroid/os/IInterface;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 59
    :cond_13
    iget p1, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->mCallingUid:I

    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->mAppPkg:Ljava/lang/String;

    invoke-static {p3, p1, v0}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->prepareArguments([Ljava/lang/Object;ILjava/lang/String;)V

    .line 60
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->mBase:Landroid/os/IInterface;

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
    .registers 4

    .line 27
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;I)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method public wrapper(Landroid/os/IInterface;Ljava/lang/String;I)Landroid/os/IInterface;
    .registers 4

    .line 32
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->mBase:Landroid/os/IInterface;

    .line 33
    iput-object p2, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->mAppPkg:Ljava/lang/String;

    .line 34
    iput p3, p0, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->mCallingUid:I

    .line 35
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->injectHook()V

    .line 36
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0
.end method
