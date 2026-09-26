.class public Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;
.super Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;
.source "BPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/fake/frameworks/BlackManager<",
        "Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final sPackageManager:Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->sPackageManager:Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method private crash(Ljava/lang/Throwable;)V
    .registers 2

    .line 326
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;
    .registers 1

    .line 36
    sget-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->sPackageManager:Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    return-object v0
.end method


# virtual methods
.method public clearPackage(Ljava/lang/String;I)Z
    .registers 4

    .line 246
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 251
    :cond_a
    :try_start_a
    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->clearPackage(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    move-exception p0

    .line 254
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .registers 5

    .line 148
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 150
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 112
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 114
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 229
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 231
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 238
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 240
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackagesAsUser(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;",
            ">;"
        }
    .end annotation

    .line 309
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getInstalledPackagesAsUser(I)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 311
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 8

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0, v0, v3, v2, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 54
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_43

    .line 56
    :cond_28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p0, v0, v3, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    :cond_43
    if-eqz v2, :cond_6e

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_4c

    goto :goto_6e

    .line 67
    :cond_4c
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p1, 0x10000000

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 70
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_6e
    :goto_6e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 121
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 123
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 3

    .line 318
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getPackagesForUid(II)[Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 320
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    .line 322
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .registers 5

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 159
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .registers 5

    .line 139
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 141
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .registers 5

    .line 130
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 132
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getServiceName()Ljava/lang/String;
    .registers 1

    .line 41
    const-string p0, "package_manager"

    return-object p0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 4

    .line 211
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->installExistingPackageAsUser(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p2

    .line 213
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    .line 214
    new-instance p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    invoke-direct {p0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;-><init>()V

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    return-object p0
.end method

.method public installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 5

    .line 202
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 204
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .registers 3

    .line 291
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 293
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isMicrogRuntimeReady(I)Z
    .registers 3

    .line 300
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->isMicrogRuntimeReady(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p1

    .line 302
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public prepareMicrogRuntimeMigration()Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .registers 2

    .line 220
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->prepareMicrogRuntimeMigration()Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    .line 222
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    .line 223
    new-instance p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    invoke-direct {p0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    return-object p0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 175
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 177
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public queryContentProviders(Ljava/lang/String;III)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 193
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 195
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 166
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 168
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 184
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 186
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 6

    .line 85
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 87
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 5

    .line 94
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 96
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .registers 6

    .line 103
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 105
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 6

    .line 76
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p1

    .line 78
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public stopPackage(Ljava/lang/String;I)V
    .registers 3

    .line 261
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->stopPackage(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 263
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .registers 2

    .line 283
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->uninstallPackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 285
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)Z
    .registers 4

    .line 268
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 273
    :cond_a
    :try_start_a
    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->uninstallPackageAsUser(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    move-exception p0

    .line 276
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method
