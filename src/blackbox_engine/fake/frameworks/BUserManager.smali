.class public Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;
.super Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;
.source "BUserManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/fake/frameworks/BlackManager<",
        "Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final sUserManager:Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->sUserManager:Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;
    .registers 1

    .line 24
    sget-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->sUserManager:Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;

    return-object v0
.end method


# virtual methods
.method public createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;
    .registers 2

    .line 34
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;->createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 36
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public deleteUser(I)V
    .registers 2

    .line 43
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;->deleteUser(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 45
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method protected getServiceName()Ljava/lang/String;
    .registers 1

    .line 29
    const-string p0, "user_manager"

    return-object p0
.end method

.method public getUsers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BUserManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;

    invoke-interface {p0}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;->getUsers()Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 53
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
