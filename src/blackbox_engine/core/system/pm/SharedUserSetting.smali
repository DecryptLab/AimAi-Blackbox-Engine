.class public final Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;
.super Ljava/lang/Object;
.source "SharedUserSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSharedUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field name:Ljava/lang/String;

.field seInfoTargetSdkVersion:I

.field userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->sSharedUsers:Ljava/util/Map;

    .line 113
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->userId:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->name:Ljava/lang/String;

    return-void
.end method

.method public static loadSharedUsers()V
    .registers 4

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 75
    :try_start_4
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSharedUserConf()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/FileUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v1

    .line 76
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 77
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    const-class v1, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 80
    sget-object v2, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->sSharedUsers:Ljava/util/Map;

    monitor-enter v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_34
    .catchall {:try_start_4 .. :try_end_21} :catchall_2f

    .line 81
    :try_start_21
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 82
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 83
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2c

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2c
    move-exception v1

    .line 83
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2f} :catch_34
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v1

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 88
    throw v1

    .line 87
    :catch_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public static saveSharedUsers()V
    .registers 4

    .line 55
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/util/AtomicFile;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSharedUserConf()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 59
    :try_start_e
    sget-object v3, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->sSharedUsers:Ljava/util/Map;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 61
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 62
    invoke-static {v0, v2}, Ltop/niunaijun/blackbox/utils/FileUtils;->writeParcelToOutput(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 63
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_23
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    .line 68
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_21
    move-exception v1

    goto :goto_2e

    :catch_23
    move-exception v3

    .line 65
    :try_start_24
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    .line 68
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 69
    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharedUserSetting{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 98
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.pm.SharedUserSetting.AnonymousClass1 (top.niunaijun.blackbox.core.system.pm.SharedUserSetting$1)
