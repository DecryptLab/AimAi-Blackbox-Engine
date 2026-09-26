.class public Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;
.super Ljava/lang/Object;
.source "BlackBoxSystem.java"


# static fields
.field private static final isStartup:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sBlackBoxSystem:Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;


# instance fields
.field private final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/ISystemService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->isStartup:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->mServices:Ljava/util/List;

    return-void
.end method

.method public static getSystem()Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;
    .registers 2

    .line 22
    sget-object v0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->sBlackBoxSystem:Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    if-nez v0, :cond_17

    .line 23
    const-class v0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    monitor-enter v0

    .line 24
    :try_start_7
    sget-object v1, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->sBlackBoxSystem:Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    if-nez v1, :cond_12

    .line 25
    new-instance v1, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;-><init>()V

    sput-object v1, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->sBlackBoxSystem:Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    .line 27
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 29
    :cond_17
    :goto_17
    sget-object v0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->sBlackBoxSystem:Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    return-object v0
.end method


# virtual methods
.method public startup()V
    .registers 3

    .line 33
    sget-object v0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->isStartup:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6b

    .line 35
    :cond_a
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->load()V

    .line 37
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->mServices:Ljava/util/List;

    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->mServices:Ljava/util/List;

    invoke-static {}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->get()Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->mServices:Ljava/util/List;

    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->get()Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->mServices:Ljava/util/List;

    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;->get()Ltop/niunaijun/blackbox/core/system/am/BJobManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->mServices:Ljava/util/List;

    invoke-static {}, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;->get()Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->mServices:Ljava/util/List;

    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->mServices:Ljava/util/List;

    invoke-static {}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->get()Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->mServices:Ljava/util/List;

    invoke-static {}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->get()Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->mServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/ISystemService;

    .line 47
    invoke-interface {v0}, Ltop/niunaijun/blackbox/core/system/ISystemService;->systemReady()V

    goto :goto_5b

    :cond_6b
    :goto_6b
    return-void
.end method
