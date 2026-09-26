.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$UpdateConfiguration;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$unregisterUidObserver;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$registerUidObserver;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$setRequestedOrientation;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$SetTaskDescription;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$checkUriPermission;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$CheckPermissionForDevice;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$checkPermission;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetCurrentUserId;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$getCurrentUser;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$getHistoricalProcessExitReasons;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$SetServiceForeground;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GrantUriPermission;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiver;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiverWithFeature;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$CancelIntentSender;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$SendIntentSender;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$PeekService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$PublishService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$finishReceiver;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$unregisterReceiver;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BroadcastIntent;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BroadcastIntentWithFeature;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSenderWithFeature;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSenderWithSourceToken;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$getUidForIntentSender;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$getPackageForIntentSender;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSender;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetServices;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetRunningAppProcesses;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$UnbindService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindServiceInstance;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindIsolatedService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$StopServiceToken;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$StopService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$StartService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetContentProvider;
    }
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ScanClass;
    value = {
        Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityManagerStub"


# direct methods
.method static bridge synthetic -$$Nest$smisRoutedPendingIntentType(I)Z
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->isRoutedPendingIntentType(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisVirtualSystemPermission(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->isVirtualSystemPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smrequireNamedParameterIndex([Ljava/lang/Class;Ljava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->requireNamedParameterIndex([Ljava/lang/Class;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smrequireParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I
    .registers 3

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->requireParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smrequirePreviousParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I
    .registers 3

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->requirePreviousParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method

.method private static isRoutedPendingIntentType(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x4

    if-eq p0, v1, :cond_f

    const/4 v1, 0x5

    if-ne p0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    return v0
.end method

.method private static isVirtualSystemPermission(Ljava/lang/String;)Z
    .registers 2

    .line 80
    const-string v0, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "android.permission.SEND_SMS"

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private static requireNamedParameterIndex([Ljava/lang/Class;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 641
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 642
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 646
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing parameter type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static requireParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 622
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_5
    array-length v0, p0

    if-ge p2, v0, :cond_10

    .line 623
    aget-object v0, p0, p2

    if-ne v0, p1, :cond_d

    return p2

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 627
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Missing parameter type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static requirePreviousParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_c

    .line 633
    aget-object v0, p0, p2

    if-ne v0, p1, :cond_9

    return p2

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 637
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Missing parameter type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 1

    .line 87
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 88
    invoke-static {}, Lblack/android/app/BRActivityManagerOreo;->get()Lblack/android/app/ActivityManagerOreoStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityManagerOreoStatic;->IActivityManagerSingleton()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1f

    .line 89
    :cond_f
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 90
    invoke-static {}, Lblack/android/app/BRActivityManagerNative;->get()Lblack/android/app/ActivityManagerNativeStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityManagerNativeStatic;->gDefault()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 92
    :goto_1f
    invoke-static {p0}, Lblack/android/util/BRSingleton;->get(Ljava/lang/Object;)Lblack/android/util/SingletonContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/util/SingletonContext;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 98
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 99
    invoke-static {}, Lblack/android/app/BRActivityManagerOreo;->get()Lblack/android/app/ActivityManagerOreoStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityManagerOreoStatic;->IActivityManagerSingleton()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1f

    .line 100
    :cond_f
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 101
    invoke-static {}, Lblack/android/app/BRActivityManagerNative;->get()Lblack/android/app/ActivityManagerNativeStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityManagerNativeStatic;->gDefault()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 103
    :goto_1f
    invoke-static {p0}, Lblack/android/util/BRSingleton;->get(Ljava/lang/Object;)Lblack/android/util/SingletonContext;

    move-result-object p0

    invoke-interface {p0, p2}, Lblack/android/util/SingletonContext;->_set_mInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    .line 108
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->getWho()Ljava/lang/Object;

    move-result-object p0

    if-eq v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 3

    .line 113
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->onBindMethod()V

    .line 114
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "getAppStartMode"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 115
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "setAppLockedVerifying"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 116
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "reportJunkFromApp"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.BindIsolatedService (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$BindIsolatedService)
