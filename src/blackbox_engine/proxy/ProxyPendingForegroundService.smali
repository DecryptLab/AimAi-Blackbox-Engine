.class public final Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;
.super Ltop/niunaijun/blackbox/proxy/ProxyPendingService;
.source "ProxyPendingForegroundService.java"


# static fields
.field private static final CHANNEL_SUFFIX:Ljava/lang/String; = ".virtual_services"

.field private static final NOTIFICATION_ID:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    const-string v0, "top.niunaijun.blackbox.proxy.ProxyPendingForegroundService"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    .line 20
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ltop/niunaijun/blackbox/proxy/ProxyPendingService;-><init>()V

    return-void
.end method

.method private createNotificationChannel(Ljava/lang/String;)V
    .registers 5

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    return-void

    .line 61
    :cond_7
    new-instance v0, Landroid/app/NotificationChannel;

    sget v1, Ltop/niunaijun/blackbox/R$string;->black_box_foreground_service_channel_name:I

    .line 63
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    .line 65
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 66
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_25

    .line 70
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void

    .line 68
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NotificationManager is unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startForegroundNotification()V
    .registers 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".virtual_services"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->createNotificationChannel(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v1, :cond_25

    const v1, 0x108007c

    .line 43
    :cond_25
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Ltop/niunaijun/blackbox/R$string;->black_box_foreground_service_notification_title:I

    .line 45
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Ltop/niunaijun/blackbox/R$string;->black_box_foreground_service_notification_text:I

    .line 46
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "service"

    .line 47
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 48
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_5f

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_60

    :cond_5f
    const/4 v1, 0x0

    .line 54
    :goto_60
    sget v2, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->NOTIFICATION_ID:I

    invoke-static {p0, v2, v0, v1}, Landroidx/core/app/ServiceCompat;->startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V

    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .line 25
    invoke-direct {p0}, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->startForegroundNotification()V

    .line 26
    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->readRoute(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_11

    .line 28
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->dispatchPendingService(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;Z)Z

    .line 30
    :cond_11
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->stopForeground(Z)V

    .line 31
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;->stopSelf(I)V

    const/4 p0, 0x2

    return p0
.end method
