.class public Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;
.super Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;
.source "BJobManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/fake/frameworks/BlackManager<",
        "Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final sJobManager:Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->sJobManager:Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;
    .registers 1

    .line 23
    sget-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->sJobManager:Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;I)I
    .registers 4

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService;->cancel(Ljava/lang/String;II)I

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 61
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public cancelAll(Ljava/lang/String;)V
    .registers 3

    .line 51
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService;->cancelAll(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 53
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method protected getServiceName()Ljava/lang/String;
    .registers 1

    .line 28
    const-string p0, "job_manager"

    return-object p0
.end method

.method public queryJobRecord(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/JobRecord;
    .registers 4

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService;->queryJobRecord(Ljava/lang/String;II)Ltop/niunaijun/blackbox/entity/JobRecord;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 44
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public schedule(Landroid/app/job/JobInfo;)Landroid/app/job/JobInfo;
    .registers 3

    .line 33
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/am/IBJobManagerService;->schedule(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 35
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
