.class public Ltop/niunaijun/blackbox/proxy/ProxyPendingService;
.super Landroid/app/Service;
.source "ProxyPendingService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .line 22
    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->readRoute(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 24
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->dispatchPendingService(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Z)Z

    .line 26
    :cond_e
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/proxy/ProxyPendingService;->stopSelf(I)V

    const/4 p0, 0x2

    return p0
.end method
