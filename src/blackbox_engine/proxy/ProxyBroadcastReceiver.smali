.class public Ltop/niunaijun/blackbox/proxy/ProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProxyBroadcastReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProxyBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 21
    invoke-static {p2}, Ltop/niunaijun/blackbox/proxy/record/ProxyBroadcastRecord;->create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyBroadcastRecord;

    move-result-object p1

    .line 22
    iget-object p2, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyBroadcastRecord;->mIntent:Landroid/content/Intent;

    if-nez p2, :cond_10

    return-void

    .line 25
    :cond_10
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/ProxyBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    .line 27
    :try_start_14
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p2

    iget-object v0, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyBroadcastRecord;->mIntent:Landroid/content/Intent;

    new-instance v1, Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    invoke-direct {v1, p0}, Ltop/niunaijun/blackbox/entity/am/PendingResultData;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    iget p1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyBroadcastRecord;->mUserId:I

    invoke-virtual {p2, v0, v1, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->scheduleBroadcastReceiver(Landroid/content/Intent;Ltop/niunaijun/blackbox/entity/am/PendingResultData;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_24} :catch_25

    return-void

    .line 29
    :catch_25
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
