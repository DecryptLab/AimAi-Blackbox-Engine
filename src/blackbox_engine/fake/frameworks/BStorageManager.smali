.class public Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;
.super Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;
.source "BStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/fake/frameworks/BlackManager<",
        "Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final sStorageManager:Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->sStorageManager:Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;
    .registers 1

    .line 22
    sget-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->sStorageManager:Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    return-object v0
.end method


# virtual methods
.method protected getServiceName()Ljava/lang/String;
    .registers 1

    .line 27
    const-string p0, "storage_manager"

    return-object p0
.end method

.method public getUriForFile(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 41
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 43
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .registers 5

    .line 32
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;

    invoke-interface {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;->getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 34
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    .line 36
    new-array p0, p0, [Landroid/os/storage/StorageVolume;

    return-object p0
.end method
