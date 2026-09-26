.class public Ltop/niunaijun/blackbox/entity/ServiceRecord;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;
    }
.end annotation


# instance fields
.field private mBounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/app/Service;

.field private mStartId:I

.field private rebind:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBounds(Ltop/niunaijun/blackbox/entity/ServiceRecord;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addBinder(Landroid/content/Intent;Landroid/os/IBinder;)V
    .registers 5

    .line 74
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getOrCreateBoundInfo(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    move-result-object p1

    if-nez p1, :cond_15

    .line 77
    new-instance p1, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;-><init>(Ltop/niunaijun/blackbox/entity/ServiceRecord;)V

    .line 78
    iget-object v1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_15
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;->setIBinder(Landroid/os/IBinder;)V

    .line 82
    :try_start_18
    new-instance p1, Ltop/niunaijun/blackbox/entity/ServiceRecord$1;

    invoke-direct {p1, p0, p2, v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord$1;-><init>(Ltop/niunaijun/blackbox/entity/ServiceRecord;Landroid/os/IBinder;Landroid/content/Intent$FilterComparison;)V

    const/4 p0, 0x0

    invoke-interface {p2, p1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p0

    .line 90
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public decreaseConnectionCount(Landroid/content/Intent;)Z
    .registers 3

    .line 100
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 101
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    const/4 p1, 0x1

    if-nez p0, :cond_11

    return p1

    .line 104
    :cond_11
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;->decrementAndGetBindCount()I

    move-result p0

    if-gtz p0, :cond_18

    return p1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public getBinder(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 64
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getOrCreateBoundInfo(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;->getIBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateBoundInfo(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;
    .registers 3

    .line 113
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 114
    iget-object p1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    if-nez p1, :cond_19

    .line 116
    new-instance p1, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;-><init>(Ltop/niunaijun/blackbox/entity/ServiceRecord;)V

    .line 117
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-object p1
.end method

.method public getService()Landroid/app/Service;
    .registers 1

    .line 56
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mService:Landroid/app/Service;

    return-object p0
.end method

.method public getStartId()I
    .registers 1

    .line 48
    iget p0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mStartId:I

    return p0
.end method

.method public hasBinder(Landroid/content/Intent;)Z
    .registers 2

    .line 69
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getOrCreateBoundInfo(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;->getIBinder()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public incrementAndGetBindCount(Landroid/content/Intent;)I
    .registers 2

    .line 95
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getOrCreateBoundInfo(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;->incrementAndGetBindCount()I

    move-result p0

    return p0
.end method

.method public isRebind()Z
    .registers 1

    .line 123
    iget-boolean p0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->rebind:Z

    return p0
.end method

.method public setRebind(Z)V
    .registers 2

    .line 127
    iput-boolean p1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->rebind:Z

    return-void
.end method

.method public setService(Landroid/app/Service;)V
    .registers 2

    .line 60
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mService:Landroid/app/Service;

    return-void
.end method

.method public setStartId(I)V
    .registers 2

    .line 52
    iput p1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mStartId:I

    return-void
.end method

###### Class top.niunaijun.blackbox.entity.ServiceRecord.AnonymousClass1 (top.niunaijun.blackbox.entity.ServiceRecord$1)
