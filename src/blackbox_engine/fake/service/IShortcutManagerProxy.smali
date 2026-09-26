.class public Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IShortcutManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy$PushDynamicShortcut;,
        Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy$CreateShortcutResultIntent;,
        Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy$AddDynamicShortcuts;,
        Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy$SetDynamicShortcuts;,
        Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy$RequestPinShortcut;
    }
.end annotation


# static fields
.field private static final ANDROID_FUTURE_CLASS_NAME:Ljava/lang/String; = "com.android.internal.infra.AndroidFuture"

.field private static final COMPLETE_METHOD_NAME:Ljava/lang/String; = "complete"

.field private static final PIN_SHORTCUT_SUPPORTED:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetPIN_SHORTCUT_SUPPORTED()Ljava/lang/String;
    .registers 1

    sget-object v0, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->PIN_SHORTCUT_SUPPORTED:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdeliverResult(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->deliverResult(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->PIN_SHORTCUT_SUPPORTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "shortcut"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static completeFuture(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 120
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ltz v1, :cond_59

    if-eqz p1, :cond_59

    .line 121
    array-length v3, p1

    if-le v3, v1, :cond_59

    aget-object v0, v0, v1

    .line 124
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.internal.infra.AndroidFuture"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    aget-object p1, p1, v1

    if-eqz p1, :cond_59

    .line 131
    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "complete"

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 132
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 133
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 134
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    return-void

    .line 135
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shortcut result future was already completed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_4a} :catch_53
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_20 .. :try_end_4a} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p0

    .line 140
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to complete shortcut result future"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_53
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 126
    :cond_59
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported asynchronous shortcut service signature: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static deliverResult(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_9

    return-object p3

    .line 114
    :cond_9
    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->completeFuture(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 31
    invoke-static {}, Lblack/android/content/pm/BRIShortcutServiceStub;->get()Lblack/android/content/pm/IShortcutServiceStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "shortcut"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/content/pm/IShortcutServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 36
    const-string p1, "shortcut"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 146
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceAllAppPkg([Ljava/lang/Object;)V

    .line 147
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 3

    .line 46
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 47
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "getShortcuts"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 48
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "disableShortcuts"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 49
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "enableShortcuts"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 50
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "getRemainingCallCount"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 51
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "getRateLimitResetTime"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 52
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "getIconMaxDimensions"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 53
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "getMaxShortcutCountPerActivity"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 54
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "reportShortcutUsed"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 55
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "onApplicationActive"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 56
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "hasShortcutHostPermission"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 57
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "removeAllDynamicShortcuts"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 58
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "removeDynamicShortcuts"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 59
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "removeLongLivedShortcuts"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 60
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy$1;

    const-string v1, "getManifestShortcuts"

    invoke-direct {v0, p0, v1}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy$1;-><init>(Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.IShortcutManagerProxy.AnonymousClass1 (top.niunaijun.blackbox.fake.service.IShortcutManagerProxy$1)
