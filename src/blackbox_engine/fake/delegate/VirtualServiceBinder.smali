.class final Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;
.super Landroid/os/Binder;
.source "VirtualServiceBinder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualServiceBinder"

.field private static final sBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final sParcelFailureLogged:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mCallingUid:I

.field private final mTarget:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->sBinders:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->sParcelFailureLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->mTarget:Landroid/os/IBinder;

    .line 28
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v1

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->mCallingUid:I

    .line 30
    :try_start_13
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 32
    const-string p1, "VirtualServiceBinder"

    const-string v0, "Unable to read service descriptor"

    invoke-static {p1, v0, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$wrap$0(Landroid/os/IBinder;Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;)V
    .registers 2

    .line 48
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->remove(Landroid/os/IBinder;Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;)V

    return-void
.end method

.method private static remove(Landroid/os/IBinder;Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;)V
    .registers 4

    .line 57
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->sBinders:Ljava/util/Map;

    monitor-enter v0

    .line 58
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_c

    .line 59
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method static wrap(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 5

    if-eqz p0, :cond_2c

    .line 37
    instance-of v0, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;

    if-eqz v0, :cond_7

    goto :goto_2c

    .line 40
    :cond_7
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->sBinders:Ljava/util/Map;

    monitor-enter v0

    .line 41
    :try_start_a
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;

    if-eqz v1, :cond_14

    .line 43
    monitor-exit v0

    return-object v1

    .line 45
    :cond_14
    new-instance v1, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;

    invoke-direct {v1, p0}, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;-><init>(Landroid/os/IBinder;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_29

    .line 48
    :try_start_19
    new-instance v2, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;)V

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_29

    .line 51
    :catch_22
    :try_start_22
    sget-object v2, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->sBinders:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit v0

    return-object v1

    :catchall_29
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw p0

    :cond_2c
    :goto_2c
    return-object p0
.end method


# virtual methods
.method public isBinderAlive()Z
    .registers 1

    .line 76
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->mTarget:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    return p0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 3

    .line 82
    :try_start_0
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->mTarget:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 84
    :catch_6
    invoke-interface {p1}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    return-void
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    :try_start_0
    invoke-static {p2}, Lblack/android/os/BRParcel;->getWithException(Ljava/lang/Object;)Lblack/android/os/ParcelContext;

    move-result-object v0

    iget v1, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->mCallingUid:I

    invoke-interface {v0, v1}, Lblack/android/os/ParcelContext;->replaceCallingWorkSourceUid(I)Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_1c

    :catchall_a
    move-exception v0

    .line 99
    sget-object v1, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->sParcelFailureLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 100
    const-string v1, "VirtualServiceBinder"

    const-string v2, "Unable to attach virtual Binder identity"

    invoke-static {v1, v2, v0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :cond_1c
    :goto_1c
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->mTarget:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

.method public pingBinder()Z
    .registers 1

    .line 71
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->mTarget:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->pingBinder()Z

    move-result p0

    return p0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 3

    .line 90
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->mTarget:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result p0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.delegate.VirtualServiceBinder$$ExternalSyntheticLambda0 (top.niunaijun.blackbox.fake.delegate.VirtualServiceBinder$$ExternalSyntheticLambda0)
