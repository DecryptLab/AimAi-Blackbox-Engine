.class public Ltop/niunaijun/blackbox/fake/service/IFingerprintManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IFingerprintManagerProxy.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "fingerprint"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 17
    invoke-static {}, Lblack/android/hardware/fingerprint/BRIFingerprintServiceStub;->get()Lblack/android/hardware/fingerprint/IFingerprintServiceStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/hardware/fingerprint/IFingerprintServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 22
    const-string p1, "fingerprint"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IFingerprintManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 3

    .line 32
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 33
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "isHardwareDetected"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IFingerprintManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 34
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "hasEnrolledFingerprints"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IFingerprintManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 35
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "authenticate"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IFingerprintManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 36
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "cancelAuthentication"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IFingerprintManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 37
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "getEnrolledFingerprints"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IFingerprintManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 38
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "getAuthenticatorId"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IFingerprintManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    return-void
.end method
