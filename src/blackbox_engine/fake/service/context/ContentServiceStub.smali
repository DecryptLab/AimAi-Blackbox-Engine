.class public Ltop/niunaijun/blackbox/fake/service/context/ContentServiceStub;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "ContentServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/context/ContentServiceStub$NotifyChange;,
        Ltop/niunaijun/blackbox/fake/service/context/ContentServiceStub$RegisterContentObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "content"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 27
    invoke-static {}, Lblack/android/content/BRIContentServiceStub;->get()Lblack/android/content/IContentServiceStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "content"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/content/IContentServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 32
    const-string p1, "content"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/context/ContentServiceStub;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.context.ContentServiceStub.NotifyChange (top.niunaijun.blackbox.fake.service.context.ContentServiceStub$NotifyChange)
