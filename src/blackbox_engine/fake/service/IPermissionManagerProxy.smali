.class public Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IPermissionManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy$CheckUidPermission;,
        Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy$CheckPermission;
    }
.end annotation


# static fields
.field private static final PERMISSION_BINDER_SERVICE:Ljava/lang/String; = "permissionmgr"

.field private static final PERMISSION_MANAGER_CLASS:Ljava/lang/String; = "android.permission.PermissionManager"

.field private static final TAG:Ljava/lang/String; = "IPermissionManagerProxy"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "permissionmgr"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private injectPermissionManagerWrapper(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 67
    invoke-static {p2}, Lblack/android/app/BRApplicationPackageManager;->getWithException(Ljava/lang/Object;)Lblack/android/app/ApplicationPackageManagerContext;

    move-result-object p0

    .line 68
    invoke-interface {p0}, Lblack/android/app/ApplicationPackageManagerContext;->mPermissionManager()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_14

    .line 70
    const-string p0, "android.permission.PermissionManager"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :cond_14
    if-eqz p0, :cond_25

    .line 76
    invoke-static {p0}, Lblack/android/permission/BRPermissionManager;->getWithException(Ljava/lang/Object;)Lblack/android/permission/PermissionManagerContext;

    move-result-object p1

    .line 77
    invoke-interface {p1, p3}, Lblack/android/permission/PermissionManagerContext;->_set_mPermissionManager(Ljava/lang/Object;)V

    .line 78
    invoke-static {p2}, Lblack/android/app/BRApplicationPackageManager;->getWithException(Ljava/lang/Object;)Lblack/android/app/ApplicationPackageManagerContext;

    move-result-object p1

    .line 79
    invoke-interface {p1, p0}, Lblack/android/app/ApplicationPackageManagerContext;->_set_mPermissionManager(Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "PermissionManager service is unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 34
    invoke-static {}, Lblack/android/permission/BRIPermissionManagerStub;->get()Lblack/android/permission/IPermissionManagerStubStatic;

    move-result-object p0

    .line 35
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "permissionmgr"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    invoke-interface {p0, v0}, Lblack/android/permission/IPermissionManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 40
    const-string p1, "permissionmgr"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lblack/android/app/BRActivityThread;->getWithException()Lblack/android/app/ActivityThreadStatic;

    move-result-object p1

    invoke-interface {p1, p2}, Lblack/android/app/ActivityThreadStatic;->_set_sPermissionManager(Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lblack/android/app/BRActivityThread;->getWithException(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object p1

    .line 44
    invoke-interface {p1}, Lblack/android/app/ActivityThreadContext;->getSystemContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_28

    .line 47
    sget-object p0, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->TAG:Ljava/lang/String;

    const-string p1, "Unable to initialize the ApplicationPackageManager cache"

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_28
    :try_start_28
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isS()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 52
    invoke-direct {p0, p1, v0, p2}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->injectPermissionManagerWrapper(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/Object;)V

    return-void

    .line 54
    :cond_32
    invoke-static {v0}, Lblack/android/app/BRApplicationPackageManager;->getWithException(Ljava/lang/Object;)Lblack/android/app/ApplicationPackageManagerContext;

    move-result-object p0

    .line 55
    invoke-interface {p0, p2}, Lblack/android/app/ApplicationPackageManagerContext;->_set_mPermissionManager(Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_28 .. :try_end_39} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p0

    .line 58
    sget-object p1, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->TAG:Ljava/lang/String;

    const-string p2, "Unable to replace PermissionManager service cache"

    invoke-static {p1, p2, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 6

    .line 84
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 85
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "addPermissionAsync"

    invoke-direct {v0, v2, v1}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 86
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v2, "addPermission"

    invoke-direct {v0, v2, v1}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 87
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v2, "performDexOpt"

    invoke-direct {v0, v2, v1}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 88
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const/4 v2, 0x0

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "performDexOptIfNeeded"

    invoke-direct {v0, v4, v2}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 89
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "performDexOptSecondary"

    invoke-direct {v0, v4, v1}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 90
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v1, "addOnPermissionsChangeListener"

    invoke-direct {v0, v1, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 91
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v1, "removeOnPermissionsChangeListener"

    invoke-direct {v0, v1, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 92
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v1, "checkDeviceIdentifierAccess"

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 93
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "shouldShowRequestPermissionRationale"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 94
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 95
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v1, "notifyDexLoad"

    invoke-direct {v0, v1, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 96
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v1, "notifyPackageUse"

    invoke-direct {v0, v1, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 97
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v1, "setInstantAppCookie"

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 98
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v1, "isInstantApp"

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    :cond_99
    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.IPermissionManagerProxy.CheckPermission (top.niunaijun.blackbox.fake.service.IPermissionManagerProxy$CheckPermission)
