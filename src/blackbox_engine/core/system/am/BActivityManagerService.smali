.class public Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;
.super Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;
.source "BActivityManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BActivityManagerService"

.field private static final sService:Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;


# instance fields
.field private final mBroadcastManager:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

.field private final mOAuthRedirectRegistry:Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;

.field private final mPendingIntentCodec:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;

.field private final mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

.field private final mUserSpace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltop/niunaijun/blackbox/core/system/am/UserSpace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->sService:Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 71
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    .line 62
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    .line 72
    new-instance v1, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mOAuthRedirectRegistry:Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;

    .line 73
    new-instance v1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mPendingIntentCodec:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;

    .line 74
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->startSystem(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;)Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mBroadcastManager:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    return-void
.end method

.method private findPendingIntentRecord(Landroid/os/IBinder;I)Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;
    .registers 3

    .line 529
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 530
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    monitor-enter p2

    .line 531
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;

    monitor-exit p2

    return-object p0

    :catchall_11
    move-exception p0

    .line 532
    monitor-exit p2
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;
    .registers 1

    .line 68
    sget-object v0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->sService:Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;

    return-object v0
.end method

.method private getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;
    .registers 5

    .line 712
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    monitor-enter v0

    .line 713
    :try_start_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    if-eqz v1, :cond_13

    .line 715
    monitor-exit v0

    return-object v1

    .line 716
    :cond_13
    new-instance v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/am/UserSpace;-><init>()V

    .line 717
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception p0

    .line 719
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private getPendingIntentProxyComponent(I)Landroid/content/ComponentName;
    .registers 4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_27

    const/4 p0, 0x4

    if-eq p1, p0, :cond_24

    const/4 p0, 0x5

    if-ne p1, p0, :cond_f

    .line 555
    const-class p0, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;

    goto :goto_2c

    .line 558
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported PendingIntent type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 552
    :cond_24
    const-class p0, Ltop/niunaijun/blackbox/proxy/ProxyPendingService;

    goto :goto_2c

    .line 546
    :cond_27
    const-class p0, Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity;

    goto :goto_2c

    .line 549
    :cond_2a
    const-class p0, Ltop/niunaijun/blackbox/proxy/ProxyPendingReceiver;

    .line 560
    :goto_2c
    new-instance p1, Landroid/content/ComponentName;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private getResolvedReceivers(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_d

    .line 334
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_d

    .line 335
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    return-object p0
.end method

.method private hasFacebookRedirectActivity(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    const-string p2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    const/high16 p2, 0x10000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_25

    return p2

    .line 113
    :cond_25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    if-nez p3, :cond_39

    move-object p3, v1

    goto :goto_3b

    .line 114
    :cond_39
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_3b
    if-eqz p3, :cond_29

    .line 115
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "com.facebook.CustomTabActivity"

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p3, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v0, :cond_29

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_61

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p3, p3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p3, :cond_29

    :cond_61
    const/4 p0, 0x1

    return p0

    :cond_63
    return p2
.end method

.method private isRoutedPendingIntentType(I)Z
    .registers 3

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eq p1, p0, :cond_f

    if-eq p1, v0, :cond_f

    const/4 p0, 0x4

    if-eq p1, p0, :cond_f

    const/4 p0, 0x5

    if-ne p1, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    return v0
.end method

.method private static projectRunningProcessInfo(Landroid/app/ActivityManager$RunningAppProcessInfo;Ltop/niunaijun/blackbox/core/system/ProcessRecord;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .registers 8

    .line 285
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 289
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 290
    iget v1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    iget p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {v1, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    iput p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 291
    iget p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    iput p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 292
    iget p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 293
    iget p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iput p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 294
    iget p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    iput p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 295
    iget p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    iput p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 296
    iget-object p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    iput-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method private requirePendingIntentCreator(Ljava/lang/String;II)Ltop/niunaijun/blackbox/core/system/ProcessRecord;
    .registers 6

    .line 518
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 519
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    if-ne v1, p3, :cond_2c

    .line 520
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getCallingBUid()I

    move-result v1

    if-ne v1, p2, :cond_2c

    .line 521
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    .line 522
    invoke-virtual {p0, p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_2c

    :cond_2b
    return-object v0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private resolvePendingIntent(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;I)Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;
    .registers 8

    .line 565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_95

    if-nez p2, :cond_f

    goto/16 :goto_95

    .line 570
    :cond_f
    :try_start_f
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mPendingIntentCodec:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->decode(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;)Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;

    move-result-object p1
    :try_end_15
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_15} :catch_8d

    if-eqz p1, :cond_8c

    .line 575
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->type:I

    if-ne v0, p3, :cond_8c

    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->routeAction:Ljava/lang/String;

    .line 576
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8c

    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->proxyComponent:Landroid/content/ComponentName;

    .line 577
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8c

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->packageName:Ljava/lang/String;

    iget v0, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->userId:I

    .line 578
    invoke-virtual {p0, p3, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_8c

    .line 581
    :cond_40
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->intents:[Landroid/content/Intent;

    .line 582
    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->resolvedTypes:[Ljava/lang/String;

    .line 583
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->flags:I

    invoke-static {v0}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->isImmutable(I)Z

    move-result v0

    if-nez v0, :cond_74

    .line 584
    invoke-static {p2}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->readFillIn(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord$FillInData;

    move-result-object v0

    if-nez v0, :cond_57

    .line 588
    invoke-static {p2}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->createExternalFillIn(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_5b

    .line 591
    :cond_57
    iget-object p2, v0, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord$FillInData;->intent:Landroid/content/Intent;

    .line 592
    iget-object v2, v0, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord$FillInData;->resolvedType:Ljava/lang/String;

    :goto_5b
    if-eqz p2, :cond_74

    .line 595
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 596
    aget-object v1, p0, v0

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->flags:I

    invoke-virtual {v1, p2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_74

    if-nez p3, :cond_72

    .line 599
    array-length p2, p0

    new-array p2, p2, [Ljava/lang/String;

    move-object p3, p2

    .line 601
    :cond_72
    aput-object v2, p3, v0

    .line 605
    :cond_74
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x24

    if-lt p2, v0, :cond_86

    .line 606
    array-length p2, p0

    const/4 v0, 0x0

    :goto_7c
    if-ge v0, p2, :cond_86

    aget-object v1, p0, v0

    .line 607
    invoke-virtual {v1}, Landroid/content/Intent;->removeLaunchSecurityProtection()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 610
    :cond_86
    new-instance p2, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;

    invoke-direct {p2, p1, p0, p3}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;-><init>(Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;[Landroid/content/Intent;[Ljava/lang/String;)V

    return-object p2

    :cond_8c
    :goto_8c
    return-object v2

    :catch_8d
    move-exception p0

    .line 572
    const-string p1, "BActivityManagerService"

    const-string p2, "Unable to verify PendingIntent route"

    invoke-static {p1, p2, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_95
    :goto_95
    return-object v2
.end method


# virtual methods
.method public acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 138
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 140
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object p0

    invoke-virtual {p0, v5}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->getUserIdByCallingPid(I)I

    move-result v3

    const/4 v4, -0x1

    .line 138
    invoke-virtual/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 146
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->registerBinderPeers(Ltop/niunaijun/blackbox/core/system/ProcessRecord;I)V

    .line 148
    :try_start_22
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/IBActivityThread;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_29

    return-object p0

    :catchall_29
    move-exception v0

    move-object p0, v0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_30
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create process "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    invoke-direct {p0, p4}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 653
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v0

    .line 654
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 655
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public cancelIntentSender(Landroid/os/IBinder;I)V
    .registers 5

    .line 418
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-eqz p1, :cond_3c

    if-eqz v0, :cond_3c

    .line 419
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    if-eq v1, p2, :cond_15

    goto :goto_3c

    .line 422
    :cond_15
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 423
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    monitor-enter p2

    .line 424
    :try_start_1c
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;

    if-eqz v1, :cond_37

    .line 425
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 426
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_37
    monitor-exit p2

    return-void

    :catchall_39
    move-exception p0

    monitor-exit p2
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_39

    throw p0

    :cond_3c
    :goto_3c
    return-void
.end method

.method public consumeOAuthRedirect(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 94
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_20

    .line 96
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_20

    .line 99
    :cond_19
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mOAuthRedirectRegistry:Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->consume(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_20
    :goto_20
    const/4 p0, -0x2

    return p0
.end method

.method public createPendingIntentData(ILjava/lang/String;Ljava/lang/String;III[Landroid/content/Intent;[Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;
    .registers 22

    move/from16 v4, p4

    move/from16 v5, p5

    .line 383
    invoke-direct {p0, p2, v4, v5}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->requirePendingIntentCreator(Ljava/lang/String;II)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_33

    .line 384
    invoke-direct/range {p0 .. p1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->isRoutedPendingIntentType(I)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_33

    .line 387
    :cond_12
    invoke-direct/range {p0 .. p1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getPendingIntentProxyComponent(I)Landroid/content/ComponentName;

    move-result-object v10

    .line 389
    :try_start_16
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mPendingIntentCodec:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->encode(ILjava/lang/String;Ljava/lang/String;III[Landroid/content/Intent;[Ljava/lang/String;ILandroid/content/ComponentName;)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    move-result-object p0
    :try_end_27
    .catch Ljava/security/GeneralSecurityException; {:try_start_16 .. :try_end_27} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception v0

    goto :goto_2b

    :catch_2a
    move-exception v0

    :goto_2b
    move-object p0, v0

    .line 392
    const-string p1, "BActivityManagerService"

    const-string p2, "Unable to create PendingIntent route"

    invoke-static {p1, p2, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_33
    return-object v11
.end method

.method public dispatchPendingActivity(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;)Z
    .registers 11

    const/4 v0, 0x2

    .line 469
    invoke-direct {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->resolvePendingIntent(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;I)Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_9

    return p2

    .line 474
    :cond_9
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->payload:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;

    iget v0, v0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->userId:I

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 475
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 476
    :try_start_14
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->resolvedTypes:[Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 477
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->intents:[Landroid/content/Intent;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_20

    :cond_1e
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->resolvedTypes:[Ljava/lang/String;

    :goto_20
    move-object v5, v0

    .line 478
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->payload:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;

    iget v3, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->userId:I

    iget-object v4, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->intents:[Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivitiesLocked(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p0

    if-ltz p0, :cond_32

    const/4 p2, 0x1

    :cond_32
    monitor-exit v1

    return p2

    :catchall_34
    move-exception v0

    move-object p0, v0

    .line 480
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_34

    throw p0
.end method

.method public dispatchPendingBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 507
    invoke-direct {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->resolvePendingIntent(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;I)Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;

    move-result-object p1

    if-eqz p1, :cond_1a

    if-nez p3, :cond_a

    goto :goto_1a

    .line 512
    :cond_a
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->intents:[Landroid/content/Intent;

    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->intents:[Landroid/content/Intent;

    array-length v1, v1

    sub-int/2addr v1, v0

    aget-object p2, p2, v1

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->payload:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;

    iget p1, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->userId:I

    invoke-virtual {p0, p2, p3, p1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->scheduleBroadcastReceiver(Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;I)V

    return v0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchPendingService(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Z)Z
    .registers 9

    if-eqz p3, :cond_4

    const/4 v0, 0x5

    goto :goto_5

    :cond_4
    const/4 v0, 0x4

    .line 489
    :goto_5
    invoke-direct {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->resolvePendingIntent(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;I)Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_d

    return p2

    .line 493
    :cond_d
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->intents:[Landroid/content/Intent;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 494
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->resolvedTypes:[Ljava/lang/String;

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_1c

    .line 495
    :cond_18
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->resolvedTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 496
    :goto_1c
    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->payload:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;

    iget v3, v3, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->userId:I

    invoke-direct {p0, v3}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 497
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v3

    .line 498
    :try_start_27
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    iget-object v4, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->intents:[Landroid/content/Intent;

    aget-object v0, v4, v0

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->payload:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;

    iget p1, p1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->userId:I

    invoke-virtual {p0, v0, v2, p3, p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_38

    move p2, v1

    :cond_38
    monitor-exit v3

    return p2

    :catchall_3a
    move-exception p0

    .line 500
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public finishBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingResultData;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mBroadcastManager:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->finishBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingResultData;)V

    return-void
.end method

.method public getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 357
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v0

    .line 358
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 359
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 349
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v0

    .line 350
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 351
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getFlagsForIntentSender(Landroid/os/IBinder;I)I
    .registers 3

    .line 463
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->findPendingIntentRecord(Landroid/os/IBinder;I)Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 464
    :cond_8
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;->flags:I

    return p0
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 365
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v0

    .line 366
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->getLaunchedFromPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 367
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 373
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v0

    .line 374
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->getLaunchedFromUid(Landroid/os/IBinder;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 375
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getPackageForIntentSender(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 434
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    monitor-enter p2

    .line 435
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;

    if-eqz p0, :cond_15

    .line 437
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;->packageName:Ljava/lang/String;

    monitor-exit p2

    return-object p0

    .line 439
    :cond_15
    monitor-exit p2

    const/4 p0, 0x0

    return-object p0

    :catchall_18
    move-exception p0

    monitor-exit p2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public getRunningAppProcesses(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningAppProcessInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    new-instance p0, Ltop/niunaijun/blackbox/entity/am/RunningAppProcessInfo;

    invoke-direct {p0}, Ltop/niunaijun/blackbox/entity/am/RunningAppProcessInfo;-><init>()V

    .line 241
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object p1

    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_15

    goto/16 :goto_a1

    .line 247
    :cond_15
    invoke-virtual {p2}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isRuntimePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 249
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isVerifiedRuntimePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-eqz v1, :cond_31

    .line 251
    iget p2, p2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->getProcessesForUser(I)Ljava/util/List;

    move-result-object p1

    goto :goto_37

    .line 252
    :cond_31
    iget p2, p2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {p1, v0, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->getPackageProcessAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 255
    :goto_37
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "activity"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    .line 256
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_6c

    .line 259
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6c

    .line 261
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_54
    :goto_54
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v3, :cond_54

    .line 263
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 269
    :cond_6c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_70
    :goto_70
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    if-nez v1, :cond_89

    .line 270
    invoke-virtual {p2}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    goto :goto_70

    .line 273
    :cond_89
    iget v3, p2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    .line 274
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v3, :cond_70

    .line 276
    iget-object v4, p0, Ltop/niunaijun/blackbox/entity/am/RunningAppProcessInfo;->mAppProcessInfoList:Ljava/util/List;

    .line 277
    invoke-static {v3, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->projectRunningProcessInfo(Landroid/app/ActivityManager$RunningAppProcessInfo;Ltop/niunaijun/blackbox/core/system/ProcessRecord;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object p2

    .line 276
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_a1
    :goto_a1
    return-object p0
.end method

.method public getRunningServices(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningServiceInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 303
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v0

    .line 304
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getRunningServiceInfo(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningServiceInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 305
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getTypeForIntentSender(Landroid/os/IBinder;I)I
    .registers 3

    .line 457
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->findPendingIntentRecord(Landroid/os/IBinder;I)Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 458
    :cond_8
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;->type:I

    return p0
.end method

.method public getUidForIntentSender(Landroid/os/IBinder;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 446
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    monitor-enter p2

    .line 447
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;

    if-eqz p0, :cond_15

    .line 449
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;->uid:I

    monitor-exit p2

    return p0

    .line 451
    :cond_15
    monitor-exit p2

    const/4 p0, -0x1

    return p0

    :catchall_18
    move-exception p0

    monitor-exit p2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/AppConfig;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    const/4 v4, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;III)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 679
    :cond_14
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getClientConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 188
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 192
    :cond_f
    check-cast p3, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 193
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 194
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 195
    :try_start_1a
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    invoke-virtual {p0, v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->onActivityCreated(Ltop/niunaijun/blackbox/core/system/ProcessRecord;ILandroid/os/IBinder;Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V

    .line 196
    monitor-exit v1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p0
.end method

.method public onActivityDestroyed(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 215
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 219
    :cond_f
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 220
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 221
    :try_start_18
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    iget v0, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {p0, v0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->onActivityDestroyed(ILandroid/os/IBinder;)V

    .line 222
    monitor-exit v1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public onActivityResumed(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 202
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 206
    :cond_f
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 207
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 208
    :try_start_18
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    iget v0, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {p0, v0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->onActivityResumed(ILandroid/os/IBinder;)V

    .line 209
    monitor-exit v1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public onFinishActivity(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 228
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 232
    :cond_f
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 233
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 234
    :try_start_18
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    iget v0, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {p0, v0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->onFinishActivity(ILandroid/os/IBinder;)V

    .line 235
    monitor-exit v1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public onServiceDestroy(Landroid/content/Intent;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 637
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v0

    .line 638
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->onServiceDestroy(Landroid/content/Intent;I)V

    .line 639
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public onServiceUnbind(Landroid/content/Intent;I)Ltop/niunaijun/blackbox/entity/UnbindRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 629
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v0

    .line 630
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->onServiceUnbind(Landroid/content/Intent;I)Ltop/niunaijun/blackbox/entity/UnbindRecord;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 631
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-direct {p0, p3}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 180
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v0

    .line 181
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 182
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public registerIntentSender(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 8

    .line 400
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    .line 401
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 400
    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-eqz p1, :cond_45

    if-eqz v0, :cond_45

    .line 402
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    if-ne v1, p5, :cond_45

    .line 404
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    .line 405
    invoke-virtual {v1, p2, p5}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_45

    .line 408
    :cond_27
    invoke-direct {p0, p5}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 409
    iget-object p5, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    monitor-enter p5

    .line 410
    :try_start_2e
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mIntentSenderRecords:Ljava/util/Map;

    new-instance v1, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;

    .line 411
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getCallingBUid()I

    move-result v0

    .line 412
    invoke-static {p4}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->normalizeKeyFlags(I)I

    move-result p4

    invoke-direct {v1, v0, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;-><init>(ILjava/lang/String;II)V

    .line 410
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    monitor-exit p5

    return-void

    :catchall_42
    move-exception p0

    monitor-exit p5
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_42

    throw p0

    :cond_45
    :goto_45
    return-void
.end method

.method public registerOAuthRedirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 81
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    if-ne v1, p4, :cond_38

    .line 83
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 84
    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->isCallbackForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    .line 85
    invoke-virtual {v0, p1, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 86
    invoke-direct {p0, p1, p2, p4}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->hasFacebookRedirectActivity(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_31

    goto :goto_38

    .line 89
    :cond_31
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mOAuthRedirectRegistry:Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;

    invoke-virtual {p0, p1, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->register(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return p0
.end method

.method public restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->restartAppProcess(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public scheduleBroadcastReceiver(Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 311
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getResolvedReceivers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 314
    invoke-virtual {p2}, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->build()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 315
    const-string p0, "BActivityManagerService"

    const-string p1, "scheduleBroadcastReceiver empty"

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_24
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mBroadcastManager:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    invoke-virtual {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->sendBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingResultData;)V

    .line 319
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2d
    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 320
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p3}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 322
    new-instance v2, Ltop/niunaijun/blackbox/entity/am/ReceiverData;

    invoke-direct {v2}, Ltop/niunaijun/blackbox/entity/am/ReceiverData;-><init>()V

    .line 323
    iput-object p1, v2, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->intent:Landroid/content/Intent;

    .line 324
    iput-object v0, v2, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 325
    iput-object p2, v2, Ltop/niunaijun/blackbox/entity/am/ReceiverData;->data:Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    .line 326
    iget-object v0, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    invoke-interface {v0, v2}, Ltop/niunaijun/blackbox/core/IBActivityThread;->scheduleReceiver(Ltop/niunaijun/blackbox/entity/am/ReceiverData;)V

    goto :goto_2d

    :cond_58
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 159
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getResolvedReceivers(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ActivityInfo;

    .line 160
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_2d

    goto :goto_12

    .line 165
    :cond_2d
    :try_start_2d
    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    invoke-interface {p2}, Ltop/niunaijun/blackbox/core/IBActivityThread;->bindApplication()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_12

    :catch_33
    move-exception p2

    .line 167
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    .line 170
    :cond_38
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 171
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 172
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 706
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 707
    :try_start_7
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivitiesLocked(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_14
    move-exception v0

    move-object p0, v0

    .line 708
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_14

    throw p0
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .registers 14

    .line 689
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 690
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 691
    :try_start_7
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v4, p1

    move v3, p2

    invoke-virtual/range {v2 .. v10}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 692
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_16

    throw p0
.end method

.method public startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    invoke-direct/range {p0 .. p1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 698
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 699
    :try_start_7
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_1b
    move-exception v0

    move-object p0, v0

    .line 700
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1b

    throw p0
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;
    .registers 6

    .line 129
    invoke-direct {p0, p4}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 130
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v0

    .line 131
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 132
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 5

    .line 644
    invoke-direct {p0, p3}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 645
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v0

    .line 646
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->stopService(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 647
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    invoke-direct {p0, p4}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 669
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v0

    .line 670
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 671
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public systemReady()V
    .registers 1

    .line 724
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mBroadcastManager:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;->startup()V

    return-void
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p0

    .line 661
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v0

    .line 662
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->unbindService(Landroid/os/IBinder;I)V

    .line 663
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method

###### Class top.niunaijun.blackbox.core.system.am.BActivityManagerService.PendingDispatch (top.niunaijun.blackbox.core.system.am.BActivityManagerService$PendingDispatch)
