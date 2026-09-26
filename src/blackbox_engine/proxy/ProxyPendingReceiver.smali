.class public final Ltop/niunaijun/blackbox/proxy/ProxyPendingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProxyPendingReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 15
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/ProxyPendingReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    .line 16
    invoke-static {p2}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->readRoute(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 17
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    new-instance v1, Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    invoke-direct {v1, p0}, Ltop/niunaijun/blackbox/entity/am/PendingResultData;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {v0, p1, p2, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->dispatchPendingBroadcast(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    return-void

    .line 19
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
