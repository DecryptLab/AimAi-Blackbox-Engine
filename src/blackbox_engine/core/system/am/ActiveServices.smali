.class public Ltop/niunaijun/blackbox/core/system/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;,
        Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActiveServices"


# instance fields
.field private final mConnectedServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningServiceRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectedServices(Ltop/niunaijun/blackbox/core/system/am/ActiveServices;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningTokens:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    return-void
.end method

.method private createStubServiceIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Ltop/niunaijun/blackbox/core/system/ProcessRecord;Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;I)Landroid/content/Intent;
    .registers 10

    .line 217
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 218
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    iget v2, p3, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    invoke-static {v2}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyService(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 220
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget p3, p3, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    move-object v3, p4

    move p4, p3

    move-object p3, v3

    invoke-static/range {p0 .. p5}, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;II)V

    return-object p0
.end method

.method private findRunningServiceByToken(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;
    .registers 2

    .line 247
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningTokens:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    return-object p0
.end method

.method private findRunningServiceRecord(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;
    .registers 2

    .line 239
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    return-object p0
.end method

.method private getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .registers 3

    .line 243
    new-instance p0, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getOrCreateRunningServiceRecord(Landroid/content/pm/ServiceInfo;Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;
    .registers 4

    .line 227
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p1

    .line 228
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->findRunningServiceRecord(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 230
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;-><init>()V

    .line 231
    invoke-static {v0, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fputmIntent(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/Intent;)V

    .line 232
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningTokens:Ljava/util/Map;

    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method private resolveServiceInfo(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;
    .registers 5

    .line 294
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 296
    :cond_d
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 16

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 99
    invoke-direct {p0, p1, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->resolveServiceInfo(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object v10

    if-nez v10, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_c
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v4

    iget-object v5, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v8, -0x1

    move v7, p4

    invoke-virtual/range {v4 .. v9}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v4

    if-eqz v4, :cond_71

    .line 111
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0, v4, v9}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->registerBinderPeers(Ltop/niunaijun/blackbox/core/system/ProcessRecord;I)V

    .line 114
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    monitor-enter v5

    move-object v6, v5

    .line 115
    :try_start_27
    invoke-direct {p0, v10, p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getOrCreateRunningServiceRecord(Landroid/content/pm/ServiceInfo;Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object v5

    .line 116
    invoke-static {v5, v10}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fputmServiceInfo(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/pm/ServiceInfo;)V

    if-eqz p2, :cond_5d

    .line 119
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;

    if-eqz v0, :cond_3b

    goto :goto_5d

    .line 124
    :cond_3b
    new-instance v7, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;

    invoke-direct {v7}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;-><init>()V
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_6e

    .line 126
    :try_start_40
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$1;

    invoke-direct {v0, p0, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$1;-><init>(Ltop/niunaijun/blackbox/core/system/am/ActiveServices;Landroid/os/IBinder;)V

    const/4 v8, 0x0

    invoke-interface {p2, v0, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4a
    .catchall {:try_start_40 .. :try_end_49} :catchall_6e

    goto :goto_4e

    :catch_4a
    move-exception v0

    .line 134
    :try_start_4b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 136
    :goto_4e
    invoke-direct {p0, v10}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v7, v0}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;->-$$Nest$fputmComponent(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;Landroid/content/ComponentName;)V

    .line 137
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {v0, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v5}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->incrementBindCountAndGet()I

    .line 144
    :cond_5d
    :goto_5d
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_6e

    .line 145
    invoke-static {v5}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmStartId(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, v10

    .line 145
    invoke-direct/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->createStubServiceIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Ltop/niunaijun/blackbox/core/system/ProcessRecord;Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :catchall_6e
    move-exception v0

    .line 144
    :try_start_6f
    monitor-exit v6
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    :cond_71
    move-object v3, v10

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRunningServiceInfo(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningServiceInfo;
    .registers 9

    .line 252
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 253
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 256
    iget v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 259
    :cond_32
    new-instance v0, Ltop/niunaijun/blackbox/entity/am/RunningServiceInfo;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/am/RunningServiceInfo;-><init>()V

    .line 260
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_41
    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    .line 261
    invoke-static {v2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmServiceInfo(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 262
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v3

    if-nez v3, :cond_5e

    goto :goto_41

    .line 265
    :cond_5e
    iget v4, v3, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v4, :cond_41

    .line 267
    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 268
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 269
    iget-object v2, v0, Ltop/niunaijun/blackbox/entity/am/RunningServiceInfo;->mRunningServiceInfoList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_81
    return-object v0
.end method

.method public onServiceDestroy(Landroid/content/Intent;I)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_28

    .line 185
    :cond_3
    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;

    move-result-object p2

    .line 186
    iget-object v0, p2, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_10

    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_16

    .line 188
    :cond_10
    iget-object p1, p2, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p1

    :goto_16
    if-nez p1, :cond_19

    goto :goto_28

    .line 191
    :cond_19
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    if-eqz p1, :cond_28

    .line 193
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningTokens:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    :goto_28
    return-void
.end method

.method public onServiceUnbind(Landroid/content/Intent;I)Ltop/niunaijun/blackbox/entity/UnbindRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p1, :cond_4

    return-object p2

    .line 200
    :cond_4
    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;

    move-result-object p1

    .line 201
    iget-object v0, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_31

    iget-object v0, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_11

    goto :goto_31

    .line 203
    :cond_11
    iget-object p1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p1

    .line 205
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->findRunningServiceRecord(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p0

    if-nez p0, :cond_1e

    return-object p2

    .line 208
    :cond_1e
    new-instance p2, Ltop/niunaijun/blackbox/entity/UnbindRecord;

    invoke-direct {p2}, Ltop/niunaijun/blackbox/entity/UnbindRecord;-><init>()V

    .line 209
    invoke-virtual {p2, p1}, Ltop/niunaijun/blackbox/entity/UnbindRecord;->setComponentName(Landroid/content/ComponentName;)V

    .line 210
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmStartId(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p2, p0}, Ltop/niunaijun/blackbox/entity/UnbindRecord;->setStartId(I)V

    :cond_31
    :goto_31
    return-object p2
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .registers 8

    .line 276
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->resolveServiceInfo(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return-object v0

    .line 280
    :cond_8
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p3}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p3

    if-nez p3, :cond_17

    return-object v0

    .line 284
    :cond_17
    :try_start_17
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 285
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p0

    .line 284
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    .line 286
    iget-object p1, p3, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    invoke-interface {p1, p0}, Ltop/niunaijun/blackbox/core/IBActivityThread;->peekService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception p0

    .line 288
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;
    .registers 14

    .line 48
    invoke-direct {p0, p1, p2, p4}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->resolveServiceInfo(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_8
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move v6, p4

    invoke-virtual/range {v3 .. v8}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 55
    invoke-direct {p0, v2, p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getOrCreateRunningServiceRecord(Landroid/content/pm/ServiceInfo;Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object v4

    .line 56
    invoke-static {v4, v2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fputmServiceInfo(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/pm/ServiceInfo;)V

    .line 58
    invoke-virtual {v4}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->incrementAndGetStartId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 59
    invoke-direct/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->createStubServiceIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Ltop/niunaijun/blackbox/core/system/ProcessRecord;Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;I)Landroid/content/Intent;

    move-result-object p0

    if-eqz p3, :cond_3d

    .line 61
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_3d

    .line 62
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_44

    .line 64
    :cond_3d
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    :goto_44
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 53
    :cond_4e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to create "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 13

    .line 70
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->resolveServiceInfo(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 73
    :cond_8
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 74
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    monitor-enter v2

    .line 75
    :try_start_f
    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->findRunningServiceRecord(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p0

    if-nez p0, :cond_17

    .line 77
    monitor-exit v2

    return v0

    .line 79
    :cond_17
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmBindCount(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_2a

    .line 80
    const-string p0, "ActiveServices"

    const-string p1, "There are also connections"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-exit v2

    return v0

    .line 83
    :cond_2a
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmStartId(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 84
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    const/4 v7, -0x1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p0

    if-nez p0, :cond_47

    .line 86
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_57

    return v0

    .line 89
    :cond_47
    :try_start_47
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 90
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread;->stopService(Landroid/content/Intent;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_55} :catch_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_57

    .line 93
    :catch_55
    :try_start_55
    monitor-exit v2

    return v0

    :catchall_57
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_57

    throw p0
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z
    .registers 7

    .line 164
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->findRunningServiceByToken(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_47

    .line 165
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmServiceInfo(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_47

    .line 168
    :cond_e
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmServiceInfo(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz p1, :cond_1f

    .line 169
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    return v0

    :cond_1f
    if-ltz p3, :cond_2c

    .line 172
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmStartId(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eq p1, p3, :cond_2c

    return v0

    .line 175
    :cond_2c
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmStartId(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 176
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmBindCount(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_45

    .line 177
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmIntent(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->stopService(Landroid/content/Intent;Ljava/lang/String;I)I

    :cond_45
    const/4 p0, 0x1

    return p0

    :cond_47
    :goto_47
    return v0
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .registers 3

    .line 150
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;

    if-nez p2, :cond_b

    return-void

    .line 154
    :cond_b
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;->-$$Nest$fgetmComponent(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->findRunningServiceRecord(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p2

    if-nez p2, :cond_1b

    .line 156
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 159
    :cond_1b
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->-$$Nest$fgetmBindCount(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 160
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.am.ActiveServices.AnonymousClass1 (top.niunaijun.blackbox.core.system.am.ActiveServices$1)
