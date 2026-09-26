.class public Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;
.super Ljava/lang/Object;
.source "NotificationChannelManager.java"


# static fields
.field public static APP_CHANNEL:Landroid/app/NotificationChannel;

.field private static final sManager:Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;->sManager:Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    .line 28
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;->registerAppChannel()V

    :cond_c
    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;
    .registers 1

    .line 23
    sget-object v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;->sManager:Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;

    return-object v0
.end method

.method private registerAppChannel()V
    .registers 5

    .line 34
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 35
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    const-string v3, "black-box-app"

    invoke-direct {v1, v0, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    sput-object v1, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;->APP_CHANNEL:Landroid/app/NotificationChannel;

    const/4 v0, 0x1

    .line 39
    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 40
    sget-object v1, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;->APP_CHANNEL:Landroid/app/NotificationChannel;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 41
    sget-object v1, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;->APP_CHANNEL:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 42
    sget-object v1, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;->APP_CHANNEL:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 43
    sget-object v0, Ltop/niunaijun/blackbox/core/system/notification/NotificationChannelManager;->APP_CHANNEL:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method
