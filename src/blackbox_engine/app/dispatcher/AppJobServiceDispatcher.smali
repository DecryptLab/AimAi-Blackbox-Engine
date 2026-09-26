.class public Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;
.super Ljava/lang/Object;
.source "AppJobServiceDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppJobServiceDispatcher"

.field private static final sServiceDispatcher:Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;


# instance fields
.field private final mJobRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltop/niunaijun/blackbox/entity/JobRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->sServiceDispatcher:Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    return-void
.end method

.method private destroyJobService(ILandroid/app/job/JobService;)V
    .registers 6

    const-string v0, "Unable to destroy job "

    .line 135
    :try_start_2
    invoke-virtual {p2}, Landroid/app/job/JobService;->onDestroy()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_1a
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_5} :catch_18
    .catchall {:try_start_2 .. :try_end_5} :catchall_16

    .line 139
    iget-object p2, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    monitor-enter p2

    .line 140
    :try_start_8
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit p2

    return-void

    :catchall_13
    move-exception p0

    monitor-exit p2
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw p0

    :catchall_16
    move-exception p2

    goto :goto_3e

    :catch_18
    move-exception p2

    goto :goto_1b

    :catch_1a
    move-exception p2

    .line 137
    :goto_1b
    :try_start_1b
    const-string v1, "AppJobServiceDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_16

    .line 139
    iget-object p2, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    monitor-enter p2

    .line 140
    :try_start_30
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit p2

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit p2
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    throw p0

    .line 139
    :goto_3e
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    monitor-enter v0

    .line 140
    :try_start_41
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_4c

    .line 142
    throw p2

    :catchall_4c
    move-exception p0

    .line 141
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public static get()Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;
    .registers 1

    .line 29
    sget-object v0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->sServiceDispatcher:Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;

    return-object v0
.end method

.method private getJobRecordsSnapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltop/niunaijun/blackbox/entity/JobRecord;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    monitor-enter v0

    .line 129
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 130
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method


