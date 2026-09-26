.class public final Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge;
.super Ljava/lang/Object;
.source "ForegroundServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->-$$Nest$smfrom(Ljava/lang/reflect/Method;)Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;

    move-result-object v0

    .line 20
    invoke-static {}, Ltop/niunaijun/blackbox/proxy/ProxyService;->requireCurrent()Ltop/niunaijun/blackbox/proxy/ProxyService;

    move-result-object v1

    .line 21
    invoke-static {v0}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->-$$Nest$fgetnotificationIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I

    move-result v2

    aget-object v2, p2, v2

    check-cast v2, Landroid/app/Notification;

    .line 23
    invoke-static {v0}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->-$$Nest$fgetcomponentIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I

    move-result v3

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/proxy/ProxyService;->getSystemComponent()Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, p2, v3

    .line 24
    invoke-static {v0}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->-$$Nest$fgettokenIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I

    move-result v3

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/proxy/ProxyService;->requireSystemToken()Landroid/os/IBinder;

    move-result-object v1

    aput-object v1, p2, v3

    if-eqz v2, :cond_53

    .line 27
    invoke-static {v0}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->-$$Nest$fgetnotificationIdIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I

    move-result v1

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 28
    invoke-static {v0}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->-$$Nest$fgetnotificationIdIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I

    move-result v3

    .line 29
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-static {v4, v1, v5}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->getNotificationId(IILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v3

    .line 30
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->get()Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;

    move-result-object v1

    .line 31
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    .line 30
    invoke-virtual {v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/notification/BNotificationManagerService;->prepareNotificationForHost(Landroid/app/Notification;I)V

    .line 34
    :cond_53
    invoke-static {v0}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->-$$Nest$fgetforegroundServiceTypeIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I

    move-result v1

    if-ltz v1, :cond_6f

    .line 35
    invoke-static {v0}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->-$$Nest$fgetforegroundServiceTypeIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I

    move-result v0

    if-eqz v2, :cond_68

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_68

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_69

    :cond_68
    const/4 v1, 0x0

    .line 35
    :goto_69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 40
    :cond_6f
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.proxy.ForegroundServiceBridge.Arguments (top.niunaijun.blackbox.proxy.ForegroundServiceBridge$Arguments)
