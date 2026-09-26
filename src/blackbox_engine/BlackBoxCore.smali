.class public Ltop/niunaijun/blackbox/BlackBoxCore;
.super Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;
.source "BlackBoxCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;
    }
.end annotation


# static fields
.field private static final MESSAGE_LAUNCHER_FAILED:Ljava/lang/String; = "Unable to open launcher activity"

.field private static final SERVICE_BINDER_KEY:Ljava/lang/String; = "_B_|_server_"

.field private static final SERVICE_NAME_KEY:Ljava/lang/String; = "_B_|_server_name_"

.field private static final SERVICE_PROVIDER_ATTEMPTS:I = 0x2

.field private static final SERVICE_PROVIDER_METHOD:Ljava/lang/String; = "VM"

.field public static final TAG:Ljava/lang/String; = "BlackBoxCore"

.field private static final sBlackBoxCore:Ltop/niunaijun/blackbox/BlackBoxCore;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private final mAppLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

.field private mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mHandler:Landroid/os/Handler;

.field private final mHostUid:I

.field private final mHostUserId:I

.field private mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

.field private final mServiceLock:Ljava/lang/Object;

.field private mServiceProviderClient:Landroid/content/ContentProviderClient;

.field private final mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ltop/niunaijun/blackbox/BlackBoxCore;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/BlackBoxCore;->sBlackBoxCore:Ltop/niunaijun/blackbox/BlackBoxCore;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServiceLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServices:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mAppLifecycleCallbacks:Ljava/util/List;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mHandler:Landroid/os/Handler;

    .line 77
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mHostUid:I

    .line 78
    invoke-static {}, Lblack/android/os/BRUserHandle;->get()Lblack/android/os/UserHandleStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/os/UserHandleStatic;->myUserId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mHostUserId:I

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/BlackBoxCore;
    .registers 1

    .line 81
    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore;->sBlackBoxCore:Ltop/niunaijun/blackbox/BlackBoxCore;

    return-object v0
.end method

.method public static getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;
    .registers 1

    .line 174
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBJobManager()Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;
    .registers 1

    .line 166
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;
    .registers 1

    .line 170
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBStorageManager()Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;
    .registers 1

    .line 178
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 105
    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getHostPkg()Ljava/lang/String;
    .registers 1

    .line 93
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostUid()I
    .registers 1

    .line 97
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/BlackBoxCore;->mHostUid:I

    return v0
.end method

