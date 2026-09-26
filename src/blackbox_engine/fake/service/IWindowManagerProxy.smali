.class public Ltop/niunaijun/blackbox/fake/service/IWindowManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IWindowManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IWindowManagerProxy$OpenSession;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManagerStub"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "window"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 31
    invoke-static {}, Lblack/android/view/BRIWindowManagerStub;->get()Lblack/android/view/IWindowManagerStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "window"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/view/IWindowManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 36
    const-string p1, "window"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IWindowManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lblack/android/view/BRWindowManagerGlobal;->get()Lblack/android/view/WindowManagerGlobalStatic;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lblack/android/view/WindowManagerGlobalStatic;->_set_sWindowManagerService(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IWindowManagerProxy.OpenSession (top.niunaijun.blackbox.fake.service.IWindowManagerProxy$OpenSession)
