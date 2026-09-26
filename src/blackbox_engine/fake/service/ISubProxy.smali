.class public final Ltop/niunaijun/blackbox/fake/service/ISubProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "ISubProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/ISubProxy$GetActiveSubIdList;
    }
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "isub"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/ISubProxy;->getService()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static getService()Landroid/os/IBinder;
    .registers 2

    .line 22
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "isub"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-static {}, Lblack/com/android/internal/telephony/BRISubStub;->get()Lblack/com/android/internal/telephony/ISubStubStatic;

    move-result-object p0

    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/ISubProxy;->getService()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/com/android/internal/telephony/ISubStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 32
    const-string p1, "isub"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/ISubProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lblack/android/telephony/BRTelephonyManager;->get()Lblack/android/telephony/TelephonyManagerStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/telephony/TelephonyManagerStatic;->_check_sISub()Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 34
    invoke-static {}, Lblack/android/telephony/BRTelephonyManager;->get()Lblack/android/telephony/TelephonyManagerStatic;

    move-result-object p0

    invoke-interface {p0, p2}, Lblack/android/telephony/TelephonyManagerStatic;->_set_sISub(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.ISubProxy.GetActiveSubIdList (top.niunaijun.blackbox.fake.service.ISubProxy$GetActiveSubIdList)
