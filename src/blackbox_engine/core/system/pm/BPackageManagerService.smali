.class public Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;
.super Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;
.source "BPackageManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# static fields
.field public static final TAG:Ljava/lang/String; = "BPackageManagerService"

.field public static sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

.field private static final sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;


# instance fields
.field private final mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

.field final mInstallLock:Ljava/lang/Object;

.field private final mPackageChangedHandler:Landroid/content/BroadcastReceiver;

.field private final mPackageMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSettings(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;)Ltop/niunaijun/blackbox/core/system/pm/Settings;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    .line 63
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->get()Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;-><init>()V

    .line 61
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/Settings;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/Settings;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    .line 66
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService$1;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService$1;-><init>(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageChangedHandler:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v1, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;-><init>()V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    .line 75
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "package"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p4, :cond_38

    .line 199
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p2, p0

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    if-eqz p3, :cond_8

    .line 200
    iget-object p4, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p4, :cond_1b

    goto :goto_8

    :cond_1b
    if-nez p2, :cond_20

    move-object p2, p3

    goto :goto_8

    :cond_1f
    move-object p3, p0

    :cond_20
    if-nez p3, :cond_23

    goto :goto_37

    :cond_23
    if-eqz p2, :cond_38

    .line 218
    iget p1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    iget p4, p3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne p1, p4, :cond_37

    iget p1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget p4, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne p1, p4, :cond_37

    iget-boolean p1, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean p3, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq p1, p3, :cond_38

    :cond_37
    :goto_37
    return-object p2

    :cond_38
    return-object p0
.end method

.method private describeFailure(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 877
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 878
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 879
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 880
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    return-object p1
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;
    .registers 1

    .line 70
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    return-object v0
.end method

.method private getActivity(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .registers 7

    .line 268
    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->updateFlags(II)I

    move-result p2

    .line 269
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 270
    :try_start_7
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v1, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->getActivity(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 273
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p0, :cond_22

    .line 274
    monitor-exit v0

    return-object v2

    .line 275
    :cond_22
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p0

    invoke-static {v1, p2, p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 277
    :cond_2c
    monitor-exit v0

    return-object v2

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method private getInstalledApplicationsListInternal(III)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 402
    sget-object p3, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {p3, p2}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result p3

    if-nez p3, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 405
    :cond_d
    iget-object p3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p3

    .line 407
    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 409
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 416
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 417
    invoke-virtual {v1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v1

    .line 416
    invoke-static {v2, p1, v1, p2}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 419
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 422
    :cond_41
    monitor-exit p3

    return-object v0

    :catchall_43
    move-exception p0

    .line 423
    monitor-exit p3
    :try_end_45
    .catchall {:try_start_10 .. :try_end_45} :catchall_43

    throw p0
.end method

.method private installPackageAsUserLocked(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v0, p3

    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 753
    new-instance v6, Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    invoke-direct {v6}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;-><init>()V

    const/16 v7, 0x8

    .line 756
    :try_start_13
    sget-object v9, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v9, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 757
    invoke-virtual {v9, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    .line 759
    :cond_1e
    invoke-virtual {v3, v7}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 760
    new-instance v9, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_2b1

    .line 761
    :try_start_48
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 762
    invoke-static {v10, v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_2ae

    goto :goto_61

    .line 764
    :cond_5c
    :try_start_5c
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_2b1

    .line 767
    :goto_61
    :try_start_61
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-nez v10, :cond_a1

    .line 769
    const-string v0, "getPackageArchiveInfo error.Please check whether APK is normal."

    invoke-virtual {v6, v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0
    :try_end_76
    .catchall {:try_start_61 .. :try_end_76} :catchall_2ae

    if-eqz v3, :cond_81

    .line 841
    invoke-virtual {v3, v7}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 842
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_81
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_8a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 771
    :cond_a1
    :try_start_a1
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v11}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isRuntimePackage(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ce

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 772
    invoke-static {v11, v9}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->matchesPinnedArtifact(Ljava/lang/String;Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_ce

    .line 774
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "Runtime artifact does not match the pinned release."

    invoke-virtual {v6, v0, v8}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0
    :try_end_b9
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_2ae

    if-eqz v3, :cond_c4

    .line 841
    invoke-virtual {v3, v7}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 842
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_c4
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_8a

    .line 778
    :cond_ce
    :try_start_ce
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/AbiUtils;->isSupport(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_13a

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    iget-object v8, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " does not support "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 782
    invoke-static {}, Ltop/niunaijun/blackbox/utils/AbiUtils;->getPrimaryAbi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " ABI"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-virtual {v6, v8, v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0
    :try_end_124
    .catchall {:try_start_ce .. :try_end_124} :catchall_2ae

    if-eqz v3, :cond_12f

    .line 841
    invoke-virtual {v3, v7}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 842
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_12f
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 784
    :cond_13a
    :try_start_13a
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    if-nez v10, :cond_160

    .line 786
    const-string v0, "parser apk error."

    invoke-virtual {v6, v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0
    :try_end_14a
    .catchall {:try_start_13a .. :try_end_14a} :catchall_2ae

    if-eqz v3, :cond_155

    .line 841
    invoke-virtual {v3, v7}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 842
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_155
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 788
    :cond_160
    :try_start_160
    iget-object v11, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v11, v6, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    .line 790
    new-instance v11, Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-direct {v11, v10}, Ltop/niunaijun/blackbox/core/system/pm/BPackage;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 791
    iget-object v13, v11, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v13}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isRuntimePackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_195

    .line 792
    invoke-static {v11}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->isOfficialMicrogPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)Z

    move-result v13

    if-nez v13, :cond_195

    .line 793
    iget-object v0, v11, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    const-string v8, "Runtime package is not signed by the official microG key."

    invoke-virtual {v6, v0, v8}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0
    :try_end_17f
    .catchall {:try_start_160 .. :try_end_17f} :catchall_2ae

    if-eqz v3, :cond_18a

    .line 841
    invoke-virtual {v3, v7}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 842
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_18a
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8a

    :cond_195
    const/4 v13, 0x1

    .line 797
    :try_start_196
    invoke-virtual {v3, v13}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v14

    if-eqz v14, :cond_1aa

    .line 798
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v12, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 801
    :cond_1aa
    iget-object v12, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v12
    :try_end_1ad
    .catchall {:try_start_196 .. :try_end_1ad} :catchall_2ae

    .line 802
    :try_start_1ad
    iget-object v14, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    iget-object v15, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez v14, :cond_1bb

    const/4 v14, 0x0

    goto :goto_1bd

    .line 803
    :cond_1bb
    iget-object v14, v14, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 804
    :goto_1bd
    monitor-exit v12
    :try_end_1be
    .catchall {:try_start_1ad .. :try_end_1be} :catchall_2ab

    if-eqz v14, :cond_1e8

    .line 805
    :try_start_1c0
    iget-object v12, v14, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v11, v11, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    .line 806
    invoke-static {v12, v11}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->signaturesMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v11

    if-nez v11, :cond_1e8

    .line 808
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v8, "Package signer does not match the installed package."

    invoke-virtual {v6, v0, v8}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0
    :try_end_1d2
    .catchall {:try_start_1c0 .. :try_end_1d2} :catchall_2ae

    if-eqz v3, :cond_1dd

    .line 841
    invoke-virtual {v3, v7}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1dd

    .line 842
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_1dd
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 811
    :cond_1e8
    :try_start_1e8
    iget-object v11, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    iget-object v12, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v10, v3}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->getPackageLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ltop/niunaijun/blackbox/entity/pm/InstallOption;)Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    move-result-object v11

    .line 814
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v12

    iget-object v15, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v15, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->killPackageAsUser(Ljava/lang/String;I)V

    .line 816
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    move-result-object v12

    invoke-virtual {v12, v11, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->installPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;I)I

    move-result v12

    if-gez v12, :cond_21f

    .line 818
    const-string v0, "install apk error."

    invoke-virtual {v6, v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0
    :try_end_209
    .catchall {:try_start_1e8 .. :try_end_209} :catchall_2ae

    if-eqz v3, :cond_214

    .line 841
    invoke-virtual {v3, v7}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_214

    .line 842
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_214
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 820
    :cond_21f
    :try_start_21f
    iget-object v12, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v12
    :try_end_222
    .catchall {:try_start_21f .. :try_end_222} :catchall_2ae

    .line 821
    :try_start_222
    iget-object v15, v11, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_241

    .line 823
    new-instance v15, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    iget-object v7, v11, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    invoke-direct {v15, v7}, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;-><init>(Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;)V

    const/4 v7, 0x1

    goto :goto_243

    :cond_241
    move v7, v13

    const/4 v15, 0x0

    .line 825
    :goto_243
    invoke-virtual {v11, v7, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->setInstalled(ZI)V

    .line 826
    invoke-virtual {v11}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->save()Z

    move-result v7

    if-nez v7, :cond_270

    .line 827
    invoke-direct {v1, v11, v0, v8, v15}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->restoreUserState(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;IZLtop/niunaijun/blackbox/core/system/pm/BPackageUserState;)V

    .line 828
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v7, "Unable to persist package state."

    invoke-virtual {v6, v0, v7}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0

    monitor-exit v12
    :try_end_258
    .catchall {:try_start_222 .. :try_end_258} :catchall_2a8

    if-eqz v3, :cond_265

    const/16 v1, 0x8

    .line 841
    invoke-virtual {v3, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_265

    .line 842
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_265
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 831
    :cond_270
    :try_start_270
    iget-object v7, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v8, v11, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v7, v14, v8}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->replaceAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 832
    iget-object v7, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    iget-object v8, v11, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v8, v8, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    monitor-exit v12
    :try_end_281
    .catchall {:try_start_270 .. :try_end_281} :catchall_2a8

    .line 834
    :try_start_281
    iget-object v7, v11, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v7, v7, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->onPackageInstalled(Ljava/lang/String;I)V

    .line 835
    iget-object v0, v11, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installSuccess(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0
    :try_end_290
    .catchall {:try_start_281 .. :try_end_290} :catchall_2ae

    if-eqz v3, :cond_29d

    const/16 v1, 0x8

    .line 841
    invoke-virtual {v3, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_29d

    .line 842
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_29d
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8a

    :catchall_2a8
    move-exception v0

    .line 833
    :try_start_2a9
    monitor-exit v12
    :try_end_2aa
    .catchall {:try_start_2a9 .. :try_end_2aa} :catchall_2a8

    :try_start_2aa
    throw v0
    :try_end_2ab
    .catchall {:try_start_2aa .. :try_end_2ab} :catchall_2ae

    :catchall_2ab
    move-exception v0

    .line 804
    :try_start_2ac
    monitor-exit v12
    :try_end_2ad
    .catchall {:try_start_2ac .. :try_end_2ad} :catchall_2ab

    :try_start_2ad
    throw v0
    :try_end_2ae
    .catchall {:try_start_2ad .. :try_end_2ae} :catchall_2ae

    :catchall_2ae
    move-exception v0

    move-object v8, v9

    goto :goto_2b3

    :catchall_2b1
    move-exception v0

    const/4 v8, 0x0

    .line 837
    :goto_2b3
    :try_start_2b3
    const-string v7, "BPackageManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to install package from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    iget-object v2, v6, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->describeFailure(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0
    :try_end_2d5
    .catchall {:try_start_2b3 .. :try_end_2d5} :catchall_2ef

    if-eqz v8, :cond_2e4

    if-eqz v3, :cond_2e4

    const/16 v1, 0x8

    .line 841
    invoke-virtual {v3, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2e4

    .line 842
    invoke-static {v8}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_2e4
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8a

    :catchall_2ef
    move-exception v0

    if-eqz v8, :cond_2ff

    if-eqz v3, :cond_2ff

    const/16 v1, 0x8

    .line 841
    invoke-virtual {v3, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2ff

    .line 842
    invoke-static {v8}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 844
    :cond_2ff
    const-string v1, "BPackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install finish: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    throw v0
.end method

.method private parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 4

    .line 885
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/compat/PackageParserCompat;->createParser(Ljava/io/File;)Landroid/content/pm/PackageParser;

    move-result-object p0

    .line 886
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackbox/utils/compat/PackageParserCompat;->parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 887
    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackbox/utils/compat/PackageParserCompat;->collectCertificates(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception p0

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse package: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BPackageManagerService"

    invoke-static {v0, p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private prepareUserDirectories(Ljava/lang/String;I)Z
    .registers 8

    const/4 p0, 0x5

    .line 849
    new-array v0, p0, [Ljava/io/File;

    .line 850
    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 851
    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataCacheDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 852
    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataFilesDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 853
    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDatabasesDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    .line 854
    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDeDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    aput-object p1, v0, v1

    move p1, v2

    :goto_27
    if-ge p1, p0, :cond_4c

    .line 856
    aget-object p2, v0, p1

    .line 857
    invoke-static {p2}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 858
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_49

    .line 859
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unable to create user directory: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BPackageManagerService"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_4c
    return v3
.end method

.method private queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_14

    .line 232
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 233
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_14
    if-eqz v0, :cond_2d

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    invoke-direct {p0, v0, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getActivity(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 246
    new-instance p0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 247
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 248
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 254
    :cond_2d
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 255
    :try_start_30
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_38
    move-exception p0

    .line 256
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method private queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_14

    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_14
    move-object v2, p1

    if-eqz v0, :cond_2e

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    invoke-virtual {p0, v0, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 150
    new-instance p2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 151
    iput-object p0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 152
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-object p1

    .line 158
    :cond_2e
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 159
    :try_start_31
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 161
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz v0, :cond_50

    .line 163
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 164
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v5, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    move-object v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryServices(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p0

    monitor-exit p1

    return-object p0

    .line 170
    :cond_50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_56
    move-object v3, p2

    move v4, p3

    move v6, p4

    .line 168
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {p0, v2, v3, v4, v6}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_61
    move-exception v0

    move-object p0, v0

    .line 171
    monitor-exit p1
    :try_end_64
    .catchall {:try_start_31 .. :try_end_64} :catchall_61

    throw p0
.end method

.method private restoreUserState(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;IZLtop/niunaijun/blackbox/core/system/pm/BPackageUserState;)V
    .registers 5

    if-eqz p3, :cond_c

    .line 870
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 872
    :cond_c
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->removeUser(I)V

    return-void
.end method

.method private updateFlags(II)I
    .registers 3

    const/high16 p0, 0xc0000

    and-int p2, p1, p0

    if-eqz p2, :cond_7

    return p1

    :cond_7
    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public addPackageMonitor(Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;)V
    .registers 2

    .line 930
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearPackage(Ljava/lang/String;I)V
    .registers 4

    .line 678
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_18

    .line 681
    :cond_7
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->killPackageAsUser(Ljava/lang/String;I)V

    .line 682
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p0, :cond_19

    :goto_18
    return-void

    .line 685
    :cond_19
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->clearPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;I)I

    return-void
.end method

.method public deleteUser(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 696
    :try_start_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 697
    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->uninstallPackageAsUser(Ljava/lang/String;I)V

    goto :goto_d

    .line 699
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .registers 7

    .line 338
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 339
    :cond_a
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 340
    :try_start_d
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->getActivity(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 343
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p0, :cond_25

    .line 344
    monitor-exit v0

    return-object v1

    .line 346
    :cond_25
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p0

    .line 345
    invoke-static {v2, p2, p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 348
    :cond_2f
    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw p0
.end method

.method public getAppId(Ljava/lang/String;)I
    .registers 2

    .line 919
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz p0, :cond_d

    .line 921
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->appId:I

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 97
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 98
    :cond_a
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 100
    :try_start_14
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 102
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1

    .line 106
    :cond_22
    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->updateFlags(II)I

    move-result p2

    .line 108
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 110
    :try_start_29
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz p0, :cond_3f

    .line 112
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 113
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p0

    invoke-static {p1, p2, p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 115
    :cond_3f
    monitor-exit v0

    return-object v1

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public getBPackageSetting(Ljava/lang/String;)Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;
    .registers 2

    .line 952
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    return-object p0
.end method

.method public getBPackageSettings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;",
            ">;"
        }
    .end annotation

    .line 956
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getInstalledApplicationsListInternal(III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 378
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p2}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 381
    :cond_10
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 383
    :try_start_13
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 391
    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 393
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 396
    :cond_42
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p0

    :catchall_49
    move-exception p0

    .line 397
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_13 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public getInstalledPackagesAsUser(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;",
            ">;"
        }
    .end annotation

    .line 720
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 721
    :cond_d
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 722
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 723
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 724
    invoke-virtual {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getInstalled(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isManagedPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 725
    new-instance v3, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;

    invoke-direct {v3}, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;-><init>()V

    .line 726
    iput p1, v3, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->userId:I

    .line 727
    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    iput-object v2, v3, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    .line 728
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 731
    :cond_4c
    monitor-exit v0

    return-object v1

    :catchall_4e
    move-exception p0

    .line 732
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_10 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 6

    .line 283
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 284
    :cond_a
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 286
    :try_start_14
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 288
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1

    .line 293
    :cond_22
    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->updateFlags(II)I

    move-result p2

    .line 296
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 298
    :try_start_29
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 299
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_3e

    if-eqz p0, :cond_3d

    .line 301
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    invoke-static {p0, p2, p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generatePackageInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_3d
    return-object v1

    :catchall_3e
    move-exception p0

    .line 299
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public getPackagesForUid(II)[Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p2}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    .line 738
    :cond_c
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p1

    .line 739
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 740
    :try_start_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 741
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 742
    iget-object v5, v4, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v5, v5, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    .line 743
    invoke-virtual {v4, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0, v5}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 744
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 747
    :cond_42
    new-array p0, v1, [Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_4c
    move-exception p0

    .line 748
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_13 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .registers 7

    .line 354
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 355
    :cond_a
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 356
    :try_start_d
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->getProvider(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 358
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p0, :cond_25

    .line 359
    monitor-exit v0

    return-object v1

    .line 361
    :cond_25
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p0

    .line 360
    invoke-static {v2, p2, p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateProviderInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 363
    :cond_2f
    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw p0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .registers 7

    .line 323
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 324
    :cond_a
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 325
    :try_start_d
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->getReceiver(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 327
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p0, :cond_25

    .line 328
    monitor-exit v0

    return-object v1

    .line 330
    :cond_25
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p0

    .line 329
    invoke-static {v2, p2, p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 332
    :cond_2f
    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw p0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .registers 7

    .line 308
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 309
    :cond_a
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 310
    :try_start_d
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->getService(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 312
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p0, :cond_25

    .line 313
    monitor-exit v0

    return-object v1

    .line 315
    :cond_25
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p0

    .line 314
    invoke-static {v2, p2, p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateServiceInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 317
    :cond_2f
    monitor-exit v0

    return-object v1

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw p0
.end method

.method getSettings()Ltop/niunaijun/blackbox/core/system/pm/Settings;
    .registers 1

    .line 926
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    return-object p0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 11

    .line 492
    new-instance v0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;-><init>()V

    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 494
    const-string p0, "Package name is empty."

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    return-object p0

    :cond_12
    if-gez p2, :cond_1b

    .line 497
    const-string p0, "User ID must be non-negative."

    invoke-virtual {v0, p1, p0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    return-object p0

    .line 499
    :cond_1b
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 501
    :try_start_1e
    sget-object v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v2, p2}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 502
    invoke-virtual {v2, p2}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    .line 504
    :cond_29
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_d5

    .line 505
    :try_start_2c
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz v3, :cond_c9

    .line 506
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    if-nez v4, :cond_3c

    goto/16 :goto_c9

    .line 510
    :cond_3c
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v4, v4, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c0

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v5, v5, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_c0

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v5, v5, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_65

    goto :goto_c0

    .line 516
    :cond_65
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->prepareUserDirectories(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_74

    .line 517
    const-string v3, "Unable to prepare package data directories."

    invoke-virtual {v0, p1, v3}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v3

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_2c .. :try_end_72} :catchall_d2

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_102

    return-object v3

    .line 520
    :cond_74
    :try_start_74
    invoke-virtual {v3, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 521
    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installSuccess(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v3

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_d2

    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_102

    return-object v3

    .line 523
    :cond_81
    :try_start_81
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 525
    new-instance v5, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    iget-object v6, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    invoke-direct {v5, v6}, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;-><init>(Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;)V

    goto :goto_a0

    :cond_9f
    const/4 v5, 0x0

    :goto_a0
    const/4 v6, 0x1

    .line 527
    invoke-virtual {v3, v6, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->setInstalled(ZI)V

    .line 528
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->save()Z

    move-result v6

    if-nez v6, :cond_b6

    .line 529
    invoke-direct {p0, v3, p2, v4, v5}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->restoreUserState(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;IZLtop/niunaijun/blackbox/core/system/pm/BPackageUserState;)V

    .line 530
    const-string v3, "Unable to persist package state."

    invoke-virtual {v0, p1, v3}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v3

    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_81 .. :try_end_b4} :catchall_d2

    :try_start_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_102

    return-object v3

    .line 533
    :cond_b6
    :try_start_b6
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->onPackageInstalled(Ljava/lang/String;I)V

    .line 534
    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installSuccess(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v3

    monitor-exit v2
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_d2

    :try_start_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_102

    return-object v3

    .line 513
    :cond_c0
    :goto_c0
    :try_start_c0
    const-string v3, "Global package code is unavailable."

    invoke-virtual {v0, p1, v3}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v3

    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_d2

    :try_start_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_102

    return-object v3

    .line 507
    :cond_c9
    :goto_c9
    :try_start_c9
    const-string v3, "Package is not installed globally."

    invoke-virtual {v0, p1, v3}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v3

    monitor-exit v2
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_d2

    :try_start_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_102

    return-object v3

    :catchall_d2
    move-exception v3

    .line 535
    :try_start_d3
    monitor-exit v2
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    :try_start_d4
    throw v3
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d5

    :catchall_d5
    move-exception v2

    .line 537
    :try_start_d6
    const-string v3, "BPackageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to activate existing package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v2}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    invoke-direct {p0, v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->describeFailure(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_102
    move-exception p0

    .line 541
    monitor-exit v1
    :try_end_104
    .catchall {:try_start_d6 .. :try_end_104} :catchall_102

    throw p0
.end method

.method public installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 5

    .line 485
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->installPackageAsUserLocked(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 487
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .registers 5

    .line 704
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p2}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 705
    :cond_a
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 706
    :try_start_d
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p0, :cond_19

    .line 708
    monitor-exit v0

    return v1

    .line 709
    :cond_19
    invoke-virtual {p0, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getInstalled(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    .line 710
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public isMicrogRuntimeReady(I)Z
    .registers 2

    .line 715
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isReadyForUser(I)Z

    move-result p0

    return p0
.end method

.method onPackageInstalled(Ljava/lang/String;I)V
    .registers 4

    .line 945
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;

    .line 946
    invoke-interface {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;->onPackageInstalled(Ljava/lang/String;I)V

    goto :goto_6

    .line 948
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onPackageInstalled: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", userId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BPackageManagerService"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onPackageUninstalled(Ljava/lang/String;ZI)V
    .registers 5

    .line 938
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;

    .line 939
    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;->onPackageUninstalled(Ljava/lang/String;ZI)V

    goto :goto_6

    .line 941
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onPackageUninstalled: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", userId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BPackageManagerService"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepareMicrogRuntimeMigration()Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 13

    .line 546
    new-instance v0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;-><init>()V

    .line 547
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 551
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_eb

    .line 552
    :try_start_10
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    const-string v5, "com.google.android.gms"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2c

    .line 553
    iget-object v7, v4, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    if-eqz v7, :cond_2c

    iget-object v7, v4, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 554
    invoke-static {v7}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->isOfficialMicrogPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)Z

    move-result v7

    if-eqz v7, :cond_2c

    move v7, v5

    goto :goto_2d

    :cond_2c
    move v7, v6

    :goto_2d
    if-eqz v4, :cond_36

    if-nez v7, :cond_36

    .line 556
    const-string v8, "com.google.android.gms"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_36
    iget-object v8, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    const-string v9, "com.android.vending"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz v8, :cond_53

    .line 559
    iget-object v9, v8, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    if-eqz v9, :cond_4e

    iget-object v8, v8, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 560
    invoke-static {v8}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->isOfficialMicrogPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)Z

    move-result v8

    if-nez v8, :cond_53

    .line 561
    :cond_4e
    const-string v8, "com.android.vending"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_53
    invoke-static {}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->getLegacyCleanupPackages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v6

    :cond_5c
    :goto_5c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_75

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 565
    iget-object v11, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 566
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v5

    goto :goto_5c

    :cond_75
    if-nez v7, :cond_7c

    if-nez v4, :cond_7d

    if-eqz v9, :cond_7c

    goto :goto_7d

    :cond_7c
    move v5, v6

    .line 572
    :cond_7d
    :goto_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_10 .. :try_end_7e} :catchall_e8

    .line 573
    :try_start_7e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 574
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installSuccess(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_eb

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_ff

    return-object p0

    :cond_8c
    if-eqz v5, :cond_a4

    .line 577
    :try_start_8e
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->get()Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    move-result-object v3

    const-string v4, "com.google"

    .line 578
    invoke-virtual {v3, v4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->removeAccountsByTypeForAllUsers(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a4

    .line 579
    const-string v2, "com.google.android.gms"

    const-string v3, "Unable to persist legacy Google account cleanup."

    invoke-virtual {v0, v2, v3}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_eb

    :try_start_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_ff

    return-object p0

    .line 582
    :cond_a4
    :try_start_a4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 583
    invoke-virtual {p0, v4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_a8

    .line 585
    :cond_b8
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v3
    :try_end_bb
    .catchall {:try_start_a4 .. :try_end_bb} :catchall_eb

    .line 586
    :try_start_bb
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_bf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 587
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 588
    const-string v2, "Unable to remove proprietary Google runtime package."

    invoke-virtual {v0, v4, v2}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v2

    monitor-exit v3
    :try_end_da
    .catchall {:try_start_bb .. :try_end_da} :catchall_e5

    :try_start_da
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_ff

    return-object v2

    .line 592
    :cond_dc
    :try_start_dc
    monitor-exit v3
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_e5

    .line 593
    :try_start_dd
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installSuccess(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0
    :try_end_e3
    .catchall {:try_start_dd .. :try_end_e3} :catchall_eb

    :try_start_e3
    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_ff

    return-object p0

    :catchall_e5
    move-exception v2

    .line 592
    :try_start_e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw v2
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_eb

    :catchall_e8
    move-exception v2

    .line 572
    :try_start_e9
    monitor-exit v3
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    :try_start_ea
    throw v2
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_eb

    :catchall_eb
    move-exception v2

    .line 595
    :try_start_ec
    const-string v3, "BPackageManagerService"

    const-string v4, "Unable to prepare microG runtime migration"

    invoke-static {v3, v4, v2}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    const-string v3, "com.google.android.gms"

    .line 597
    invoke-direct {p0, v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->describeFailure(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 596
    invoke-virtual {v0, v3, p0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_ff
    move-exception p0

    .line 599
    monitor-exit v1
    :try_end_101
    .catchall {:try_start_ec .. :try_end_101} :catchall_ff

    throw p0
.end method

.method public quarantinePackageAsUser(Ljava/lang/String;I)Z
    .registers 10

    const-string v0, "Unable to persist package quarantine: "

    .line 632
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 633
    :try_start_5
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_64

    .line 634
    :try_start_8
    sget-object v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v3, p2}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_14

    .line 635
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_61

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_64

    return v4

    .line 637
    :cond_14
    :try_start_14
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz v3, :cond_5e

    .line 638
    invoke-virtual {v3, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getInstalled(I)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_5e

    .line 641
    :cond_25
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->killPackageAsUser(Ljava/lang/String;I)V

    .line 642
    invoke-virtual {v3, v4, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->setInstalled(ZI)V

    .line 643
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->save()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_58

    .line 644
    invoke-virtual {v3, v6, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->setInstalled(ZI)V

    .line 645
    const-string p0, "BPackageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", userId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_14 .. :try_end_56} :catchall_61

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_64

    return v4

    .line 649
    :cond_58
    :try_start_58
    invoke-virtual {p0, p1, v4, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->onPackageUninstalled(Ljava/lang/String;ZI)V

    .line 650
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_61

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_64

    return v6

    .line 639
    :cond_5e
    :goto_5e
    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_61

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_64

    return v4

    :catchall_61
    move-exception p0

    .line 651
    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw p0

    :catchall_64
    move-exception p0

    .line 652
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 436
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_21

    .line 438
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 439
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_21
    move-object v2, p1

    if-eqz v0, :cond_3b

    .line 444
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    invoke-virtual {p0, v0, p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 451
    new-instance p2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 452
    iput-object p0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 453
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    return-object p1

    .line 459
    :cond_3b
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 460
    :try_start_3e
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 461
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz v0, :cond_5b

    .line 463
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 464
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v5, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    move v4, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryReceivers(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_5b
    move v4, p2

    move-object v3, p3

    move v6, p4

    .line 467
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {p0, v2, v3, v4, v6}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_66
    move-exception v0

    move-object p0, v0

    .line 469
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_3e .. :try_end_69} :catchall_66

    throw p0
.end method

.method public queryContentProviders(Ljava/lang/String;III)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    sget-object p2, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {p2, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result p2

    if-nez p2, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 476
    :cond_d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object p2

    .line 479
    :cond_19
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryProviders(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2
.end method

.method public queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 429
    :cond_d
    invoke-direct {p0, p1, p3, p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-direct {p0, p1, v0, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removePackageMonitor(Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;)V
    .registers 2

    .line 934
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 6

    .line 176
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 177
    :cond_a
    invoke-direct {p0, p1, p3, p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p4

    .line 178
    invoke-direct {p0, p1, p3, p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 5

    .line 183
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_a
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .registers 6

    .line 189
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p4

    .line 191
    invoke-direct {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 7

    .line 121
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 122
    :cond_a
    invoke-direct {p0, p1, p3, p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 125
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_14

    .line 126
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p2, :cond_14

    return-object p1

    :cond_27
    return-object v1
.end method

.method public stopPackage(Ljava/lang/String;I)V
    .registers 3

    .line 690
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->killPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public systemReady()V
    .registers 5

    .line 961
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->scanPackage()V

    .line 962
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 963
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v2, v3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->removeAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 964
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v2, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    goto :goto_f

    :cond_2a
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .registers 10

    .line 657
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_58

    .line 659
    :try_start_6
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez v2, :cond_13

    .line 661
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_55

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_58

    return-void

    .line 662
    :cond_13
    :try_start_13
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->killAllByPackageName(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getUserIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 664
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v7, v6}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->uninstallPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ZI)I

    move-result v5

    if-gez v5, :cond_3e

    goto :goto_22

    .line 668
    :cond_3e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v7, v4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->onPackageUninstalled(Ljava/lang/String;ZI)V

    goto :goto_22

    .line 670
    :cond_46
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    invoke-virtual {v3, p1}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->removePackage(Ljava/lang/String;)V

    .line 671
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object p1, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->removeAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 672
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_13 .. :try_end_53} :catchall_55

    .line 673
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_58

    return-void

    :catchall_55
    move-exception p0

    .line 672
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw p0

    :catchall_58
    move-exception p0

    .line 673
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_55

    .line 606
    :try_start_6
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez v2, :cond_13

    .line 608
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_52

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_55

    return-void

    .line 609
    :cond_13
    :try_start_13
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 610
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_52

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_55

    return-void

    .line 612
    :cond_1c
    :try_start_1c
    invoke-virtual {v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getUserState()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_28

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 613
    :goto_29
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->killPackageAsUser(Ljava/lang/String;I)V

    .line 614
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    move-result-object v3

    invoke-virtual {v3, v2, v4, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->uninstallPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ZI)I

    if-eqz v4, :cond_46

    .line 620
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    invoke-virtual {v3, p1}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->removePackage(Ljava/lang/String;)V

    .line 621
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v3, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->removeAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    goto :goto_4c

    .line 623
    :cond_46
    invoke-virtual {v2, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->removeUser(I)V

    .line 624
    invoke-virtual {v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->save()Z

    .line 626
    :goto_4c
    invoke-virtual {p0, p1, v4, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->onPackageUninstalled(Ljava/lang/String;ZI)V

    .line 627
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_1c .. :try_end_50} :catchall_52

    .line 628
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_55

    return-void

    :catchall_52
    move-exception p0

    .line 627
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p0

    :catchall_55
    move-exception p0

    .line 628
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw p0
.end method

###### Class top.niunaijun.blackbox.core.system.pm.BPackageManagerService.AnonymousClass1 (top.niunaijun.blackbox.core.system.pm.BPackageManagerService$1)
