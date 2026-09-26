.class public abstract Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;
.super Ljava/lang/Object;
.source "BlackManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Service::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BlackManager"


# instance fields
.field private volatile mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TService;"
        }
    .end annotation
.end field

.field private final mServiceLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$05o16GHppLwJUxdh8Ycgt85zlng(Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->lambda$getService$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private clearService(Landroid/os/IBinder;)V
    .registers 4

    .line 74
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_10

    .line 76
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_10

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    .line 79
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private getTClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TService;>;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method private isAlive(Landroid/os/IInterface;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TService;)Z"
        }
    .end annotation

    if-eqz p1, :cond_14

    .line 70
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getService$0(Landroid/os/IBinder;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->clearService(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public getService()Landroid/os/IInterface;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TService;"
        }
    .end annotation

    const-string v0, "Unable to create service interface: "

    const-string v1, "Service unavailable: "

    const-string v2, "Unable to connect service: "

    .line 24
    iget-object v3, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    .line 25
    invoke-direct {p0, v3}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->isAlive(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_f

    return-object v3

    .line 29
    :cond_f
    iget-object v3, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 30
    :try_start_12
    iget-object v4, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    .line 31
    invoke-direct {p0, v4}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->isAlive(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 32
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_dc

    return-object v4

    :cond_1c
    const/4 v4, 0x0

    .line 36
    :try_start_1d
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v5

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltop/niunaijun/blackbox/BlackBoxCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_a7

    .line 37
    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_32

    goto :goto_a7

    .line 43
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->getTClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "$Stub"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/Reflector;->on(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v1

    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 44
    invoke-virtual {v1, v6, v7}, Ltop/niunaijun/blackbox/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v1

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 45
    invoke-virtual {v1, v5}, Ltop/niunaijun/blackbox/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    if-eqz v1, :cond_8d

    .line 46
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_72

    goto :goto_8d

    .line 52
    :cond_72
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    iput-object v1, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    .line 55
    new-instance v5, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;Landroid/os/IBinder;)V

    invoke-interface {v0, v5, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 56
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_8b

    .line 57
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->clearService(Landroid/os/IBinder;)V
    :try_end_89
    .catchall {:try_start_1d .. :try_end_89} :catchall_c1

    .line 58
    :try_start_89
    monitor-exit v3

    return-object v4

    .line 60
    :cond_8b
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_dc

    return-object v1

    .line 47
    :cond_8d
    :goto_8d
    :try_start_8d
    const-string v1, "BlackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object v4, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;
    :try_end_a5
    .catchall {:try_start_8d .. :try_end_a5} :catchall_c1

    .line 49
    :try_start_a5
    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_dc

    return-object v4

    .line 38
    :cond_a7
    :goto_a7
    :try_start_a7
    const-string v0, "BlackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object v4, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;
    :try_end_bf
    .catchall {:try_start_a7 .. :try_end_bf} :catchall_c1

    .line 40
    :try_start_bf
    monitor-exit v3

    return-object v4

    :catchall_c1
    move-exception v0

    .line 62
    iput-object v4, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->mService:Landroid/os/IInterface;

    .line 63
    const-string v1, "BlackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->getServiceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    monitor-exit v3

    return-object v4

    :catchall_dc
    move-exception p0

    .line 66
    monitor-exit v3
    :try_end_de
    .catchall {:try_start_bf .. :try_end_de} :catchall_dc

    throw p0
.end method

.method protected abstract getServiceName()Ljava/lang/String;
.end method

###### Class top.niunaijun.blackbox.fake.frameworks.BlackManager$$ExternalSyntheticLambda0 (top.niunaijun.blackbox.fake.frameworks.BlackManager$$ExternalSyntheticLambda0)