# virtual methods
.method getJobService(I)Landroid/app/job/JobService;
    .registers 10

    const-string v0, "Unable to create service for "

    const-string v1, "Missing service info for "

    const-string v2, "Missing job record for "

    const-string v3, "Unable to resolve job "

    .line 94
    iget-object v4, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    monitor-enter v4

    .line 95
    :try_start_b
    iget-object v5, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltop/niunaijun/blackbox/entity/JobRecord;

    if-eqz v5, :cond_21

    .line 96
    iget-object v6, v5, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    if-eqz v6, :cond_21

    .line 97
    iget-object p0, v5, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    monitor-exit v4

    return-object p0

    .line 99
    :cond_21
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppProcessName()Ljava/lang/String;

    move-result-object v5
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_d5

    const/4 v6, 0x0

    .line 101
    :try_start_26
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBJobManager()Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;

    move-result-object v7

    invoke-virtual {v7, v5, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->queryJobRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/JobRecord;

    move-result-object v7

    if-nez v7, :cond_4e

    .line 103
    const-string p0, "AppJobServiceDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_26 .. :try_end_4c} :catchall_b9

    .line 104
    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_d5

    return-object v6

    .line 106
    :cond_4e
    :try_start_4e
    iget-object v2, v7, Ltop/niunaijun/blackbox/entity/JobRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_77

    .line 107
    const-string p0, "AppJobServiceDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBJobManager()Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;

    move-result-object p0

    invoke-virtual {p0, v5, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->cancel(Ljava/lang/String;I)I
    :try_end_75
    .catchall {:try_start_4e .. :try_end_75} :catchall_b9

    .line 109
    :try_start_75
    monitor-exit v4
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_d5

    return-object v6

    .line 111
    :cond_77
    :try_start_77
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v1

    iget-object v2, v7, Ltop/niunaijun/blackbox/entity/JobRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Ltop/niunaijun/blackbox/app/BActivityThread;->createJobService(Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobService;

    move-result-object v1

    iput-object v1, v7, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    .line 112
    iget-object v1, v7, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    if-nez v1, :cond_ac

    .line 113
    const-string p0, "AppJobServiceDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBJobManager()Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;

    move-result-object p0

    invoke-virtual {p0, v5, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->cancel(Ljava/lang/String;I)I
    :try_end_aa
    .catchall {:try_start_77 .. :try_end_aa} :catchall_b9

    .line 115
    :try_start_aa
    monitor-exit v4
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_d5

    return-object v6

    .line 117
    :cond_ac
    :try_start_ac
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->mJobRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p0, v7, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;
    :try_end_b7
    .catchall {:try_start_ac .. :try_end_b7} :catchall_b9

    :try_start_b7
    monitor-exit v4

    return-object p0

    :catchall_b9
    move-exception p0

    .line 120
    const-string v0, "AppJobServiceDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBJobManager()Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;

    move-result-object p0

    invoke-virtual {p0, v5, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->cancel(Ljava/lang/String;I)I

    .line 123
    monitor-exit v4

    return-object v6

    :catchall_d5
    move-exception p0

    .line 124
    monitor-exit v4
    :try_end_d7
    .catchall {:try_start_b7 .. :try_end_d7} :catchall_d5

    throw p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->getJobRecordsSnapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/entity/JobRecord;

    .line 62
    iget-object v1, v0, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    if-eqz v1, :cond_c

    .line 63
    iget-object v0, v0, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    invoke-virtual {v0, p1}, Landroid/app/job/JobService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_c

    :cond_22
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 69
    invoke-direct {p0}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->getJobRecordsSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/entity/JobRecord;

    iget-object v2, v2, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    if-eqz v2, :cond_c

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v2}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->destroyJobService(ILandroid/app/job/JobService;)V

    goto :goto_c

    :cond_30
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .line 78
    invoke-direct {p0}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->getJobRecordsSnapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/entity/JobRecord;

    .line 79
    iget-object v1, v0, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    if-eqz v1, :cond_c

    .line 80
    iget-object v0, v0, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->onLowMemory()V

    goto :goto_c

    :cond_22
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    const/4 v0, 0x0

    .line 34
    :try_start_1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->getJobService(I)Landroid/app/job/JobService;

    move-result-object p0

    if-nez p0, :cond_c

    return v0

    .line 38
    :cond_c
    invoke-virtual {p0, p1}, Landroid/app/job/JobService;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    goto :goto_14

    :catch_13
    move-exception p0

    .line 40
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to start job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppJobServiceDispatcher"

    invoke-static {v1, p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 8

    const-string v0, "Unable to stop job "

    .line 46
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->getJobService(I)Landroid/app/job/JobService;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    .line 51
    :cond_e
    :try_start_e
    invoke-virtual {v1, p1}, Landroid/app/job/JobService;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_12} :catch_1e
    .catch Ljava/lang/LinkageError; {:try_start_e .. :try_end_12} :catch_1c
    .catchall {:try_start_e .. :try_end_12} :catchall_1a

    .line 56
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-direct {p0, p1, v1}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->destroyJobService(ILandroid/app/job/JobService;)V

    return v0

    :catchall_1a
    move-exception v0

    goto :goto_3d

    :catch_1c
    move-exception v3

    goto :goto_1f

    :catch_1e
    move-exception v3

    .line 53
    :goto_1f
    :try_start_1f
    const-string v4, "AppJobServiceDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_1a

    .line 56
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-direct {p0, p1, v1}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->destroyJobService(ILandroid/app/job/JobService;)V

    return v2

    :goto_3d
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-direct {p0, p1, v1}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->destroyJobService(ILandroid/app/job/JobService;)V

    .line 57
    throw v0
.end method

.method public onTrimMemory(I)V
    .registers 4

    .line 86
    invoke-direct {p0}, Ltop/niunaijun/blackbox/app/dispatcher/AppJobServiceDispatcher;->getJobRecordsSnapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/entity/JobRecord;

    .line 87
    iget-object v1, v0, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    if-eqz v1, :cond_c

    .line 88
    iget-object v0, v0, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobService:Landroid/app/job/JobService;

    invoke-virtual {v0, p1}, Landroid/app/job/JobService;->onTrimMemory(I)V

    goto :goto_c

    :cond_22
    return-void
.end method
