.class public Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;
.super Landroid/app/IServiceConnection$Stub;
.source "ServiceConnectionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IServiceConnection"

.field private static final PARCEL_BOOLEAN_BYTES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ServiceConnectionDelegate"

.field private static final TRANSACTION_CONNECTED:I = 0x1

.field private static final sServiceConnectDelegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mConn:Landroid/app/IServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsServiceConnectDelegate()Ljava/util/Map;
    .registers 1

    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    .line 37
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    .line 38
    iput-object p2, p0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static createProxy(Landroid/app/IServiceConnection;Landroid/content/Intent;)Landroid/app/IServiceConnection;
    .registers 5

    .line 46
    invoke-interface {p0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 47
    sget-object v1, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;

    if-nez v1, :cond_2a

    .line 50
    :try_start_e
    new-instance v1, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$1;

    invoke-direct {v1, v0}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$1;-><init>(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v1

    .line 58
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 60
    :goto_1c
    new-instance v1, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;-><init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V

    .line 61
    sget-object p0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object v1
.end method

.method private forwardConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/os/IBinder;ZLtop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 128
    :try_start_4
    const-string v1, "android.app.IServiceConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->getTargetComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->writeComponentName(Landroid/os/Parcel;Landroid/content/ComponentName;)V

    .line 130
    invoke-static {p2}, Ltop/niunaijun/blackbox/fake/delegate/VirtualServiceBinder;->wrap(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 131
    sget-object p1, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->FOUR_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    if-ne p5, p1, :cond_1e

    .line 132
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 134
    :cond_1e
    sget-object p1, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->TWO_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    if-eq p5, p1, :cond_25

    .line 135
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    :cond_25
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    invoke-interface {p0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_3f

    if-eqz p0, :cond_37

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 139
    :cond_37
    :try_start_37
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "IServiceConnection callback was rejected"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p0

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw p0
.end method

.method public static getDelegate(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;
    .registers 2

    .line 42
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->sServiceConnectDelegate:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;

    return-object p0
.end method

.method private getTargetComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    .line 147
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->mComponentName:Landroid/content/ComponentName;

    if-nez p0, :cond_5

    return-object p1

    :cond_5
    return-object p0
.end method

.method private handleConnectedTransaction(Landroid/os/Parcel;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const-string v0, "android.app.IServiceConnection"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->readComponentName(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v5, 0x0

    .line 102
    sget-object v6, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->TWO_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->forwardConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/os/IBinder;ZLtop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;)V

    return-void

    :cond_1c
    move-object v1, p0

    const/4 p0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_35

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    move v5, p0

    goto :goto_2b

    :cond_2a
    move v5, v4

    .line 107
    :goto_2b
    invoke-static {p1}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->requireFullyConsumed(Landroid/os/Parcel;)V

    const/4 v4, 0x0

    .line 108
    sget-object v6, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->THREE_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    invoke-direct/range {v1 .. v6}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->forwardConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/os/IBinder;ZLtop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;)V

    return-void

    :cond_35
    const/16 v6, 0x8

    .line 111
    const-string v7, "Unsupported IServiceConnection callback layout"

    if-lt v0, v6, :cond_5e

    move v0, v4

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-ne v6, v5, :cond_58

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4e

    move v5, p0

    goto :goto_4f

    :cond_4e
    move v5, v0

    .line 120
    :goto_4f
    invoke-static {p1}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->requireFullyConsumed(Landroid/os/Parcel;)V

    .line 121
    sget-object v6, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->FOUR_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    invoke-direct/range {v1 .. v6}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->forwardConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/os/IBinder;ZLtop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;)V

    return-void

    .line 117
    :cond_58
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v7}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_5e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v7}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readComponentName(Landroid/os/Parcel;)Landroid/content/ComponentName;
    .registers 2

    .line 151
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0
.end method

.method private static requireFullyConsumed(Landroid/os/Parcel;)V
    .registers 2

    .line 164
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 165
    :cond_7
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Trailing data in IServiceConnection callback"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeComponentName(Landroid/os/Parcel;Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 156
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    const/4 v1, 0x1

    .line 159
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {p1, p0, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 68
    sget-object v5, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->TWO_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->forwardConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/os/IBinder;ZLtop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;)V

    return-void
.end method

.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 72
    sget-object v5, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->THREE_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->forwardConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/os/IBinder;ZLtop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IServiceConnection$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 87
    :cond_8
    :try_start_8
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->handleConnectedTransaction(Landroid/os/Parcel;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception p0

    .line 90
    const-string p1, "ServiceConnectionDelegate"

    const-string p2, "Rejected malformed IServiceConnection callback"

    invoke-static {p1, p2, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.delegate.ServiceConnectionDelegate.AnonymousClass1 (top.niunaijun.blackbox.fake.delegate.ServiceConnectionDelegate$1)
