.class public Ltop/niunaijun/blackbox/core/system/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final LAUNCH_TIME_OUT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ActivityStack"


# instance fields
.field private final mAms:Landroid/app/ActivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLaunchingActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

.field private final mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltop/niunaijun/blackbox/core/system/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLaunchingActivities(Ltop/niunaijun/blackbox/core/system/am/ActivityStack;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    .line 64
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack$1;-><init>(Ltop/niunaijun/blackbox/core/system/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    return-void
.end method

.method private deliverNewIntentLocked(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;Landroid/content/Intent;)V
    .registers 3

    .line 279
    :try_start_0
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->processRecord:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/IBActivityThread;->handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 281
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private findActivityRecordByComponentName(ILandroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
    .registers 7

    .line 448
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 449
    iget v2, v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->userId:I

    if-ne p1, v2, :cond_b

    .line 450
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 451
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move-object v0, v2

    goto :goto_b

    :cond_37
    return-object v0
.end method

.method private findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_35

    .line 464
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 465
    iget v2, v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->userId:I

    if-ne p1, v2, :cond_d

    .line 466
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 467
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    if-ne v3, p2, :cond_23

    move-object v0, v2

    goto :goto_d

    :cond_35
    return-object v0
.end method

.method private findTaskRecordByTaskAffinityLocked(ILjava/lang/String;)Ltop/niunaijun/blackbox/core/system/am/TaskRecord;
    .registers 6

    .line 479
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 480
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 481
    iget v2, v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->userId:I

    if-ne p1, v2, :cond_d

    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 482
    monitor-exit v0

    return-object v1

    :cond_27
    const/4 p0, 0x0

    .line 484
    monitor-exit v0

    return-object p0

    :catchall_2a
    move-exception p0

    .line 485
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private finishAllActivity(I)V
    .registers 5

    .line 390
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 391
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1c
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 392
    iget v2, v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->userId:I

    if-ne v2, p1, :cond_1c

    .line 393
    iget-boolean v2, v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    if-eqz v2, :cond_1c

    .line 395
    :try_start_30
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->processRecord:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v2, v1}, Ltop/niunaijun/blackbox/core/IBActivityThread;->finishActivity(Landroid/os/IBinder;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_1c

    goto :goto_1c

    :cond_3a
    return-void
.end method

.method private getStartStubActivityIntentInner(Landroid/content/Intent;IILtop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .registers 10

    .line 358
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/4 p3, 0x0

    .line 361
    :try_start_6
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 363
    iget v1, p5, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v1, :cond_17

    .line 364
    iget v1, p5, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_1b

    .line 366
    :cond_17
    iget-object v1, p5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 369
    :goto_1b
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {}, Lblack/com/android/internal/BRRstyleable;->get()Lblack/com/android/internal/RstyleableStatic;

    move-result-object v2

    invoke-interface {v2}, Lblack/com/android/internal/RstyleableStatic;->Window()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 370
    invoke-static {}, Lblack/com/android/internal/BRRstyleable;->get()Lblack/com/android/internal/RstyleableStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/com/android/internal/RstyleableStatic;->Window_windowIsTranslucent()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 372
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->TransparentProxyActivity(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_5f

    .line 374
    :cond_4f
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyActivity(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 376
    :goto_5f
    const-string v1, "ActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v2, ", windowIsTranslucent: "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_6 .. :try_end_7b} :catchall_7e

    if-eqz p3, :cond_97

    goto :goto_94

    :catchall_7e
    move-exception p5

    .line 378
    :try_start_7f
    invoke-virtual {p5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    new-instance p5, Landroid/content/ComponentName;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyActivity(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p5, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_a1

    if-eqz p3, :cond_97

    .line 382
    :goto_94
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 385
    :cond_97
    iget-object p2, p4, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p4, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    iget p4, p4, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mUserId:I

    invoke-static {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)V

    return-object p0

    :catchall_a1
    move-exception p0

    if-eqz p3, :cond_a7

    .line 382
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    :cond_a7
    throw p0
.end method

.method private getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
    .registers 2

    .line 346
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 347
    :try_start_3
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 348
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2b

    .line 349
    new-instance v0, Ljava/util/LinkedList;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 350
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x0

    return-object p0

    .line 352
    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p0

    return-object p0

    :catchall_2b
    move-exception p0

    .line 348
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method private realStartActivityLocked(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .registers 20

    and-int/lit8 v8, p7, -0xf

    .line 337
    :try_start_2
    invoke-static {}, Lblack/android/app/BRActivityManagerNative;->get()Lblack/android/app/ActivityManagerNativeStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityManagerNativeStatic;->getDefault()Landroid/os/IInterface;

    move-result-object p0

    invoke-static {p0}, Lblack/android/app/BRIActivityManager;->get(Ljava/lang/Object;)Lblack/android/app/IActivityManagerContext;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v10, p8

    invoke-interface/range {v0 .. v10}, Lblack/android/app/IActivityManagerContext;->startActivity(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Integer;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_21

    goto :goto_26

    :catchall_21
    move-exception v0

    move-object p0, v0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_26
    const/4 p0, 0x0

    return p0
.end method

.method private startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)I
    .registers 13

    move-object v0, p0

    move v4, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v5, p6

    .line 299
    invoke-virtual/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->newActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p0

    move-object v3, v2

    move-object v2, v1

    move v1, v4

    move-object v4, p0

    .line 301
    invoke-direct/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityProcess(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;I)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x8000000

    .line 303
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x80000

    .line 304
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 305
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0
.end method

.method private startActivityInSourceTask(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILtop/niunaijun/blackbox/core/system/am/ActivityRecord;Landroid/content/pm/ActivityInfo;II)I
    .registers 22

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move/from16 v4, p8

    move-object/from16 v2, p10

    move/from16 v5, p12

    .line 318
    invoke-virtual/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->newActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v6

    move-object v3, v2

    move-object v2, v1

    move v1, v4

    move-object v4, v6

    .line 320
    invoke-direct/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityProcess(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;I)Landroid/content/Intent;

    move-result-object v2

    .line 321
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 p1, p11

    .line 322
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p3, :cond_2c

    const/high16 p1, 0x10000000

    .line 324
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2c
    move-object/from16 p1, p9

    .line 326
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->processRecord:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->appThread:Landroid/os/IInterface;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->realStartActivityLocked(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method private startActivityProcess(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;I)Landroid/content/Intent;
    .registers 12

    move-object v0, p4

    .line 287
    new-instance p4, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;

    invoke-direct {p4, p1, p3, p2, v0}, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 288
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v4, -0x1

    move v3, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 293
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object p5

    invoke-virtual {p5, p1, v5}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->registerBinderPeers(Ltop/niunaijun/blackbox/core/system/ProcessRecord;I)V

    .line 294
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    move-object p5, p2

    move p2, p1

    move-object p1, p5

    move-object p5, p3

    move p3, v3

    invoke-direct/range {p0 .. p5}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->getStartStubActivityIntentInner(Landroid/content/Intent;IILtop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_2a
    move-object p5, p3

    .line 291
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to create process, name:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synchronizeTasks()V
    .registers 7

    .line 610
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 611
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 612
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_39

    .line 613
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 614
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    if-nez v4, :cond_2d

    goto :goto_36

    .line 617
    :cond_2d
    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 619
    :cond_39
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 620
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public containsFlag(Landroid/content/Intent;I)Z
    .registers 3

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p0

    and-int/2addr p0, p2

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;
    .registers 4

    .line 575
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 576
    :try_start_3
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 577
    invoke-direct {p0, p2, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 579
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->resultTo:Landroid/os/IBinder;

    invoke-direct {p0, p2, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 581
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    monitor-exit v0

    return-object p0

    .line 584
    :cond_18
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    if-eqz p1, :cond_32

    iget-boolean p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    if-nez p1, :cond_32

    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    iget p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->userId:I

    if-ne p1, p2, :cond_32

    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    if-eqz p1, :cond_32

    .line 587
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    monitor-exit v0

    return-object p0

    .line 589
    :cond_32
    new-instance p0, Landroid/content/ComponentName;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p1

    const-class p2, Ltop/niunaijun/blackbox/proxy/ProxyActivity$P0;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object p0

    :catchall_43
    move-exception p0

    .line 590
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 4

    .line 556
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 557
    :try_start_3
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 558
    invoke-direct {p0, p2, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 560
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->resultTo:Landroid/os/IBinder;

    invoke-direct {p0, p2, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 562
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 565
    :cond_1a
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    if-eqz p1, :cond_36

    iget-boolean p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    if-nez p1, :cond_36

    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    iget p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->userId:I

    if-ne p1, p2, :cond_36

    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_36

    .line 568
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 570
    :cond_36
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_3c
    move-exception p0

    .line 571
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 4

    .line 594
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 595
    :try_start_3
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 596
    invoke-direct {p0, p2, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_10

    .line 597
    :cond_e
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    :goto_10
    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 598
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;I)I
    .registers 4

    .line 602
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 603
    :try_start_3
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 604
    invoke-direct {p0, p2, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, -0x1

    goto :goto_10

    .line 605
    :cond_e
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->launchedFromUid:I

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 606
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method newActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
    .registers 14

    .line 408
    invoke-direct {p0, p4, p3}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_f

    .line 410
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, p5}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v1

    goto :goto_11

    .line 411
    :cond_f
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->processRecord:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    :goto_11
    if-nez v0, :cond_59

    if-nez v1, :cond_59

    if-lez p5, :cond_1d

    .line 413
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p5, v2, :cond_59

    .line 414
    :cond_1d
    iget-object p5, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter p5

    .line 415
    :try_start_20
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    if-eqz v2, :cond_53

    .line 416
    iget-boolean v3, v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    if-nez v3, :cond_53

    iget v3, v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->userId:I

    if-ne v3, p4, :cond_53

    .line 417
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->processRecord:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    if-eqz v3, :cond_53

    .line 418
    iget v4, v3, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    if-lez v4, :cond_53

    .line 419
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, v3, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    if-eqz v2, :cond_53

    iget-object v2, v3, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    .line 421
    invoke-interface {v2}, Ltop/niunaijun/blackbox/core/IBActivityThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_53

    move-object v1, v3

    .line 425
    :cond_53
    monitor-exit p5

    goto :goto_59

    :catchall_55
    move-exception v0

    move-object p0, v0

    monitor-exit p5
    :try_end_58
    .catchall {:try_start_20 .. :try_end_58} :catchall_55

    throw p0

    :cond_59
    :goto_59
    if-eqz v0, :cond_60

    .line 428
    iget-object p5, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p5, p5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_68

    :cond_60
    if-eqz v1, :cond_67

    .line 430
    invoke-virtual {v1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object p5

    goto :goto_68

    :cond_67
    const/4 p5, 0x0

    :goto_68
    move-object v6, p5

    if-eqz v1, :cond_74

    .line 433
    iget p5, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    iget v0, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {p5, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p5

    goto :goto_75

    :cond_74
    const/4 p5, -0x1

    :goto_75
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v7, p5

    .line 435
    invoke-static/range {v2 .. v7}, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->create(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    .line 437
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    monitor-enter p2

    .line 438
    :try_start_81
    iget-object p3, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object p3, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-static {p3, p4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 440
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 p4, 0x7d0

    invoke-virtual {p0, p3, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 441
    monitor-exit p2

    return-object p1

    :catchall_96
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_99
    .catchall {:try_start_81 .. :try_end_99} :catchall_96

    throw p0
.end method

.method public onActivityCreated(Ltop/niunaijun/blackbox/core/system/ProcessRecord;ILandroid/os/IBinder;Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V
    .registers 10

    const-string v0, "onActivityCreated : "

    .line 490
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    monitor-enter v1

    .line 491
    :try_start_5
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    invoke-interface {v2, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 492
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 493
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_65

    .line 494
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v2

    .line 495
    :try_start_14
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 496
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    if-nez v1, :cond_3f

    .line 498
    new-instance v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    iget v3, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->userId:I

    iget-object v4, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v4}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;-><init>(IILjava/lang/String;)V

    .line 499
    iget-object v3, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v3, v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->rootIntent:Landroid/content/Intent;

    .line 500
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_3f
    iput-object p3, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    .line 503
    iput-object p1, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->processRecord:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 504
    iput-object v1, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 505
    invoke-virtual {v1, p4}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->addTopActivity(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V

    .line 506
    const-string p0, "ActivityStack"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    monitor-exit v2

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_14 .. :try_end_64} :catchall_62

    throw p0

    :catchall_65
    move-exception p0

    .line 493
    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public onActivityDestroyed(ILandroid/os/IBinder;)V
    .registers 5

    const-string v0, "onActivityDestroyed : "

    .line 525
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v1

    .line 526
    :try_start_5
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 527
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_10

    .line 529
    monitor-exit v1

    return-void

    :cond_10
    const/4 p2, 0x1

    .line 531
    iput-boolean p2, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    .line 532
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    if-ne p2, p1, :cond_1a

    const/4 p2, 0x0

    .line 533
    iput-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 535
    :cond_1a
    const-string p0, "ActivityStack"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->removeActivity(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V

    .line 537
    monitor-exit v1

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public onActivityResumed(ILandroid/os/IBinder;)V
    .registers 6

    const-string v0, "onActivityResumed : "

    .line 511
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v1

    .line 512
    :try_start_5
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 513
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_10

    .line 515
    monitor-exit v1

    return-void

    .line 517
    :cond_10
    const-string p2, "ActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    invoke-virtual {p2, p1}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->removeActivity(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V

    .line 519
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    invoke-virtual {p2, p1}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->addTopActivity(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V

    .line 520
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 521
    monitor-exit v1

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public onFinishActivity(ILandroid/os/IBinder;)V
    .registers 5

    const-string v0, "onFinishActivity : "

    .line 541
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v1

    .line 542
    :try_start_5
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 543
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_10

    .line 545
    monitor-exit v1

    return-void

    :cond_10
    const/4 p2, 0x1

    .line 547
    iput-boolean p2, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    .line 548
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    if-ne p2, p1, :cond_1a

    const/4 p2, 0x0

    .line 549
    iput-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mResumedActivity:Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 551
    :cond_1a
    const-string p0, "ActivityStack"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    monitor-exit v1

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public startActivitiesLocked(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .registers 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_35

    if-eqz v1, :cond_2d

    .line 95
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_25

    const/4 v2, 0x0

    move v3, v2

    .line 98
    :goto_e
    array-length v4, v0

    if-ge v3, v4, :cond_24

    .line 99
    aget-object v7, v0, v3

    aget-object v8, v1, v3

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v6, p1

    move-object/from16 v9, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v5 .. v13}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_24
    return v2

    .line 96
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "intents are length different than resolvedTypes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_2d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "resolvedTypes is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_35
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "intents is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .registers 30

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v1, p2

    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 106
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v2

    .line 107
    :try_start_d
    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 108
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_242

    .line 110
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v4, p3

    invoke-virtual {v2, v1, v3, v4, v8}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_240

    .line 111
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_24

    goto/16 :goto_240

    .line 114
    :cond_24
    const-string v6, "ActivityStack"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "startActivityLocked : "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v2, p4

    .line 117
    invoke-direct {v0, v8, v2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_45

    const/4 v2, 0x0

    :cond_45
    if-eqz v6, :cond_4a

    .line 123
    iget-object v6, v6, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    goto :goto_4b

    :cond_4a
    const/4 v6, 0x0

    .line 126
    :goto_4b
    invoke-static {v10}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    const/high16 v11, 0x20000000

    .line 129
    invoke-virtual {v0, v1, v11}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v11

    if-nez v11, :cond_5e

    iget v11, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v11, v3, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v11, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    move v11, v3

    :goto_5f
    const/high16 v13, 0x10000000

    .line 130
    invoke-virtual {v0, v1, v13}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v13

    const/high16 v14, 0x4000000

    .line 131
    invoke-virtual {v0, v1, v14}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v14

    const v15, 0x8000

    .line 132
    invoke-virtual {v0, v1, v15}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v15

    .line 135
    iget v7, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x2

    if-eqz v7, :cond_86

    if-eq v7, v3, :cond_86

    if-eq v7, v5, :cond_86

    const/4 v5, 0x3

    if-eq v7, v5, :cond_81

    move v7, v11

    const/4 v5, 0x0

    goto :goto_90

    .line 145
    :cond_81
    invoke-direct {v0, v8, v9}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findTaskRecordByTaskAffinityLocked(ILjava/lang/String;)Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    move-result-object v5

    goto :goto_8f

    .line 139
    :cond_86
    invoke-direct {v0, v8, v9}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findTaskRecordByTaskAffinityLocked(ILjava/lang/String;)Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    move-result-object v5

    if-nez v5, :cond_8f

    if-nez v13, :cond_8f

    move-object v5, v6

    :cond_8f
    :goto_8f
    move v7, v11

    :goto_90
    if-eqz v5, :cond_230

    .line 150
    invoke-virtual {v5}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->needNewTask()Z

    move-result v9

    if-eqz v9, :cond_9e

    move-object v4, v2

    const/4 v5, 0x0

    move-object v2, v1

    move v1, v8

    goto/16 :goto_239

    :cond_9e
    if-nez v14, :cond_c2

    if-nez v7, :cond_c2

    if-eqz v15, :cond_a5

    goto :goto_c2

    .line 159
    :cond_a5
    iget-object v9, v5, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->rootIntent:Landroid/content/Intent;

    .line 160
    invoke-static {v9, v1}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->intentFilterEquals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_c2

    iget-object v9, v5, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->rootIntent:Landroid/content/Intent;

    .line 161
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v11

    if-ne v9, v11, :cond_c2

    .line 164
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    iget v1, v5, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    return v2

    .line 168
    :cond_c2
    :goto_c2
    invoke-virtual {v5}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v9

    .line 169
    invoke-static {v10}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-direct {v0, v8, v11}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByComponentName(ILandroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v11

    if-eqz v14, :cond_13c

    if-eqz v11, :cond_13c

    move/from16 v16, v3

    .line 176
    iget-object v3, v11, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v3

    move-object/from16 v17, v2

    .line 177
    :try_start_db
    iget-object v2, v11, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e5
    if-ltz v2, :cond_132

    .line 178
    iget-object v4, v11, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    iget-object v4, v4, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    if-eq v4, v11, :cond_126

    move/from16 v18, v2

    move/from16 v2, v16

    .line 180
    iput-boolean v2, v4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    .line 181
    const-string v2, "ActivityStack"

    move-object/from16 v19, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v7

    const-string v7, "makerFinish: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v4, p3

    move-object/from16 v6, v19

    move/from16 v7, v20

    const/16 v16, 0x1

    goto :goto_e5

    :cond_126
    move-object/from16 v19, v6

    move/from16 v20, v7

    if-eqz v20, :cond_12e

    move-object v7, v11

    goto :goto_137

    :cond_12e
    const/4 v2, 0x1

    .line 187
    iput-boolean v2, v11, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    goto :goto_136

    :cond_132
    move-object/from16 v19, v6

    move/from16 v20, v7

    :goto_136
    const/4 v7, 0x0

    .line 192
    :goto_137
    monitor-exit v3

    goto :goto_143

    :catchall_139
    move-exception v0

    monitor-exit v3
    :try_end_13b
    .catchall {:try_start_db .. :try_end_13b} :catchall_139

    throw v0

    :cond_13c
    move-object/from16 v17, v2

    move-object/from16 v19, v6

    move/from16 v20, v7

    const/4 v7, 0x0

    :goto_143
    if-eqz v20, :cond_17e

    if-nez v14, :cond_17e

    .line 197
    iget-object v2, v9, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v2, v1}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->intentFilterEquals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_151

    move-object v7, v9

    goto :goto_17e

    .line 200
    :cond_151
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    monitor-enter v2

    .line 201
    :try_start_154
    iget-object v3, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_15b
    :goto_15b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_179

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 202
    iget-boolean v11, v6, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    if-nez v11, :cond_15b

    iget-object v6, v6, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15b

    const/4 v4, 0x1

    goto :goto_15b

    .line 207
    :cond_179
    monitor-exit v2

    goto :goto_17f

    :catchall_17b
    move-exception v0

    monitor-exit v2
    :try_end_17d
    .catchall {:try_start_154 .. :try_end_17d} :catchall_17b

    throw v0

    :cond_17e
    :goto_17e
    const/4 v4, 0x0

    .line 211
    :goto_17f
    iget v2, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1bd

    if-nez v14, :cond_1bd

    .line 212
    iget-object v2, v9, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v2, v1}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->intentFilterEquals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_190

    move-object v7, v9

    goto :goto_1bd

    .line 215
    :cond_190
    invoke-static {v10}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v0, v8, v2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByComponentName(ILandroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1bd

    .line 220
    iget-object v3, v5, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v3

    .line 221
    :try_start_19d
    iget-object v6, v5, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_1a5
    if-ltz v6, :cond_1b7

    .line 222
    iget-object v11, v5, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    if-eq v11, v2, :cond_1b7

    .line 224
    iput-boolean v7, v11, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    goto :goto_1a5

    .line 229
    :cond_1b7
    monitor-exit v3

    move-object v7, v2

    goto :goto_1bd

    :catchall_1ba
    move-exception v0

    monitor-exit v3
    :try_end_1bc
    .catchall {:try_start_19d .. :try_end_1bc} :catchall_1ba

    throw v0

    .line 234
    :cond_1bd
    :goto_1bd
    iget v2, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c3

    move-object v7, v9

    :cond_1c3
    if-eqz v15, :cond_1dd

    if-eqz v13, :cond_1dd

    .line 240
    iget-object v2, v5, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    const/4 v6, 0x1

    .line 241
    iput-boolean v6, v3, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    goto :goto_1cd

    :cond_1dd
    if-eqz v7, :cond_1ee

    .line 247
    invoke-direct {v0, v7, v1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->deliverNewIntentLocked(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;Landroid/content/Intent;)V

    .line 248
    invoke-direct/range {p0 .. p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->finishAllActivity(I)V

    .line 249
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    iget v1, v5, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    return v2

    :cond_1ee
    const/4 v2, 0x0

    .line 253
    invoke-direct/range {p0 .. p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->finishAllActivity(I)V

    if-eqz v4, :cond_1fc

    .line 256
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    iget v1, v5, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    return v2

    :cond_1fc
    if-nez v17, :cond_20b

    .line 261
    invoke-virtual {v5}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_207

    .line 263
    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    goto :goto_209

    :cond_207
    move-object/from16 v2, v17

    :goto_209
    move-object v3, v2

    goto :goto_218

    :cond_20b
    if-eqz v19, :cond_216

    .line 266
    invoke-virtual/range {v19 .. v19}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_216

    .line 268
    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    goto :goto_209

    :cond_216
    move-object/from16 v3, v17

    .line 271
    :goto_218
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    iget v4, v5, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->id:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    const/4 v11, 0x0

    .line 272
    invoke-direct/range {v0 .. v12}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityInSourceTask(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILtop/niunaijun/blackbox/core/system/am/ActivityRecord;Landroid/content/pm/ActivityInfo;II)I

    move-result v0

    return v0

    :cond_230
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v4, v2

    move v5, v11

    move-object/from16 v2, p2

    :goto_239
    move-object v3, v10

    move v6, v12

    .line 151
    invoke-direct/range {v0 .. v6}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)I

    move-result v0

    return v0

    :cond_240
    :goto_240
    const/4 v5, 0x0

    return v5

    :catchall_242
    move-exception v0

    .line 108
    :try_start_243
    monitor-exit v2
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_242

    throw v0
.end method

###### Class top.niunaijun.blackbox.core.system.am.ActivityStack.AnonymousClass1 (top.niunaijun.blackbox.core.system.am.ActivityStack$1)
