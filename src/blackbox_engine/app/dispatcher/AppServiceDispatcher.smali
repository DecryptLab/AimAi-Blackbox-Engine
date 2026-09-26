.class public Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;
.super Ljava/lang/Object;
.source "AppServiceDispatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AppServiceDispatcher"

.field private static final sServiceDispatcher:Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ltop/niunaijun/blackbox/entity/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->sServiceDispatcher:Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    .line 43
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private findRecord(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord;
    .registers 2

    .line 214
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_8
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;

    return-object p0
.end method

.method private findRecord(Landroid/content/pm/ServiceInfo;)Ltop/niunaijun/blackbox/entity/ServiceRecord;
    .registers 3

    .line 219
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;

    return-object p0
.end method

.method public static get()Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;
    .registers 1

    .line 40
    sget-object v0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->sServiceDispatcher:Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;

    return-object v0
.end method

.method private getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .registers 3

    .line 223
    new-instance p0, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getOrCreateService(Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;)Landroid/app/Service;
    .registers 7

    .line 227
    iget-object v0, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 228
    iget-object v1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mToken:Landroid/os/IBinder;

    .line 230
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget p1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mUserId:I

    invoke-static {v2, v3, p1}, Ltop/niunaijun/blackbox/app/BActivityThread;->isCurrentProcess(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_34

    .line 234
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Rejecting stale proxy service: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppServiceDispatcher"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 239
    :cond_34
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p1

    .line 240
    iget-object v3, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/entity/ServiceRecord;

    if-eqz v3, :cond_4d

    .line 241
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 242
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object p0

    return-object p0

    .line 244
    :cond_4d
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ltop/niunaijun/blackbox/app/BActivityThread;->createService(Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;)Landroid/app/Service;

    move-result-object v0

    if-nez v0, :cond_58

    return-object v2

    .line 247
    :cond_58
    new-instance v1, Ltop/niunaijun/blackbox/entity/ServiceRecord;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;-><init>()V

    .line 248
    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->setService(Landroid/app/Service;)V

    .line 249
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic lambda$stopService$0(Ltop/niunaijun/blackbox/entity/ServiceRecord;)V
    .registers 1

    .line 203
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6

    .line 46
    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;

    move-result-object p1

    .line 47
    iget-object v0, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 48
    iget-object v1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    if-nez v1, :cond_e

    goto :goto_47

    .line 53
    :cond_e
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->getOrCreateService(Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;)Landroid/app/Service;

    move-result-object p1

    if-nez p1, :cond_15

    return-object v2

    .line 56
    :cond_15
    invoke-virtual {p1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 58
    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/pm/ServiceInfo;)Ltop/niunaijun/blackbox/entity/ServiceRecord;

    move-result-object p0

    .line 59
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->incrementAndGetBindCount(Landroid/content/Intent;)I

    .line 60
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->hasBinder(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 61
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->isRebind()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 62
    invoke-virtual {p1, v0}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->setRebind(Z)V

    .line 65
    :cond_36
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getBinder(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 69
    :cond_3b
    :try_start_3b
    invoke-virtual {p1, v0}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    .line 70
    invoke-virtual {p0, v0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->addBinder(Landroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_43

    return-object p1

    :catchall_43
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_47
    :goto_47
    return-object v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 113
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 114
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/entity/ServiceRecord;

    .line 116
    :try_start_1e
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_12

    :catchall_26
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    :cond_2b
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 100
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 101
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/entity/ServiceRecord;

    .line 103
    :try_start_1e
    invoke-virtual {v1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Service;->onDestroy()V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_12

    :catchall_26
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 109
    :cond_2b
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .line 125
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 126
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/entity/ServiceRecord;

    .line 128
    :try_start_1e
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->onLowMemory()V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_12

    :catchall_26
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    :cond_2b
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    .line 79
    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;

    move-result-object p1

    .line 80
    iget-object p3, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    const/4 v0, 0x2

    if-eqz p3, :cond_37

    iget-object p3, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p3, :cond_e

    goto :goto_37

    .line 85
    :cond_e
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->getOrCreateService(Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;)Landroid/app/Service;

    move-result-object p3

    if-nez p3, :cond_15

    return v0

    .line 88
    :cond_15
    iget-object v1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 89
    iget-object v1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/pm/ServiceInfo;)Ltop/niunaijun/blackbox/entity/ServiceRecord;

    move-result-object p0

    .line 90
    iget v1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mStartId:I

    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->setStartId(I)V

    .line 92
    :try_start_29
    iget-object p0, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    iget p1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mStartId:I

    invoke-virtual {p3, p0, p2, p1}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_32

    return p0

    :catchall_32
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0

    .line 81
    :cond_37
    :goto_37
    const-string p0, "AppServiceDispatcher"

    const-string p1, "Rejected service start with missing target record"

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onTrimMemory(I)V
    .registers 3

    .line 137
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 138
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/entity/ServiceRecord;

    .line 140
    :try_start_1e
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Service;->onTrimMemory(I)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_12

    :catchall_26
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    :cond_2b
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 10

    .line 149
    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;

    move-result-object v0

    .line 150
    iget-object v1, v0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v1, :cond_6d

    iget-object v1, v0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_e

    goto :goto_6d

    .line 153
    :cond_e
    iget-object v1, v0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 156
    :try_start_10
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v3

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->onServiceUnbind(Landroid/content/Intent;I)Ltop/niunaijun/blackbox/entity/UnbindRecord;

    move-result-object v3

    if-nez v3, :cond_1f

    return v2

    .line 160
    :cond_1f
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->getOrCreateService(Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;)Landroid/app/Service;

    move-result-object v4

    if-nez v4, :cond_26

    return v2

    .line 164
    :cond_26
    iget-object v5, v0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 166
    iget-object v5, v0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v5}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/pm/ServiceInfo;)Ltop/niunaijun/blackbox/entity/ServiceRecord;

    move-result-object v5

    .line 168
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/entity/UnbindRecord;->getStartId()I

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_3e

    move v3, v6

    goto :goto_3f

    :cond_3e
    move v3, v2

    :goto_3f
    if-nez v3, :cond_47

    .line 169
    invoke-virtual {v5, v1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->decreaseConnectionCount(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 170
    :cond_47
    invoke-virtual {v4, v1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    if-eqz v3, :cond_65

    .line 172
    invoke-virtual {v4}, Landroid/app/Service;->onDestroy()V

    .line 173
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v1

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v1, p1, v3}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->onServiceDestroy(Landroid/content/Intent;I)V

    .line 174
    iget-object p1, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    iget-object v0, v0, Ltop/niunaijun/blackbox/proxy/record/ProxyServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->getComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_65
    invoke-virtual {v5, v6}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->setRebind(Z)V
    :try_end_68
    .catchall {:try_start_10 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6d
    :goto_6d
    return v2
.end method

.method public peekService(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_8
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getBinder(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public stopService(Landroid/content/Intent;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_39

    .line 196
    :cond_3
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->findRecord(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_39

    .line 199
    :cond_a
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getService()Landroid/app/Service;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 200
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getStartId()I

    move-result v1

    if-lez v1, :cond_39

    .line 203
    :try_start_16
    iget-object v1, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher$$ExternalSyntheticLambda0;-><init>(Ltop/niunaijun/blackbox/entity/ServiceRecord;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->onServiceDestroy(Landroid/content/Intent;I)V

    .line 205
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/dispatcher/AppServiceDispatcher;->mService:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_39
    :goto_39
    return-void
.end method

###### Class top.niunaijun.blackbox.app.dispatcher.AppServiceDispatcher$$ExternalSyntheticLambda0 (top.niunaijun.blackbox.app.dispatcher.AppServiceDispatcher$$ExternalSyntheticLambda0)