.method public static getHostUserId()I
    .registers 1

    .line 101
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/BlackBoxCore;->mHostUserId:I

    return v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    .line 89
    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 397
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 399
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 400
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 401
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_14

    .line 402
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    if-eqz p0, :cond_2b

    return-object p0

    .line 407
    :cond_2b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "processName = null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getServiceProviderClientLocked()Landroid/content/ContentProviderClient;
    .registers 4

    .line 323
    const-string v0, "BlackBoxCore"

    iget-object v1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServiceProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_7

    return-object v1

    .line 327
    :cond_7
    :try_start_7
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 328
    invoke-static {}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getBindProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServiceProviderClient:Landroid/content/ContentProviderClient;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception v1

    .line 330
    const-string v2, "Unable to acquire service provider"

    invoke-static {v0, v2, v1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    :goto_20
    iget-object v1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServiceProviderClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_3a

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service provider unavailable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getBindProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_3a
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServiceProviderClient:Landroid/content/ContentProviderClient;

    return-object p0
.end method

.method private invalidateServiceProviderLocked()V
    .registers 3

    .line 339
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServiceProviderClient:Landroid/content/ContentProviderClient;

    const/4 v1, 0x0

    .line 340
    iput-object v1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServiceProviderClient:Landroid/content/ContentProviderClient;

    .line 341
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    if-nez v0, :cond_d

    return-void

    .line 347
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 352
    const-string v0, "BlackBoxCore"

    const-string v1, "Unable to release service provider"

    invoke-static {v0, v1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static is64Bit()Z
    .registers 2

    .line 413
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 414
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    return v0

    .line 416
    :cond_b
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mainThread()Ljava/lang/Object;
    .registers 1

    .line 149
    invoke-static {}, Lblack/android/app/BRActivityThread;->get()Lblack/android/app/ActivityThreadStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/ActivityThreadStatic;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAppLifecycleCallback(Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;)V
    .registers 2

    .line 268
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mAppLifecycleCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearPackage(Ljava/lang/String;I)Z
    .registers 3

    .line 240
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->clearPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;
    .registers 2

    .line 252
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    move-result-object p0

    return-object p0
.end method

.method public deleteUser(I)V
    .registers 2

    .line 256
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->deleteUser(I)V

    return-void
.end method

.method public doAttachBaseContext(Landroid/content/Context;Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;)V
    .registers 4

    if-eqz p2, :cond_4e

    .line 120
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/HiddenApiCompat;->initialize()V

    .line 121
    sput-object p1, Ltop/niunaijun/blackbox/BlackBoxCore;->sContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

    .line 124
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 126
    sget-object p1, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Main:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    iput-object p1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    goto :goto_39

    .line 127
    :cond_20
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Ltop/niunaijun/blackbox/R$string;->black_box_service_name:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 128
    sget-object p1, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Server:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    iput-object p1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    goto :goto_39

    .line 130
    :cond_35
    sget-object p1, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->BAppClient:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    iput-object p1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    .line 132
    :goto_39
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isBlackProcess()Z

    move-result p0

    if-eqz p0, :cond_46

    .line 133
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->load()V

    .line 135
    :cond_46
    invoke-static {}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->get()Ltop/niunaijun/blackbox/fake/hook/HookManager;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->init()V

    return-void

    .line 118
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ClientConfiguration is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doCreate()V
    .registers 2

    .line 140
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isBlackProcess()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->init()V

    .line 143
    :cond_9
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isServerProcess()Z

    move-result p0

    if-nez p0, :cond_12

    .line 144
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/ServiceManager;->initBlackManager()V

    :cond_12
    return-void
.end method

.method public getAppLifecycleCallbacks()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mAppLifecycleCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public getExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .line 109
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 85
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getHostPackageName()Ljava/lang/String;
    .registers 1

    .line 388
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;->getHostPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_ee

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_ee

    .line 277
    :cond_b
    iget-object v1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_e
    invoke-direct {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getServiceProviderClientLocked()Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_16

    .line 279
    monitor-exit v1

    return-object v0

    .line 282
    :cond_16
    iget-object v2, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServices:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_28

    .line 283
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 284
    monitor-exit v1

    return-object v2

    .line 286
    :cond_28
    iget-object v2, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServices:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :cond_2e
    :goto_2e
    const/4 v3, 0x2

    if-ge v2, v3, :cond_d1

    .line 289
    invoke-direct {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getServiceProviderClientLocked()Landroid/content/ContentProviderClient;

    move-result-object v4

    if-nez v4, :cond_39

    .line 291
    monitor-exit v1

    return-object v0

    .line 294
    :cond_39
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 295
    const-string v6, "_B_|_server_name_"

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_eb

    .line 297
    :try_start_43
    const-string v6, "VM"

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_4d

    move-object v4, v0

    goto :goto_53

    .line 298
    :cond_4d
    const-string v5, "_B_|_server_"

    invoke-static {v4, v5}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    :goto_53
    if-eqz v4, :cond_7a

    .line 299
    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 300
    iget-object v5, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServices:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v5, "BlackBoxCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connected service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_78} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_78} :catch_94
    .catchall {:try_start_43 .. :try_end_78} :catchall_eb

    .line 302
    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_eb

    return-object v4

    .line 304
    :cond_7a
    :try_start_7a
    const-string v4, "BlackBoxCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service provider returned no live binder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_92} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_92} :catch_94
    .catchall {:try_start_7a .. :try_end_92} :catchall_eb

    .line 305
    :try_start_92
    monitor-exit v1

    return-object v0

    :catch_94
    move-exception p0

    .line 312
    const-string v2, "BlackBoxCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    monitor-exit v1

    return-object v0

    :catch_af
    move-exception v4

    .line 307
    invoke-direct {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->invalidateServiceProviderLocked()V

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_2e

    .line 309
    const-string v3, "BlackBoxCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service provider transport failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .line 317
    :cond_d1
    const-string p0, "BlackBoxCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service unavailable after reconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit v1

    return-object v0

    :catchall_eb
    move-exception p0

    .line 319
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_92 .. :try_end_ed} :catchall_eb

    throw p0

    .line 273
    :cond_ee
    :goto_ee
    const-string p0, "BlackBoxCore"

    const-string p1, "Service name is empty"

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 3

    .line 216
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    return-object p0
.end method

.method public installPackageAsUser(Landroid/net/Uri;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 4

    .line 228
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->installByStorage()Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->makeUriFile()Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    return-object p0
.end method

.method public installPackageAsUser(Ljava/io/File;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 4

    .line 224
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->installByStorage()Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    return-object p0
.end method

.method public installPackageAsUser(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 4

    .line 207
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 208
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->installBySystem()Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    move-result-object v0

    invoke-virtual {p1, p0, v0, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 210
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 211
    new-instance p1, Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    invoke-direct {p1}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    return-object p0
.end method

.method public isBlackProcess()Z
    .registers 2

    .line 375
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->BAppClient:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .registers 3

    .line 190
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->isInstalled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isMainProcess()Z
    .registers 2

    .line 379
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Main:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isMicrogRuntimeReady(I)Z
    .registers 2

    .line 194
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->isMicrogRuntimeReady(I)Z

    move-result p0

    return p0
.end method

.method public isServerProcess()Z
    .registers 2

    .line 383
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Server:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public launchApk(Ljava/lang/String;I)Z
    .registers 4

    .line 182
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 186
    :cond_c
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/BlackBoxCore;->startActivity(Landroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

.method public prepareMicrogRuntimeMigration()Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 1

    .line 220
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->prepareMicrogRuntimeMigration()Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    return-object p0
.end method

.method public removeAppLifecycleCallback(Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;)V
    .registers 2

    .line 264
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mAppLifecycleCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestInstallPackage(Ljava/io/File;)Z
    .registers 2

    .line 393
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;->requestInstallPackage(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public setExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2

    .line 113
    iput-object p1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;I)Z
    .registers 3

    .line 153
    iget-object p0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;->isEnableLauncherActivity()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 155
    :try_start_8
    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/app/LauncherActivity;->launch(Landroid/content/Intent;I)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_d

    const/4 p0, 0x1

    return p0

    :catch_d
    move-exception p0

    .line 158
    const-string p1, "BlackBoxCore"

    const-string p2, "Unable to open launcher activity"

    invoke-static {p1, p2, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    .line 162
    :cond_17
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->startActivity(Landroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

.method public stopPackage(Ljava/lang/String;I)V
    .registers 3

    .line 244
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->stopPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .registers 2

    .line 202
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->uninstallPackage(Ljava/lang/String;)V

    return-void
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)Z
    .registers 3

    .line 198
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->uninstallPackageAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

###### Class top.niunaijun.blackbox.BlackBoxCore.ProcessType (top.niunaijun.blackbox.BlackBoxCore$ProcessType)
