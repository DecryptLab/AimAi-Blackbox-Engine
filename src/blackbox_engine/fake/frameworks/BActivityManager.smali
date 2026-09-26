.class public Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;
.super Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;
.source "BActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/fake/frameworks/BlackManager<",
        "Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final sActivityManager:Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->sActivityManager:Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;
    .registers 1

    .line 34
    sget-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->sActivityManager:Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    return-object v0
.end method


# virtual methods
.method public acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .registers 2

    .line 172
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 174
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 5

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 131
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public cancelIntentSender(Landroid/os/IBinder;)V
    .registers 3

    .line 328
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->cancelIntentSender(Landroid/os/IBinder;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 330
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to cancel PendingIntent"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public consumeOAuthRedirect(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 70
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->consumeOAuthRedirect(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 72
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x2

    return p0
.end method

.method public createPendingIntentData(ILjava/lang/String;Ljava/lang/String;II[Landroid/content/Intent;[Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;
    .registers 19

    .line 310
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    .line 311
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v5

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 310
    invoke-interface/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->createPendingIntentData(ILjava/lang/String;Ljava/lang/String;III[Landroid/content/Intent;[Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    move-result-object p0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception v0

    move-object p0, v0

    .line 313
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to create PendingIntent route"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public dispatchPendingActivity(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;)Z
    .registers 3

    .line 370
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->dispatchPendingActivity(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchPendingBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;)Z
    .registers 4

    .line 388
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->dispatchPendingBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchPendingService(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Z)Z
    .registers 4

    .line 379
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->dispatchPendingService(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Z)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    const/4 p0, 0x0

    return p0
.end method

.method public finishBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingResultData;)V
    .registers 2

    .line 263
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->finishBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingResultData;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 265
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;
    .registers 3

    .line 280
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 282
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 3

    .line 271
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->getCallingPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 273
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlagsForIntentSender(Landroid/os/IBinder;)I
    .registers 3

    .line 362
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->getFlagsForIntentSender(Landroid/os/IBinder;I)I

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const/4 p0, 0x0

    return p0
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;I)Ljava/lang/String;
    .registers 3

    .line 289
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->getLaunchedFromPackage(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 291
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;I)I
    .registers 3

    .line 298
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->getLaunchedFromUid(Landroid/os/IBinder;I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 300
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public getPackageForIntentSender(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3

    .line 336
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->getPackageForIntentSender(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 338
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunningAppProcesses(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningAppProcessInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->getRunningAppProcesses(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningAppProcessInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 243
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunningServices(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningServiceInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->getRunningServices(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningServiceInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 252
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getServiceName()Ljava/lang/String;
    .registers 1

    .line 39
    const-string p0, "activity_manager"

    return-object p0
.end method

.method public getTypeForIntentSender(Landroid/os/IBinder;)I
    .registers 3

    .line 354
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->getTypeForIntentSender(Landroid/os/IBinder;I)I

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const/4 p0, 0x0

    return p0
.end method

.method public getUidForIntentSender(Landroid/os/IBinder;)I
    .registers 3

    .line 345
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->getUidForIntentSender(Landroid/os/IBinder;I)I

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 347
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/AppConfig;
    .registers 4

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->initProcess(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 46
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4

    .line 199
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 201
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/os/IBinder;)V
    .registers 2

    .line 225
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onActivityDestroyed(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 227
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onActivityResumed(Landroid/os/IBinder;)V
    .registers 4

    .line 208
    :try_start_0
    const-string v0, "com.tencent.mm"

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 209
    invoke-static {p1}, Ltop/niunaijun/blackbox/app/BActivityThread;->getActivityByToken(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 211
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1d

    .line 217
    :catchall_1d
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onActivityResumed(Landroid/os/IBinder;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 219
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2b
    return-void
.end method

.method public onFinishActivity(Landroid/os/IBinder;)V
    .registers 2

    .line 233
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onFinishActivity(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 235
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceDestroy(Landroid/content/Intent;I)V
    .registers 3

    .line 164
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onServiceDestroy(Landroid/content/Intent;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 166
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceUnbind(Landroid/content/Intent;I)Ltop/niunaijun/blackbox/entity/UnbindRecord;
    .registers 3

    .line 155
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onServiceUnbind(Landroid/content/Intent;I)Ltop/niunaijun/blackbox/entity/UnbindRecord;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 157
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .registers 4

    .line 190
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 192
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerIntentSender(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 11

    .line 319
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    .line 320
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 319
    invoke-interface/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->registerIntentSender(Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    move-object p0, v0

    .line 322
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to register PendingIntent"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public registerOAuthRedirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 61
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->registerOAuthRedirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 63
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 53
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 55
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public scheduleBroadcastReceiver(Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->scheduleBroadcastReceiver(Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;I)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4

    .line 181
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 183
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .registers 12

    .line 102
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception v0

    move-object p0, v0

    .line 104
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public startActivity(Landroid/content/Intent;I)Z
    .registers 4

    .line 78
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 83
    :cond_a
    :try_start_a
    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->startActivity(Landroid/content/Intent;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    move-exception p0

    .line 86
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .registers 18

    .line 93
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception v0

    move-object p0, v0

    .line 95
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;
    .registers 5

    .line 111
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 113
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 4

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->stopService(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 122
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z
    .registers 5

    .line 146
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 148
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .registers 3

    .line 138
    :try_start_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    invoke-interface {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->unbindService(Landroid/os/IBinder;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 140
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
