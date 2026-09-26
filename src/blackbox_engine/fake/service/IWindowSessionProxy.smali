.class public Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IWindowSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy$AddToDisplayAsUser;,
        Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy$AddToDisplay;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowSessionStub"


# instance fields
.field private mSession:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .registers 3

    .line 28
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 29
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy;->mSession:Landroid/os/IInterface;

    return-void
.end method


# virtual methods
.method public getProxyInvocation()Ljava/lang/Object;
    .registers 1

    .line 49
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected getWho()Ljava/lang/Object;
    .registers 1

    .line 34
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy;->mSession:Landroid/os/IInterface;

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IWindowSessionProxy.AddToDisplay (top.niunaijun.blackbox.fake.service.IWindowSessionProxy$AddToDisplay)
