.class public Ltop/niunaijun/blackbox/proxy/ProxyService;
.super Landroid/app/Service;
.source "ProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/proxy/ProxyService$P49;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P48;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P47;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P46;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P45;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P44;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P43;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P42;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P41;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P40;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P39;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P38;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P37;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P36;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P35;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P34;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P33;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P32;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P31;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P30;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P29;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P28;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P27;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P26;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P25;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P24;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P23;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P22;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P21;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P20;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P19;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P18;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P17;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P16;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P15;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P14;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P13;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P12;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P11;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P10;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P9;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P8;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P7;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P6;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P5;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P4;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P3;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P2;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P1;,
        Ltop/niunaijun/blackbox/proxy/ProxyService$P0;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StubService"

.field private static volatile sCurrent:Ltop/niunaijun/blackbox/proxy/ProxyService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static requireCurrent()Ltop/niunaijun/blackbox/proxy/ProxyService;
    .registers 2

    .line 33
    sget-object v0, Ltop/niunaijun/blackbox/proxy/ProxyService;->sCurrent:Ltop/niunaijun/blackbox/proxy/ProxyService;

    if-eqz v0, :cond_5

    return-object v0

    .line 35
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Proxy service is not active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getSystemComponent()Landroid/content/ComponentName;
    .registers 3

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 55
    invoke-static {}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->get()Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 81
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    invoke-static {}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->get()Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .registers 1

    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 29
    sput-object p0, Ltop/niunaijun/blackbox/proxy/ProxyService;->sCurrent:Ltop/niunaijun/blackbox/proxy/ProxyService;

    return-void
.end method

.method public onDestroy()V
    .registers 4

    const/4 v0, 0x0

    .line 70
    :try_start_1
    invoke-static {}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->get()Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->onDestroy()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 72
    sget-object v1, Ltop/niunaijun/blackbox/proxy/ProxyService;->sCurrent:Ltop/niunaijun/blackbox/proxy/ProxyService;

    if-ne v1, p0, :cond_e

    .line 73
    sput-object v0, Ltop/niunaijun/blackbox/proxy/ProxyService;->sCurrent:Ltop/niunaijun/blackbox/proxy/ProxyService;

    .line 75
    :cond_e
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_12
    move-exception v1

    .line 72
    sget-object v2, Ltop/niunaijun/blackbox/proxy/ProxyService;->sCurrent:Ltop/niunaijun/blackbox/proxy/ProxyService;

    if-ne v2, p0, :cond_19

    .line 73
    sput-object v0, Ltop/niunaijun/blackbox/proxy/ProxyService;->sCurrent:Ltop/niunaijun/blackbox/proxy/ProxyService;

    .line 75
    :cond_19
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    throw v1
.end method

.method public onLowMemory()V
    .registers 1

    .line 87
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 88
    invoke-static {}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->get()Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->onLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    if-nez p1, :cond_7

    .line 61
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/proxy/ProxyService;->stopSelfResult(I)Z

    const/4 p0, 0x2

    return p0

    .line 64
    :cond_7
    invoke-static {}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->get()Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onTrimMemory(I)V
    .registers 2

    .line 93
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 94
    invoke-static {}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->get()Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->onTrimMemory(I)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    .line 99
    invoke-static {}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->get()Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->onUnbind(Landroid/content/Intent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method requireSystemToken()Landroid/os/IBinder;
    .registers 2

    .line 45
    invoke-static {p0}, Lblack/android/app/BRService;->getWithException(Ljava/lang/Object;)Lblack/android/app/ServiceContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ServiceContext;->mToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    .line 47
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Proxy service token is unavailable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class top.niunaijun.blackbox.proxy.ProxyService.P0 (top.niunaijun.blackbox.proxy.ProxyService$P0)
