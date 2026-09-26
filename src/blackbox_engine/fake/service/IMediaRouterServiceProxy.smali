.class public Ltop/niunaijun/blackbox/fake/service/IMediaRouterServiceProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IMediaRouterServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IMediaRouterServiceProxy$registerRouter2;,
        Ltop/niunaijun/blackbox/fake/service/IMediaRouterServiceProxy$registerClientAsUser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "media_router"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 25
    invoke-static {}, Lblack/android/media/BRIMediaRouterServiceStub;->get()Lblack/android/media/IMediaRouterServiceStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "media_router"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/media/IMediaRouterServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 30
    const-string p1, "media_router"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IMediaRouterServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IMediaRouterServiceProxy.registerClientAsUser (top.niunaijun.blackbox.fake.service.IMediaRouterServiceProxy$registerClientAsUser)
