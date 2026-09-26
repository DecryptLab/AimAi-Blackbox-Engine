.class public Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;
.super Landroid/os/Binder;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningServiceRecord"
.end annotation


# instance fields
.field private final mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIntent:Landroid/content/Intent;

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final mStartId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBindCount(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntent(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceInfo(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Landroid/content/pm/ServiceInfo;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartId(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mStartId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIntent(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceInfo(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;Landroid/content/pm/ServiceInfo;)V
    .registers 2

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 299
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 300
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mStartId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 301
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public incrementAndGetStartId()I
    .registers 1

    .line 306
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mStartId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method

.method public incrementBindCountAndGet()I
    .registers 1

    .line 310
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method
