.class public Ltop/niunaijun/blackbox/fake/service/IStorageManagerProxy$GetVolumeList;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IStorageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IStorageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetVolumeList"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getVolumeList"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p3, :cond_1b

    .line 58
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBStorageManager()Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object p0

    if-nez p0, :cond_1a

    .line 60
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_1a
    return-object p0

    .line 65
    :cond_1b
    :try_start_1b
    aget-object p0, p3, p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    .line 66
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 67
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 68
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBStorageManager()Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    move-result-object v2

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v2, p0, v0, v1, v3}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object p0

    if-nez p0, :cond_43

    .line 70
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_43
    .catchall {:try_start_1b .. :try_end_43} :catchall_44

    :cond_43
    return-object p0

    .line 74
    :catchall_44
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IStorageManagerProxy.mkdirs (top.niunaijun.blackbox.fake.service.IStorageManagerProxy$mkdirs)
