.class public Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;
.super Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub;
.source "BStorageManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# static fields
.field private static final sService:Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;->sService:Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;
    .registers 1

    .line 32
    sget-object v0, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;->sService:Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;

    return-object v0
.end method


# virtual methods
.method public getUriForFile(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyFileProvider()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackbox/fake/provider/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lblack/android/os/storage/BRStorageManager;->get()Lblack/android/os/storage/StorageManagerStatic;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Lblack/android/os/storage/StorageManagerStatic;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_d

    return-object p2

    .line 44
    :cond_d
    :try_start_d
    invoke-static {}, Lblack/android/os/storage/BRStorageManager;->get()Lblack/android/os/storage/StorageManagerStatic;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p3

    invoke-static {p3}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result p3

    invoke-interface {p0, p3, p1}, Lblack/android/os/storage/StorageManagerStatic;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object p0

    if-nez p0, :cond_20

    return-object p2

    .line 47
    :cond_20
    array-length p3, p0

    :goto_21
    if-ge p1, p3, :cond_44

    aget-object v0, p0, p1

    .line 48
    invoke-static {v0}, Lblack/android/os/storage/BRStorageVolume;->get(Ljava/lang/Object;)Lblack/android/os/storage/StorageVolumeContext;

    move-result-object v1

    invoke-static {p4}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Lblack/android/os/storage/StorageVolumeContext;->_set_mPath(Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 50
    invoke-static {v0}, Lblack/android/os/storage/BRStorageVolume;->get(Ljava/lang/Object;)Lblack/android/os/storage/StorageVolumeContext;

    move-result-object v0

    invoke-static {p4}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lblack/android/os/storage/StorageVolumeContext;->_set_mInternalPath(Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_41} :catch_45

    :cond_41
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_44
    return-object p0

    :catch_45
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
