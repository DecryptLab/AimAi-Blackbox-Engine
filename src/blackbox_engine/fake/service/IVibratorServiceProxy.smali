.class public Ltop/niunaijun/blackbox/fake/service/IVibratorServiceProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IVibratorServiceProxy.java"


# static fields
.field private static NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 22
    const-string v0, "vibrator_manager"

    sput-object v0, Ltop/niunaijun/blackbox/fake/service/IVibratorServiceProxy;->NAME:Ljava/lang/String;

    return-void

    .line 24
    :cond_b
    const-string v0, "vibrator"

    sput-object v0, Ltop/niunaijun/blackbox/fake/service/IVibratorServiceProxy;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    sget-object v1, Ltop/niunaijun/blackbox/fake/service/IVibratorServiceProxy;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object p0

    sget-object v0, Ltop/niunaijun/blackbox/fake/service/IVibratorServiceProxy;->NAME:Ljava/lang/String;

    invoke-interface {p0, v0}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 35
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isS()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 36
    invoke-static {}, Lblack/android/os/BRIVibratorManagerServiceStub;->get()Lblack/android/os/IVibratorManagerServiceStubStatic;

    move-result-object v0

    invoke-interface {v0, p0}, Lblack/android/os/IVibratorManagerServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0

    .line 38
    :cond_19
    invoke-static {}, Lblack/com/android/internal/os/BRIVibratorServiceStub;->get()Lblack/com/android/internal/os/IVibratorServiceStubStatic;

    move-result-object v0

    invoke-interface {v0, p0}, Lblack/com/android/internal/os/IVibratorServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 43
    sget-object p1, Ltop/niunaijun/blackbox/fake/service/IVibratorServiceProxy;->NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IVibratorServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceFirstUid([Ljava/lang/Object;)V

    .line 54
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
