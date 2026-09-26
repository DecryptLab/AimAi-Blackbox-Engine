.class public Ltop/niunaijun/blackbox/app/BActivityThread;
.super Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;
.source "BActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "BActivityThread"

.field private static final mConfigLock:Ljava/lang/Object;

.field private static sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;


# instance fields
.field private mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

.field private mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

.field private final mH:Landroid/os/Handler;

.field private mInitialApplication:Landroid/app/Application;

.field private final mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8ircMSO1ovsHTTM2b6b_CGjrbBA(Ltop/niunaijun/blackbox/app/BActivityThread;Ltop/niunaijun/blackbox/entity/am/ReceiverData;)V
    .registers 2

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/app/BActivityThread;->lambda$scheduleReceiver$3(Ltop/niunaijun/blackbox/entity/am/ReceiverData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MVbQ0K4K1Dl2RPXMYTemYvGs4ZM(Ltop/niunaijun/blackbox/app/BActivityThread;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/app/BActivityThread;->lambda$bindApplication$0(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAppConfig(Ltop/niunaijun/blackbox/app/BActivityThread;Ltop/niunaijun/blackbox/entity/AppConfig;)V
    .registers 2

    iput-object p1, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmConfigLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mConfigLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mConfigLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mProviders:Ljava/util/List;

    .line 87
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mH:Landroid/os/Handler;

    return-void
.end method

.method public static createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;
    .registers 3

    .line 412
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 415
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;
    .registers 2

    .line 95
    sget-object v0, Ltop/niunaijun/blackbox/app/BActivityThread;->sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;

    if-nez v0, :cond_17

    .line 96
    const-class v0, Ltop/niunaijun/blackbox/app/BActivityThread;

    monitor-enter v0

    .line 97
    :try_start_7
    sget-object v1, Ltop/niunaijun/blackbox/app/BActivityThread;->sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;

    if-nez v1, :cond_12

    .line 98
    new-instance v1, Ltop/niunaijun/blackbox/app/BActivityThread;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/app/BActivityThread;-><init>()V

    sput-object v1, Ltop/niunaijun/blackbox/app/BActivityThread;->sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;

    .line 100
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 102
    :cond_17
    :goto_17
    sget-object v0, Ltop/niunaijun/blackbox/app/BActivityThread;->sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;

    return-object v0
.end method

.method public static getActivityByToken(Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 2

    .line 595
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/ActivityThreadContext;->mActivities()Ljava/util/Map;

    move-result-object v0

    .line 596
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lblack/android/app/BRActivityThreadActivityClientRecord;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadActivityClientRecordContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityThreadActivityClientRecordContext;->activity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;
    .registers 2

    .line 106
    sget-object v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v1

    iget-object v1, v1, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 108
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .registers 1

    .line 126
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 127
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->packageName:Ljava/lang/String;

    return-object v0

    .line 128
    :cond_d
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_20

    .line 129
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppPid()I
    .registers 1

    .line 148
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->bpid:I

    return v0
.end method

.method public static getAppProcessName()Ljava/lang/String;
    .registers 1

    .line 116
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 117
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    return-object v0

    .line 118
    :cond_d
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    if-eqz v0, :cond_1e

    .line 119
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 1

    .line 136
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getBAppId()I
    .registers 1

    .line 156
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static getBUid()I
    .registers 1

    .line 152
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_9

    const/16 v0, 0x2710

    return v0

    :cond_9
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->buid:I

    return v0
.end method

.method public static getCallingBUid()I
    .registers 1

    .line 160
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result v0

    return v0

    :cond_b
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->callingBUid:I

    return v0
.end method

.method public static getProviders()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mProviders:Ljava/util/List;

    return-object v0
.end method

.method public static getUid()I
    .registers 1

    .line 164
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->uid:I

    return v0
.end method

.method public static getUserId()I
    .registers 1

    .line 168
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->userId:I

    return v0
.end method

.method private installCrashHandler(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 396
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackbox/core/CrashHandler;->install(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception p0

    .line 398
    const-string p1, "BActivityThread"

    const-string p2, "Unable to install Java crash diagnostics"

    invoke-static {p1, p2, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private installNativeCrashCapture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 404
    :try_start_0
    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/NativeCore;->installGuestCrashCapture(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p0

    .line 406
    const-string p1, "BActivityThread"

    const-string p2, "Unable to install native crash diagnostics"

    invoke-static {p1, p2, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static installProvider(Ljava/lang/Object;Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "installProvider"

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/Reflector;->findMethodByFirstName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 446
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-void
.end method

.method private installProviders(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 421
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 423
    :try_start_4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_8
    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ProviderInfo;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_3c

    .line 425
    :try_start_14
    iget-object v2, p3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-boolean v2, p3, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v2, :cond_8

    .line 427
    :cond_2c
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, p3, v3}, Ltop/niunaijun/blackbox/app/BActivityThread;->installProvider(Ljava/lang/Object;Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_8

    goto :goto_8

    .line 433
    :cond_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->init()V

    return-void

    :catchall_3c
    move-exception p0

    .line 433
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->init()V

    .line 435
    throw p0
.end method

.method public static isCurrentProcess(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 140
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 141
    iget v1, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->userId:I

    if-ne v1, p2, :cond_1c

    iget-object p2, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->packageName:Ljava/lang/String;

    .line 143
    invoke-static {p2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    iget-object p0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    .line 144
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static isThreadInit()Z
    .registers 1

    .line 91
    sget-object v0, Ltop/niunaijun/blackbox/app/BActivityThread;->sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$bindApplication$0(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .registers 4

    .line 294
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/app/BActivityThread;->handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method static synthetic lambda$finishActivity$1(Landroid/os/IBinder;)V
    .registers 4

    .line 502
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/ActivityThreadContext;->mActivities()Ljava/util/Map;

    move-result-object v0

    .line 503
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_19

    .line 505
    :cond_13
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    :goto_19
    return-void

    .line 508
    :cond_1a
    invoke-static {p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->getActivityByToken(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    .line 510
    :goto_1e
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 511
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1e

    .line 514
    :cond_29
    invoke-static {v0}, Lblack/android/app/BRActivity;->get(Ljava/lang/Object;)Lblack/android/app/ActivityContext;

    move-result-object v1

    invoke-interface {v1}, Lblack/android/app/ActivityContext;->mResultCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 515
    invoke-static {v0}, Lblack/android/app/BRActivity;->get(Ljava/lang/Object;)Lblack/android/app/ActivityContext;

    move-result-object v2

    invoke-interface {v2}, Lblack/android/app/ActivityContext;->mResultData()Landroid/content/Intent;

    move-result-object v2

    .line 516
    invoke-static {p0, v1, v2}, Ltop/niunaijun/blackbox/utils/compat/ActivityManagerCompat;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    .line 517
    invoke-static {v0}, Lblack/android/app/BRActivity;->get(Ljava/lang/Object;)Lblack/android/app/ActivityContext;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/app/ActivityContext;->_set_mFinished(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$handleNewIntent$2(Landroid/content/Intent;Landroid/os/IBinder;)V
    .registers 7

    .line 526
    invoke-static {}, Lblack/com/android/internal/content/BRReferrerIntent;->get()Lblack/com/android/internal/content/ReferrerIntentStatic;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lblack/com/android/internal/content/ReferrerIntentStatic;->_new(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 530
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 531
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isS()Z

    move-result v1

    const-string v2, "BActivityThread"

    const/4 v3, 0x0

    if-eqz v1, :cond_3f

    .line 532
    invoke-static {v0}, Lblack/android/app/BRClientTransactionHandler;->get(Ljava/lang/Object;)Lblack/android/app/ClientTransactionHandlerContext;

    move-result-object v1

    .line 533
    invoke-interface {v1, v3, v3}, Lblack/android/app/ClientTransactionHandlerContext;->_check_handleNewIntent(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 534
    invoke-static {v0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v1

    invoke-interface {v1, p1}, Lblack/android/app/ActivityThreadContext;->getActivityClient(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_33

    .line 536
    const-string p0, "Unable to deliver new intent: activity record not found"

    invoke-static {v2, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 539
    :cond_33
    invoke-static {v0}, Lblack/android/app/BRClientTransactionHandler;->get(Ljava/lang/Object;)Lblack/android/app/ClientTransactionHandlerContext;

    move-result-object v0

    .line 541
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 539
    invoke-interface {v0, p1, p0}, Lblack/android/app/ClientTransactionHandlerContext;->handleNewIntent(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Void;

    return-void

    .line 542
    :cond_3f
    invoke-static {v0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v1

    invoke-interface {v1, v3, v3}, Lblack/android/app/ActivityThreadContext;->_check_performNewIntents(Landroid/os/IBinder;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 543
    invoke-static {v0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v0

    .line 545
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 543
    invoke-interface {v0, p1, p0}, Lblack/android/app/ActivityThreadContext;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)Ljava/lang/Void;

    return-void

    .line 547
    :cond_55
    invoke-static {v0}, Lblack/android/app/BRActivityThreadNMR1;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadNMR1Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v3, v4}, Lblack/android/app/ActivityThreadNMR1Context;->_check_performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 548
    invoke-static {v0}, Lblack/android/app/BRActivityThreadNMR1;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadNMR1Context;

    move-result-object v0

    .line 550
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x1

    .line 548
    invoke-interface {v0, p1, p0, v1}, Lblack/android/app/ActivityThreadNMR1Context;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)Ljava/lang/Void;

    return-void

    .line 552
    :cond_6d
    invoke-static {v0}, Lblack/android/app/BRActivityThreadQ;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadQContext;

    move-result-object v1

    invoke-interface {v1, v3, v3}, Lblack/android/app/ActivityThreadQContext;->_check_handleNewIntent(Landroid/os/IBinder;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 553
    invoke-static {v0}, Lblack/android/app/BRActivityThreadQ;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadQContext;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lblack/android/app/ActivityThreadQContext;->handleNewIntent(Landroid/os/IBinder;Ljava/util/List;)Ljava/lang/Void;

    return-void

    .line 555
    :cond_83
    const-string p0, "Unable to deliver new intent: unsupported framework signature"

    invoke-static {v2, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$scheduleReceiver$3(Ltop/niunaijun/blackbox/entity/am/ReceiverData;)V
    .registers 7

    .line 567
    iget-object v0, p1, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->intent:Landroid/content/Intent;

    .line 568
    iget-object v1, p1, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 569
    iget-object v2, p1, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->data:Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    invoke-virtual {v2}, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->build()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v2

    const/4 v3, 0x0

    .line 572
    :try_start_b
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 574
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 576
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_48

    .line 577
    :try_start_24
    invoke-static {v1}, Lblack/android/content/BRBroadcastReceiver;->get(Ljava/lang/Object;)Lblack/android/content/BroadcastReceiverContext;

    move-result-object v3

    invoke-interface {v3, v2}, Lblack/android/content/BroadcastReceiverContext;->setPendingResult(Ljava/lang/Object;)Ljava/lang/Void;

    .line 578
    invoke-virtual {v1, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 579
    invoke-static {v1}, Lblack/android/content/BRBroadcastReceiver;->get(Ljava/lang/Object;)Lblack/android/content/BroadcastReceiverContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/content/BroadcastReceiverContext;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 581
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 583
    :cond_3b
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p0

    iget-object p1, p1, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->data:Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->finishBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingResultData;)V
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_45

    return-void

    :catchall_45
    move-exception p0

    move-object v3, v1

    goto :goto_49

    :catchall_48
    move-exception p0

    .line 585
    :goto_49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 586
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Error receiving broadcast "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BActivityThread"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onAfterApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .registers 6

    .line 612
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    .line 613
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;->afterApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V

    goto :goto_c

    :cond_20
    return-void
.end method

.method private onBeforeApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .registers 6

    .line 606
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    .line 607
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;->beforeApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V

    goto :goto_c

    :cond_20
    return-void
.end method

.method private onBeforeCreateApplication(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    .line 600
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getAppLifecycleCallbacks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    .line 601
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;->beforeCreateApplication(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_c

    :cond_20
    return-void
.end method


# virtual methods
.method public acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_15

    .line 480
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->packageName:Ljava/lang/String;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v1

    iget-object v1, v1, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ltop/niunaijun/blackbox/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_15
    iget-object p0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 483
    array-length p1, p0

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, p1, :cond_41

    aget-object v1, p0, v0

    .line 484
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 486
    invoke-static {v1}, Lblack/android/content/BRContentProviderClient;->get(Ljava/lang/Object;)Lblack/android/content/ContentProviderClientContext;

    move-result-object v1

    invoke-interface {v1}, Lblack/android/content/ContentProviderClientContext;->mContentProvider()Landroid/os/IInterface;

    move-result-object v1

    if-nez v1, :cond_3c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 489
    :cond_3c
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method

.method public bindApplication()V
    .registers 3

    .line 457
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_11

    .line 458
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltop/niunaijun/blackbox/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public bindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 291
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_23

    .line 292
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 293
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v1

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda1;-><init>(Ltop/niunaijun/blackbox/app/BActivityThread;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 299
    :cond_23
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/app/BActivityThread;->handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createJobService(Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobService;
    .registers 16

    .line 246
    const-string v1, ": "

    const-string v2, "Unable to create JobService "

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-static {v0, v3, v4}, Ltop/niunaijun/blackbox/app/BActivityThread;->isCurrentProcess(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    const-string v3, "BActivityThread"

    const/4 v4, 0x0

    if-nez v0, :cond_36

    .line 247
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Rejecting job service outside assigned process: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 251
    :cond_36
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 252
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ltop/niunaijun/blackbox/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_4b
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    invoke-static {v0}, Lblack/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lblack/android/app/LoadedApkContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/LoadedApkContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 257
    :try_start_57
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobService;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_63} :catch_c1

    .line 266
    :try_start_63
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 270
    invoke-static {v8}, Lblack/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lblack/android/app/ContextImplContext;

    move-result-object v3

    invoke-interface {v3, v0}, Lblack/android/app/ContextImplContext;->setOuterContext(Landroid/content/Context;)Ljava/lang/Void;

    .line 271
    invoke-static {v0}, Lblack/android/app/BRService;->get(Ljava/lang/Object;)Lblack/android/app/ServiceContext;

    move-result-object v7

    .line 273
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 275
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Ltop/niunaijun/blackbox/app/BActivityThread;->getActivityThread()Landroid/os/IBinder;

    move-result-object v11

    iget-object v12, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 277
    invoke-static {}, Lblack/android/app/BRActivityManagerNative;->get()Lblack/android/app/ActivityManagerNativeStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityManagerNativeStatic;->getDefault()Landroid/os/IInterface;

    move-result-object v13

    .line 271
    invoke-interface/range {v7 .. v13}, Lblack/android/app/ServiceContext;->attach(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)Ljava/lang/Void;

    .line 279
    invoke-static {v8}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 280
    invoke-virtual {v0}, Landroid/app/job/JobService;->onCreate()V

    .line 281
    invoke-virtual {v0, v4}, Landroid/app/job/JobService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_9d} :catch_9e

    return-object v0

    :catch_9e
    move-exception v0

    move-object p0, v0

    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 286
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_c1
    move-exception v0

    move-object p0, v0

    .line 259
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 261
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 260
    invoke-static {v3, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public createService(Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;)Landroid/app/Service;
    .registers 15

    .line 202
    const-string v1, ": "

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-static {v0, v2, v3}, Ltop/niunaijun/blackbox/app/BActivityThread;->isCurrentProcess(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "BActivityThread"

    if-nez v0, :cond_34

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Rejecting service outside assigned process: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 207
    :cond_34
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_49

    .line 208
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ltop/niunaijun/blackbox/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_49
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    invoke-static {v0}, Lblack/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lblack/android/app/LoadedApkContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/LoadedApkContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 213
    :try_start_55
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_61} :catch_b7

    .line 222
    :try_start_61
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 226
    invoke-static {v6}, Lblack/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lblack/android/app/ContextImplContext;

    move-result-object v2

    invoke-interface {v2, v0}, Lblack/android/app/ContextImplContext;->setOuterContext(Landroid/content/Context;)Ljava/lang/Void;

    .line 227
    invoke-static {v0}, Lblack/android/app/BRService;->get(Ljava/lang/Object;)Lblack/android/app/ServiceContext;

    move-result-object v5

    .line 229
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v10, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 233
    invoke-static {}, Lblack/android/app/BRActivityManagerNative;->get()Lblack/android/app/ActivityManagerNativeStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityManagerNativeStatic;->getDefault()Landroid/os/IInterface;

    move-result-object v11

    move-object v9, p2

    .line 227
    invoke-interface/range {v5 .. v11}, Lblack/android/app/ServiceContext;->attach(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)Ljava/lang/Void;

    .line 235
    invoke-static {v6}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_91} :catch_92

    return-object v0

    :catch_92
    move-exception v0

    move-object p0, v0

    .line 239
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create service "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 241
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_b7
    move-exception v0

    move-object p0, v0

    .line 215
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to instantiate service "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 217
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-static {v3, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public finishActivity(Landroid/os/IBinder;)V
    .registers 3

    .line 501
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mH:Landroid/os/Handler;

    new-instance v0, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda3;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getActivityThread()Landroid/os/IBinder;
    .registers 1

    .line 452
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityThreadContext;->getApplicationThread()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo()Ljava/lang/Object;
    .registers 1

    .line 439
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    iget-object p0, p0, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    return-object p0
.end method

.method public declared-synchronized handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    .line 304
    :try_start_1
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->isInit()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1af

    if-eqz v0, :cond_9

    .line 305
    monitor-exit p0

    return-void

    .line 306
    :cond_9
    :try_start_9
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/app/BActivityThread;->installCrashHandler(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 309
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 310
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_25

    .line 311
    new-array v2, v3, [Landroid/content/pm/ProviderInfo;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 313
    :cond_25
    iget-object v2, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mProviders:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 315
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/ActivityThreadContext;->mBoundApplication()Ljava/lang/Object;

    move-result-object v0

    .line 317
    invoke-static {v1}, Ltop/niunaijun/blackbox/app/BActivityThread;->createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;

    move-result-object v2

    .line 318
    invoke-static {v2}, Lblack/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lblack/android/app/ContextImplContext;

    move-result-object v4

    invoke-interface {v4}, Lblack/android/app/ContextImplContext;->mPackageInfo()Ljava/lang/Object;

    move-result-object v4

    .line 319
    invoke-static {v4}, Lblack/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lblack/android/app/LoadedApkContext;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lblack/android/app/LoadedApkContext;->_set_mSecurityViolation(Ljava/lang/Object;)V

    .line 320
    invoke-static {v4}, Lblack/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lblack/android/app/LoadedApkContext;

    move-result-object v5

    invoke-interface {v5, v1}, Lblack/android/app/LoadedApkContext;->_set_mApplicationInfo(Ljava/lang/Object;)V

    .line 322
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x9

    if-ge v5, v6, :cond_74

    .line 324
    new-instance v6, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 325
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_74
    const/16 v6, 0x18

    if-ge v5, v6, :cond_7b

    .line 329
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/StrictModeCompat;->disableDeathOnFileUriExposure()Z

    .line 332
    :cond_7b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_a9

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 336
    :cond_a9
    invoke-static {p2, v1}, Ltop/niunaijun/blackbox/core/env/VirtualRuntime;->setupRuntime(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 338
    invoke-static {}, Lblack/dalvik/system/BRVMRuntime;->get()Lblack/dalvik/system/VMRuntimeStatic;

    move-result-object v5

    invoke-interface {v5}, Lblack/dalvik/system/VMRuntimeStatic;->getRuntime()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lblack/dalvik/system/BRVMRuntime;->get(Ljava/lang/Object;)Lblack/dalvik/system/VMRuntimeContext;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface {v5, v6}, Lblack/dalvik/system/VMRuntimeContext;->setTargetSdkVersion(I)Ljava/lang/Void;

    .line 339
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isS()Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 340
    invoke-static {}, Lblack/android/graphics/BRCompatibility;->get()Lblack/android/graphics/CompatibilityStatic;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface {v5, v6}, Lblack/android/graphics/CompatibilityStatic;->setTargetSdkVersion(I)Ljava/lang/Void;

    .line 343
    :cond_cc
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result v6

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getCallingBUid()I

    move-result v7

    invoke-static {v5, v6, v7}, Ltop/niunaijun/blackbox/core/NativeCore;->init(III)V

    .line 344
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/app/BActivityThread;->installNativeCrashCapture(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 346
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v6

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v7

    invoke-static {v6, v7}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result v6

    .line 345
    invoke-static {v5, v6}, Ltop/niunaijun/blackbox/core/NativeCore;->registerBinderCaller(II)V

    .line 347
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {p1, p2, v5}, Ltop/niunaijun/blackbox/core/NativeCore;->initializeGuestFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Ltop/niunaijun/blackbox/core/IOCore;->get()Ltop/niunaijun/blackbox/core/IOCore;

    move-result-object v5

    invoke-virtual {v5, v2}, Ltop/niunaijun/blackbox/core/IOCore;->enableRedirect(Landroid/content/Context;)V

    .line 351
    new-instance v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    invoke-direct {v5}, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;-><init>()V

    .line 352
    iput-object v1, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 353
    iput-object p2, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 354
    iput-object v4, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    .line 355
    iget-object v1, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mProviders:Ljava/util/List;

    iput-object v1, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 357
    invoke-static {v0}, Lblack/android/app/BRActivityThreadAppBindData;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadAppBindDataContext;

    move-result-object v0

    .line 358
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-class v7, Landroid/app/Instrumentation;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lblack/android/app/ActivityThreadAppBindDataContext;->_set_instrumentationName(Ljava/lang/Object;)V

    .line 359
    iget-object v1, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Lblack/android/app/ActivityThreadAppBindDataContext;->_set_appInfo(Ljava/lang/Object;)V

    .line 360
    iget-object v1, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lblack/android/app/ActivityThreadAppBindDataContext;->_set_info(Ljava/lang/Object;)V

    .line 361
    iget-object v1, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lblack/android/app/ActivityThreadAppBindDataContext;->_set_processName(Ljava/lang/Object;)V

    .line 362
    iget-object v1, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-interface {v0, v1}, Lblack/android/app/ActivityThreadAppBindDataContext;->_set_providers(Ljava/lang/Object;)V

    .line 364
    iput-object v5, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    .line 366
    invoke-static {}, Lblack/android/security/net/config/BRNetworkSecurityConfigProvider;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_148

    .line 367
    const-string v0, "AndroidNSSP"

    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lblack/android/security/net/config/BRNetworkSecurityConfigProvider;->get()Lblack/android/security/net/config/NetworkSecurityConfigProviderStatic;

    move-result-object v0

    invoke-interface {v0, v2}, Lblack/android/security/net/config/NetworkSecurityConfigProviderStatic;->install(Landroid/content/Context;)Ljava/lang/Void;
    :try_end_148
    .catchall {:try_start_9 .. :try_end_148} :catchall_1af

    .line 372
    :cond_148
    :try_start_148
    invoke-direct {p0, p1, p2, v2}, Ltop/niunaijun/blackbox/app/BActivityThread;->onBeforeCreateApplication(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 373
    invoke-static {v4}, Lblack/android/app/BRLoadedApk;->get(Ljava/lang/Object;)Lblack/android/app/LoadedApkContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lblack/android/app/LoadedApkContext;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    .line 374
    iput-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 375
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v1

    iget-object v2, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-interface {v1, v2}, Lblack/android/app/ActivityThreadContext;->_set_mInitialApplication(Ljava/lang/Object;)V

    .line 376
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v1

    invoke-interface {v1}, Lblack/android/app/ActivityThreadContext;->getSystemContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 377
    iget-object v1, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 378
    iget-object v1, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    iget-object v2, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    iget-object v3, v5, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-direct {p0, v1, v2, v3}, Ltop/niunaijun/blackbox/app/BActivityThread;->installProviders(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 380
    invoke-direct {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/app/BActivityThread;->onBeforeApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 381
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/NativeCore;->initializeGuestApplication(Landroid/app/Application;)V

    .line 382
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->get()Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 383
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/app/BActivityThread;->installCrashHandler(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/app/BActivityThread;->installNativeCrashCapture(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/app/BActivityThread;->onAfterApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 387
    invoke-static {}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->get()Ltop/niunaijun/blackbox/fake/hook/HookManager;

    move-result-object p1

    const-class p2, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;

    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_1a1} :catch_1a3
    .catchall {:try_start_148 .. :try_end_1a1} :catchall_1af

    .line 392
    monitor-exit p0

    return-void

    :catch_1a3
    move-exception p1

    .line 389
    :try_start_1a4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unable to makeApplication"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_1af
    move-exception p1

    monitor-exit p0
    :try_end_1b1
    .catchall {:try_start_1a4 .. :try_end_1b1} :catchall_1af

    throw p1
.end method

.method public handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 4

    .line 523
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mH:Landroid/os/Handler;

    new-instance v0, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p1}, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda2;-><init>(Landroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initProcess(Ltop/niunaijun/blackbox/entity/AppConfig;)V
    .registers 6

    const-string v0, "reject init process: "

    .line 172
    sget-object v1, Ltop/niunaijun/blackbox/app/BActivityThread;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_5
    iget-object v2, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    if-eqz v2, :cond_37

    iget-object v2, v2, Ltop/niunaijun/blackbox/entity/AppConfig;->packageName:Ljava/lang/String;

    iget-object v3, p1, Ltop/niunaijun/blackbox/entity/AppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_37

    .line 174
    :cond_14
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", this process is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_37
    :goto_37
    iput-object p1, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    .line 177
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_4d

    .line 179
    :try_start_3d
    new-instance v0, Ltop/niunaijun/blackbox/app/BActivityThread$1;

    invoke-direct {v0, p0, p1}, Ltop/niunaijun/blackbox/app/BActivityThread$1;-><init>(Ltop/niunaijun/blackbox/app/BActivityThread;Landroid/os/IBinder;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_46} :catch_47
    .catchall {:try_start_3d .. :try_end_46} :catchall_4d

    goto :goto_4b

    :catch_47
    move-exception p0

    .line 192
    :try_start_48
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 194
    :goto_4b
    monitor-exit v1

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public isInit()Z
    .registers 1

    .line 198
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public peekService(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 496
    invoke-static {}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->get()Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->peekService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public registerBinderCaller(II)V
    .registers 3

    .line 464
    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/NativeCore;->registerBinderCaller(II)V

    return-void
.end method

.method public scheduleReceiver(Ltop/niunaijun/blackbox/entity/am/ReceiverData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_9

    .line 563
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->bindApplication()V

    .line 565
    :cond_9
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mH:Landroid/os/Handler;

    new-instance v1, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackbox/app/BActivityThread;Ltop/niunaijun/blackbox/entity/am/ReceiverData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopService(Landroid/content/Intent;)V
    .registers 2

    .line 474
    invoke-static {}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->get()Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->stopService(Landroid/content/Intent;)V

    return-void
.end method

.method public unregisterBinderCaller(I)V
    .registers 2

    .line 469
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/NativeCore;->unregisterBinderCaller(I)V

    return-void
.end method

###### Class top.niunaijun.blackbox.app.BActivityThread.AnonymousClass1 (top.niunaijun.blackbox.app.BActivityThread$1)
