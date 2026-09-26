.class public Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;
.super Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;
.source "BUserManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# static fields
.field private static sService:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;


# instance fields
.field public final mUserLock:Ljava/lang/Object;

.field public final mUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ltop/niunaijun/blackbox/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->sService:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUserLock:Ljava/lang/Object;

    return-void
.end method

.method private createUserLocked(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;
    .registers 4

    .line 103
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;-><init>()V

    .line 104
    iput p1, v0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->id:I

    .line 105
    sget-object v1, Ltop/niunaijun/blackbox/core/system/user/BUserStatus;->ENABLE:Ltop/niunaijun/blackbox/core/system/user/BUserStatus;

    iput-object v1, v0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->status:Ltop/niunaijun/blackbox/core/system/user/BUserStatus;

    .line 106
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    monitor-enter p1

    .line 108
    :try_start_17
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->saveUserInfoLocked()V

    .line 109
    monitor-exit p1

    return-object v0

    :catchall_1c
    move-exception p0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;
    .registers 1

    .line 37
    sget-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->sService:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    return-object v0
.end method

.method private saveUserInfoLocked()V
    .registers 6

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    new-instance v1, Landroidx/core/util/AtomicFile;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getUserInfoConf()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 118
    :try_start_d
    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_4c

    const/4 p0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    :try_start_1e
    invoke-virtual {v1}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 122
    invoke-static {v0, v3}, Ltop/niunaijun/blackbox/utils/FileUtils;->writeParcelToOutput(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 123
    invoke-virtual {v1, v3}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_32
    .catchall {:try_start_1e .. :try_end_28} :catchall_30

    .line 128
    :try_start_28
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v3, v1, p0

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_4c

    goto :goto_40

    :catchall_30
    move-exception v1

    goto :goto_44

    :catch_32
    move-exception v4

    .line 125
    :try_start_33
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    invoke-virtual {v1, v3}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_30

    .line 128
    :try_start_39
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v3, v1, p0

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    .line 131
    :goto_40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 128
    :goto_44
    :try_start_44
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, p0

    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 129
    throw v1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p0

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    throw p0
.end method

.method private scanUserL()V
    .registers 11

    .line 136
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 140
    :try_start_a
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getUserInfoConf()Ljava/io/File;

    move-result-object v5

    .line 141
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_82
    .catchall {:try_start_a .. :try_end_12} :catchall_80

    if-nez v5, :cond_20

    .line 161
    :try_start_14
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v3

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_9d

    return-void

    .line 144
    :cond_20
    :try_start_20
    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getUserInfoConf()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_82
    .catchall {:try_start_20 .. :try_end_29} :catchall_80

    .line 145
    :try_start_29
    invoke-static {v5}, Ltop/niunaijun/blackbox/utils/FileUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 146
    array-length v6, v4

    invoke-virtual {v1, v4, v3, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 147
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    sget-object v4, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3a} :catch_7d
    .catchall {:try_start_29 .. :try_end_3a} :catchall_7a

    if-nez v4, :cond_47

    .line 161
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v5, p0, v3

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_9d

    goto :goto_1e

    .line 152
    :cond_47
    :try_start_47
    iget-object v6, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_7d
    .catchall {:try_start_47 .. :try_end_4a} :catchall_7a

    .line 153
    :try_start_4a
    iget-object v7, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 154
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    .line 155
    iget-object v8, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    iget v9, v7, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 157
    :cond_6b
    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_77

    .line 161
    :try_start_6c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v5, p0, v3

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_9d

    goto :goto_90

    :catchall_77
    move-exception p0

    .line 157
    :try_start_78
    monitor-exit v6
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    throw p0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7a} :catch_7d
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception p0

    move-object v4, v5

    goto :goto_92

    :catch_7d
    move-exception p0

    move-object v4, v5

    goto :goto_83

    :catchall_80
    move-exception p0

    goto :goto_92

    :catch_82
    move-exception p0

    .line 159
    :goto_83
    :try_start_83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_80

    .line 161
    :try_start_86
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v3

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 164
    :goto_90
    monitor-exit v0

    return-void

    .line 161
    :goto_92
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v4, v1, v3

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 163
    throw p0

    :catchall_9d
    move-exception p0

    .line 164
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_86 .. :try_end_9f} :catchall_9d

    throw p0
.end method


# virtual methods
.method public createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 63
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->getUserInfo(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 65
    :cond_f
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->createUserLocked(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public deleteUser(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2d

    .line 92
    :try_start_6
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->deleteUser(I)V

    .line 94
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->saveUserInfoLocked()V

    .line 96
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getUserDir(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 97
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 98
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_2a

    .line 99
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_2d

    return-void

    :catchall_2a
    move-exception p0

    .line 98
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw p0

    :catchall_2d
    move-exception p0

    .line 99
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public exists(I)Z
    .registers 3

    .line 54
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getAllUsers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    monitor-enter v0

    .line 84
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    .line 85
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getUserInfo(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;
    .registers 3

    .line 47
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getUsers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    monitor-enter v0

    .line 72
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->mUsers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    .line 74
    iget v3, v2, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->id:I

    if-ltz v3, :cond_12

    .line 75
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 78
    :cond_26
    monitor-exit v0

    return-object v1

    :catchall_28
    move-exception p0

    .line 79
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public systemReady()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->scanUserL()V

    return-void
.end method
