.class public Ltop/niunaijun/blackbox/fake/service/IWindowManagerProxy$OpenSession;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IWindowManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IWindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenSession"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "openSession"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    .line 50
    new-instance p1, Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy;-><init>(Landroid/os/IInterface;)V

    .line 51
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy;->injectHook()V

    .line 52
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/fake/service/IWindowSessionProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
