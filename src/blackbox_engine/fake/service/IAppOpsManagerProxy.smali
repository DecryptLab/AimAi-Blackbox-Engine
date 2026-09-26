.class public Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IAppOpsManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy$NoteOperation;,
        Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy$CheckOperation;,
        Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy$CheckPackage;,
        Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy$NoteProxyOperation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IAppOpsManagerProxy"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "appops"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 38
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object p0

    const-string v0, "appops"

    invoke-interface {p0, v0}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 39
    invoke-static {}, Lblack/com/android/internal/app/BRIAppOpsServiceStub;->get()Lblack/com/android/internal/app/IAppOpsServiceStubStatic;

    move-result-object v0

    invoke-interface {v0, p0}, Lblack/com/android/internal/app/IAppOpsServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    const/4 p1, 0x0

    .line 44
    invoke-static {p1}, Lblack/android/app/BRAppOpsManager;->get(Ljava/lang/Object;)Lblack/android/app/AppOpsManagerContext;

    move-result-object p1

    invoke-interface {p1}, Lblack/android/app/AppOpsManagerContext;->_check_mService()Ljava/lang/reflect/Field;

    move-result-object p1

    const-string p2, "appops"

    if-eqz p1, :cond_2b

    .line 45
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 47
    :try_start_17
    invoke-static {p1}, Lblack/android/app/BRAppOpsManager;->get(Ljava/lang/Object;)Lblack/android/app/AppOpsManagerContext;

    move-result-object p1

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lblack/android/app/AppOpsManagerContext;->_set_mService(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception p1

    .line 49
    sget-object v0, Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;->TAG:Ljava/lang/String;

    const-string v1, "Unable to replace AppOpsManager service cache"

    invoke-static {v0, v1, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_2b
    :goto_2b
    invoke-virtual {p0, p2}, Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceLastUid([Ljava/lang/Object;)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IAppOpsManagerProxy.CheckOperation (top.niunaijun.blackbox.fake.service.IAppOpsManagerProxy$CheckOperation)
