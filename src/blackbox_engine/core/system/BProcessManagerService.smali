.class public Ltop/niunaijun/blackbox/core/system/BProcessManagerService;
.super Ljava/lang/Object;
.source "BProcessManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# static fields
.field public static final TAG:Ljava/lang/String; = "BProcessManager"

.field public static sBProcessManagerService:Ltop/niunaijun/blackbox/core/system/BProcessManagerService;


# instance fields
.field private final mPidsSelfLocked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessLock:Ljava/lang/Object;

.field private final mProcessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->sBProcessManagerService:Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    return-void
.end method

.method private attachClientL(Ltop/niunaijun/blackbox/core/system/ProcessRecord;Landroid/os/IBinder;)V
    .registers 5

    .line 202
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/IBActivityThread;

    move-result-object v0

    if-nez v0, :cond_a

    .line 204
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->kill()V

    return-void

    .line 208
    :cond_a
    :try_start_a
    new-instance v1, Ltop/niunaijun/blackbox/core/system/BProcessManagerService$1;

    invoke-direct {v1, p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService$1;-><init>(Ltop/niunaijun/blackbox/core/system/BProcessManagerService;Ltop/niunaijun/blackbox/core/system/ProcessRecord;Landroid/os/IBinder;)V

    const/4 p0, 0x0

    invoke-interface {p2, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    .line 217
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 219
    :goto_18
    iput-object v0, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    .line 221
    :try_start_1a
    invoke-interface {v0}, Ltop/niunaijun/blackbox/core/IBActivityThread;->getActivityThread()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/compat/ApplicationThreadCompat;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    iput-object p0, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->appThread:Landroid/os/IInterface;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p0

    .line 223
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 225
    :goto_29
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private static createProc(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)V
    .registers 4

    .line 426
    new-instance v0, Ljava/io/File;

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    invoke-static {v1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getProcDir(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cmdline"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    :try_start_d
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->writeToFile([BLjava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;
    .registers 1

    .line 55
    sget-object v0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->sBProcessManagerService:Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    return-object v0
.end method

.method public static getPid(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 405
    :try_start_0
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->getRunningAppProcesses(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 406
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 407
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p0

    :catchall_1f
    move-exception p0

    .line 411
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method private static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 390
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->getRunningAppProcesses(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 391
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_8

    .line 392
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-eqz p0, :cond_1f

    return-object p0

    .line 397
    :cond_1f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "processName = null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getRunningAppProcesses(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 417
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_f

    .line 419
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 421
    :cond_f
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_19

    .line 422
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_19
    return-object p0
.end method

.method private getUsingBPidL()I
    .registers 5

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 140
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->getRunningAppProcesses(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 141
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->parseBPid(Ljava/lang/String;)I

    move-result v2

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 144
    :cond_2b
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_31
    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x32

    if-eqz v1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 145
    iget v3, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    if-ltz v3, :cond_31

    iget v3, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    if-ge v3, v2, :cond_31

    .line 146
    iget v1, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_51
    const/4 p0, 0x0

    :goto_52
    if-ge p0, v2, :cond_62

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    add-int/lit8 p0, p0, 0x1

    goto :goto_52

    :cond_61
    return p0

    :cond_62
    const/4 p0, -0x1

    return p0
.end method

.method private initAppProcessL(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)Z
    .registers 6

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initProcess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getClientConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v2, "BlackBox_client_config"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_Black_|_init_process_"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Ltop/niunaijun/blackbox/utils/provider/ProviderCall;->callSafely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 191
    const-string v1, "_Black_|_client_"

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 192
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_46

    .line 195
    :cond_3e
    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->attachClientL(Ltop/niunaijun/blackbox/core/system/ProcessRecord;Landroid/os/IBinder;)V

    .line 197
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->createProc(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_46
    :goto_46
    const/4 p0, 0x0

    return p0
.end method

.method private parseBPid(Ljava/lang/String;)I
    .registers 4

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 173
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 177
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    return p0
.end method

.method private registerAllBinderPeers(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)V
    .registers 7

    if-eqz p1, :cond_4f

    .line 119
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    if-lez v0, :cond_4f

    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    if-nez v0, :cond_b

    goto :goto_4f

    .line 123
    :cond_b
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_4c

    .line 126
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    if-eq v1, p1, :cond_1a

    .line 127
    iget v2, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    if-lez v2, :cond_1a

    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    if-nez v2, :cond_31

    goto :goto_1a

    .line 130
    :cond_31
    iget v2, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    iget v3, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    iget v4, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    .line 131
    invoke-static {v3, v4}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result v3

    .line 130
    invoke-direct {p0, p1, v2, v3}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->registerBinderCaller(Ltop/niunaijun/blackbox/core/system/ProcessRecord;II)V

    .line 132
    iget v2, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    iget v4, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    .line 133
    invoke-static {v3, v4}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result v3

    .line 132
    invoke-direct {p0, v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->registerBinderCaller(Ltop/niunaijun/blackbox/core/system/ProcessRecord;II)V

    goto :goto_1a

    :catchall_4c
    move-exception p0

    .line 125
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0

    :cond_4f
    :goto_4f
    return-void
.end method

.method private registerBinderCaller(Ltop/niunaijun/blackbox/core/system/ProcessRecord;II)V
    .registers 5

    .line 363
    :try_start_0
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    invoke-interface {p0, p2, p3}, Ltop/niunaijun/blackbox/core/IBActivityThread;->registerBinderCaller(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 365
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unable to register Binder caller "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BProcessManager"

    invoke-static {p2, p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static removeProc(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)V
    .registers 1

    .line 434
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getProcDir(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    return-void
.end method

.method private unregisterBinderCaller(I)V
    .registers 6

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_8
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 374
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    if-eqz v3, :cond_e

    .line 375
    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 378
    :cond_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_50

    .line 379
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/IBActivityThread;

    .line 381
    :try_start_35
    invoke-interface {v0, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread;->unregisterBinderCaller(I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_29

    :catch_39
    move-exception v0

    .line 383
    const-string v1, "BProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to unregister Binder caller "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :cond_4f
    return-void

    :catchall_50
    move-exception p0

    .line 378
    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p0
.end method


# virtual methods
.method public findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;
    .registers 5

    .line 336
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 338
    iget v2, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    if-ne v2, p1, :cond_9

    .line 339
    monitor-exit v0

    return-object v1

    :cond_1b
    const/4 p0, 0x0

    .line 341
    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    .line 342
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;
    .registers 6

    .line 247
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_3
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    .line 249
    invoke-static {p3, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    .line 250
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_20

    const/4 p0, 0x0

    .line 252
    monitor-exit v0

    return-object p0

    .line 253
    :cond_20
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    monitor-exit v0

    return-object p0

    :catchall_28
    move-exception p0

    .line 254
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public getBUidByPidOrPackageName(ILjava/lang/String;)I
    .registers 4

    .line 316
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter p0

    .line 317
    :try_start_3
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p1

    if-nez p1, :cond_17

    .line 319
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object p1

    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    monitor-exit p0

    return p1

    .line 321
    :cond_17
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_1f
    move-exception p1

    .line 322
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public getPackageProcessAsUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    .line 293
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_24

    .line 295
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p0

    .line 296
    :cond_24
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    :catchall_2f
    move-exception p0

    .line 297
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public getProcessesForUser(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 304
    iget v3, v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    if-ne v3, p1, :cond_e

    iget v3, v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    if-lez v3, :cond_e

    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    if-eqz v3, :cond_e

    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    .line 307
    invoke-interface {v3}, Ltop/niunaijun/blackbox/core/IBActivityThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 308
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 311
    :cond_36
    monitor-exit v0

    return-object v1

    :catchall_38
    move-exception p0

    .line 312
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public getUserIdByCallingPid(I)I
    .registers 3

    .line 326
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter p0

    .line 327
    :try_start_3
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p1, 0x0

    .line 329
    monitor-exit p0

    return p1

    .line 331
    :cond_10
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    .line 332
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public killAllByPackageName(Ljava/lang/String;)V
    .registers 9

    .line 258
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_51

    .line 260
    :try_start_6
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    .line 262
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 263
    iget v5, v4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {v5}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result v5

    if-ne p1, v5, :cond_1b

    .line 265
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    iget v6, v4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v4}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->kill()V

    goto :goto_1b

    .line 270
    :cond_41
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 271
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4e

    .line 273
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_51

    return-void

    :catchall_4e
    move-exception p0

    .line 272
    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw p0

    :catchall_51
    move-exception p0

    .line 273
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public killPackageAsUser(Ljava/lang/String;I)V
    .registers 6

    .line 277
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    .line 279
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_1f

    .line 281
    monitor-exit v0

    return-void

    .line 282
    :cond_1f
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 283
    invoke-virtual {v1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->kill()V

    .line 284
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_27

    .line 286
    :cond_3c
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public onProcessDie(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)V
    .registers 5

    .line 229
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_3
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->kill()V

    .line 231
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    iget v2, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2c

    .line 233
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 235
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    iget v2, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_2c
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->removeProc(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)V

    .line 241
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_48

    .line 242
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->unregisterBinderCaller(I)V

    .line 243
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->get()Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;

    move-result-object p0

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {p0, v0, p1}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->deletePackageNotification(Ljava/lang/String;I)V

    return-void

    :catchall_48
    move-exception p0

    .line 241
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public registerBinderPeers(Ltop/niunaijun/blackbox/core/system/ProcessRecord;I)V
    .registers 6

    if-eqz p1, :cond_30

    .line 346
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    if-eqz v0, :cond_30

    if-gtz p2, :cond_9

    goto :goto_30

    .line 349
    :cond_9
    invoke-virtual {p0, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_30

    .line 353
    :cond_10
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    iget v2, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    .line 354
    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result v1

    .line 353
    invoke-direct {p0, p1, p2, v1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->registerBinderCaller(Ltop/niunaijun/blackbox/core/system/ProcessRecord;II)V

    .line 355
    iget p2, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    if-lez p2, :cond_30

    iget-object p2, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    if-eqz p2, :cond_30

    .line 356
    iget p2, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    iget v1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    iget p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    .line 357
    invoke-static {v1, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    .line 356
    invoke-direct {p0, v0, p2, p1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->registerBinderCaller(Ltop/niunaijun/blackbox/core/system/ProcessRecord;II)V

    :cond_30
    :goto_30
    return-void
.end method

.method public restartAppProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 160
    invoke-virtual {p0, v5}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 162
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->parseBPid(Ljava/lang/String;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 164
    invoke-virtual/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    :cond_1d
    return-void
.end method

.method public startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Ltop/niunaijun/blackbox/core/system/ProcessRecord;
    .registers 15

    const-string v0, "init bUid = "

    .line 59
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isRuntimePackage(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 60
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isVerifiedRuntimePackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 61
    const-string p0, "BProcessManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Blocked unverified runtime package: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 65
    :cond_24
    invoke-static {p3}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->ensureReadyForUser(I)Z

    .line 67
    :cond_27
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_33

    return-object v2

    .line 71
    :cond_33
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result v3

    invoke-static {p3, v3}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result v3

    .line 72
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 73
    :try_start_42
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_55

    .line 76
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_55
    const/4 v6, -0x1

    if-ne p4, v6, :cond_8f

    .line 79
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    if-eqz p4, :cond_6f

    .line 81
    iget-object v7, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    if-eqz v7, :cond_69

    .line 82
    iget-object v7, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    invoke-virtual {v7}, Landroid/os/ConditionVariable;->block()V

    .line 84
    :cond_69
    iget-object v7, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    if-eqz v7, :cond_6f

    .line 85
    monitor-exit v4

    return-object p4

    .line 88
    :cond_6f
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->getUsingBPidL()I

    move-result p4

    .line 89
    const-string v7, "BProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", bPid = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    if-eq p4, v6, :cond_e6

    .line 94
    new-instance v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    invoke-direct {v0, v1, p2}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->uid:I

    .line 96
    iput p4, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    .line 97
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object p4

    invoke-virtual {p4, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p4

    iput p4, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    .line 98
    invoke-virtual {p0, p5, p1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->getBUidByPidOrPackageName(ILjava/lang/String;)I

    move-result p1

    iput p1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->callingBUid:I

    .line 99
    iput p3, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    .line 101
    invoke-interface {v5, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mProcessMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->initAppProcessL(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)Z

    move-result p1

    if-nez p1, :cond_d0

    .line 107
    invoke-interface {v5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_e1

    .line 111
    :cond_d0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    invoke-static {p2}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProcessName(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->getPid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    move-object v2, v0

    .line 113
    :goto_e1
    monitor-exit v4
    :try_end_e2
    .catchall {:try_start_42 .. :try_end_e2} :catchall_ee

    .line 114
    invoke-direct {p0, v2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->registerAllBinderPeers(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)V

    return-object v2

    .line 92
    :cond_e6
    :try_start_e6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No processes available"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_ee
    move-exception p0

    .line 113
    monitor-exit v4
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_ee

    throw p0
.end method

.method public systemReady()V
    .registers 1

    .line 439
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getProcDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.BProcessManagerService.AnonymousClass1 (top.niunaijun.blackbox.core.system.BProcessManagerService$1)
