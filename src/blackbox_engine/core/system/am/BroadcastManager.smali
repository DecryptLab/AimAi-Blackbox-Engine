.class public Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;


# static fields
.field public static final MSG_TIME_OUT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BroadcastManager"

.field public static final TIMEOUT:I = 0x2328

.field private static sBroadcastManager:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

.field private final mReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReceiversData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/entity/am/PendingResultData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceiversData:Ljava/util/Map;

    .line 40
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager$1;-><init>(Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    return-void
.end method

.method private addReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .registers 4

    .line 105
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_14

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .registers 10

    const-string v0, "register: "

    .line 83
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter v1

    .line 84
    :try_start_5
    const-string v2, "BroadcastManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 86
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    .line 87
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    .line 88
    new-instance v5, Ltop/niunaijun/blackbox/proxy/ProxyBroadcastReceiver;

    invoke-direct {v5}, Ltop/niunaijun/blackbox/proxy/ProxyBroadcastReceiver;-><init>()V

    .line 89
    iget-object v6, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v6, :cond_5a

    const/4 v6, 0x2

    goto :goto_5b

    :cond_5a
    const/4 v6, 0x4

    .line 93
    :goto_5b
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v4, v4, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    .line 92
    invoke-static {v7, v5, v4, v6}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 98
    iget-object v4, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->addReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_41

    .line 101
    :cond_6a
    monitor-exit v1

    return-void

    :catchall_6c
    move-exception p0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_5 .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public static startSystem(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;)Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;
    .registers 3

    .line 59
    sget-object v0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->sBroadcastManager:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    if-nez v0, :cond_17

    .line 60
    const-class v0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    monitor-enter v0

    .line 61
    :try_start_7
    sget-object v1, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->sBroadcastManager:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    if-nez v1, :cond_12

    .line 62
    new-instance v1, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    invoke-direct {v1, p0}, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;-><init>(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;)V

    sput-object v1, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->sBroadcastManager:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    .line 64
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 66
    :cond_17
    :goto_17
    sget-object p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->sBroadcastManager:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    return-object p0
.end method


# virtual methods
.method public finishBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingResultData;)V
    .registers 4

    .line 123
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceiversData:Ljava/util/Map;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceiversData:Ljava/util/Map;

    iget-object p1, p1, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v1, p1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 126
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onPackageInstalled(Ljava/lang/String;I)V
    .registers 4

    .line 150
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter p2

    .line 151
    :try_start_3
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getBPackageSetting(Ljava/lang/String;)Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 154
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->registerPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 156
    :cond_15
    monitor-exit p2

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public onPackageUninstalled(Ljava/lang/String;ZI)V
    .registers 7

    const-string p3, "unregisterReceiver Package: "

    if-eqz p2, :cond_53

    .line 132
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter p2

    .line 133
    :try_start_7
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_49

    .line 135
    const-string v1, "BroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, ", size: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :catchall_35
    :goto_35
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_50

    .line 138
    :try_start_41
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_35

    goto :goto_35

    .line 143
    :cond_49
    :try_start_49
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit p2

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit p2
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    :goto_53
    return-void
.end method

.method public sendBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingResultData;)V
    .registers 5

    .line 114
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceiversData:Ljava/util/Map;

    monitor-enter v0

    .line 116
    :try_start_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mReceiversData:Ljava/util/Map;

    iget-object v2, p1, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->mBToken:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 118
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2328

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 119
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public startup()V
    .registers 3

    .line 74
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->addPackageMonitor(Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;)V

    .line 75
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getBPackageSettings()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 77
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 78
    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->registerPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    goto :goto_f

    :cond_21
    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.am.BroadcastManager.AnonymousClass1 (top.niunaijun.blackbox.core.system.am.BroadcastManager$1)
