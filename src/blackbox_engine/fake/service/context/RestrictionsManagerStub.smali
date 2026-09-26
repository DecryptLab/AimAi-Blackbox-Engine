.class public Ltop/niunaijun/blackbox/fake/service/context/RestrictionsManagerStub;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "RestrictionsManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/context/RestrictionsManagerStub$GetApplicationRestrictions;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "restrictions"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 30
    invoke-static {}, Lblack/android/content/BRIRestrictionsManagerStub;->get()Lblack/android/content/IRestrictionsManagerStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "restrictions"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/content/IRestrictionsManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 35
    const-string p1, "restrictions"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/context/RestrictionsManagerStub;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.context.RestrictionsManagerStub.GetApplicationRestrictions (top.niunaijun.blackbox.fake.service.context.RestrictionsManagerStub$GetApplicationRestrictions)
