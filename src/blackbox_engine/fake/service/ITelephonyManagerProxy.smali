.class public Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "ITelephonyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$GetNetworkTypeForSubscriber;,
        Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$GetNetworkOperator;,
        Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$getLine1NumberForDisplay;,
        Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$IsUserDataEnabled;,
        Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$GetProtectedDeviceIdentifier;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ITelephonyManagerProxy"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "phone"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object p0

    const-string v0, "phone"

    invoke-interface {p0, v0}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 34
    invoke-static {}, Lblack/com/android/internal/telephony/BRITelephonyStub;->get()Lblack/com/android/internal/telephony/ITelephonyStubStatic;

    move-result-object v0

    invoke-interface {v0, p0}, Lblack/com/android/internal/telephony/ITelephonyStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 39
    const-string p1, "phone"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.ITelephonyManagerProxy.GetNetworkOperator (top.niunaijun.blackbox.fake.service.ITelephonyManagerProxy$GetNetworkOperator)
