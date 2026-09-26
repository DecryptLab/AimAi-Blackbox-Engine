.class public Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;
.super Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService$Stub;
.source "BJobManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BJobManagerService"

.field private static final sService:Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;


# instance fields
.field private final mJobRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;",
            "Ltop/niunaijun/blackbox/entity/JobRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->sService:Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService$Stub;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->mJobRecords:Ljava/util/Map;

    return-void
.end method

.method private cancelHostJob(I)V
    .registers 5

    .line 140
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object p0

    .line 141
    const-string v0, "BJobManagerService"

    if-nez p0, :cond_1b

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "JobScheduler is unavailable for job "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_1b
    :try_start_1b
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to cancel host job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;
    .registers 1

    .line 47
    sget-object v0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->sService:Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;

    return-object v0
.end method

.method private getJobScheduler()Landroid/app/job/JobScheduler;
    .registers 2

    .line 153
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "jobscheduler"

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    return-object p0
.end method

.method private isProxyJob(Landroid/app/job/JobInfo;)Z
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 176
    :cond_4
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    :goto_8
    const/4 p1, 0x0

    if-eqz p0, :cond_32

    .line 177
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_32

    :cond_1a
    move v0, p1

    :goto_1b
    const/16 v1, 0x32

    if-ge v0, v1, :cond_32

    .line 181
    invoke-static {v0}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyJobService(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_32
    :goto_32
    return p1
.end method

.method private removeJobRecords(II)V
    .registers 7

    .line 131
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->mJobRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;

    .line 133
    invoke-static {v2}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->-$$Nest$fgetjobId(Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;)I

    move-result v3

    if-ne v3, p1, :cond_a

    invoke-static {v2}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->-$$Nest$fgetuserId(Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;)I

    move-result v3

    if-ne v3, p2, :cond_a

    .line 134
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->mJobRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_a

    :cond_32
    return-void
.end method

.method private removeOrphanedHostJobs()V
    .registers 6

    .line 158
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    .line 159
    const-string v1, "BJobManagerService"

    if-nez v0, :cond_e

    .line 160
    const-string p0, "JobScheduler is unavailable during startup cleanup"

    invoke-static {v1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_e
    :try_start_e
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 166
    invoke-direct {p0, v3}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->isProxyJob(Landroid/app/job/JobInfo;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 167
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_2f} :catch_31

    goto :goto_16

    :cond_30
    return-void

    :catch_31
    move-exception p0

    .line 171
    const-string v0, "Unable to clean orphaned host jobs"

    invoke-static {v1, v0, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 122
    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->removeJobRecords(II)V

    goto :goto_15

    .line 124
    :cond_a
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->mJobRecords:Ljava/util/Map;

    new-instance v1, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;-><init>(Ljava/lang/String;IILtop/niunaijun/blackbox/core/system/am/BJobManagerService-IA;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_15
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->cancelHostJob(I)V

    return p2
.end method

.method public cancelAll(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5e

    .line 106
    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 107
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->mJobRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;

    .line 109
    invoke-static {v3, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->-$$Nest$mbelongsTo(Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->mJobRecords:Ljava/util/Map;

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 111
    invoke-static {v3}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;->-$$Nest$fgetjobId(Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 114
    :cond_46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 115
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->cancelHostJob(I)V

    goto :goto_4a

    :cond_5e
    :goto_5e
    return-void
.end method

.method public queryJobRecord(Ljava/lang/String;II)Ltop/niunaijun/blackbox/entity/JobRecord;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 75
    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->removeJobRecords(II)V

    .line 76
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->cancelHostJob(I)V

    return-object v1

    .line 79
    :cond_e
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;

    invoke-direct {v0, p1, p2, p3, v1}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;-><init>(Ljava/lang/String;IILtop/niunaijun/blackbox/core/system/am/BJobManagerService-IA;)V

    .line 80
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->mJobRecords:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/entity/JobRecord;

    if-eqz p1, :cond_23

    .line 81
    iget-object p3, p1, Ltop/niunaijun/blackbox/entity/JobRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p3, :cond_22

    goto :goto_23

    :cond_22
    return-object p1

    :cond_23
    :goto_23
    if-eqz p1, :cond_2a

    .line 83
    iget-object p3, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->mJobRecords:Ljava/util/Map;

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    :cond_2a
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->cancelHostJob(I)V

    return-object v1
.end method

.method public schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 54
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v0

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    return-object p1

    .line 59
    :cond_1a
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 60
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v1

    if-nez v1, :cond_56

    .line 62
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v6, -0x1

    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_3f

    goto :goto_56

    .line 65
    :cond_3f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to create Process "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_56
    :goto_56
    invoke-virtual {p0, v1, p1, v0}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->scheduleJob(Ltop/niunaijun/blackbox/core/system/ProcessRecord;Landroid/app/job/JobInfo;Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public scheduleJob(Ltop/niunaijun/blackbox/core/system/ProcessRecord;Landroid/app/job/JobInfo;Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobInfo;
    .registers 9

    .line 92
    new-instance v0, Ltop/niunaijun/blackbox/entity/JobRecord;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/JobRecord;-><init>()V

    .line 93
    iput-object p2, v0, Ltop/niunaijun/blackbox/entity/JobRecord;->mJobInfo:Landroid/app/job/JobInfo;

    .line 94
    iput-object p3, v0, Ltop/niunaijun/blackbox/entity/JobRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 96
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->mJobRecords:Ljava/util/Map;

    new-instance p3, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;

    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    const/4 v4, 0x0

    invoke-direct {p3, v1, v2, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService$JobKey;-><init>(Ljava/lang/String;IILtop/niunaijun/blackbox/core/system/am/BJobManagerService-IA;)V

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p2}, Lblack/android/app/job/BRJobInfo;->get(Ljava/lang/Object;)Lblack/android/app/job/JobInfoContext;

    move-result-object p0

    new-instance p3, Landroid/content/ComponentName;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyJobService(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p3}, Lblack/android/app/job/JobInfoContext;->_set_service(Ljava/lang/Object;)V

    return-object p2
.end method

.method public systemReady()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->removeOrphanedHostJobs()V

    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.am.BJobManagerService.JobKey (top.niunaijun.blackbox.core.system.am.BJobManagerService$JobKey)
