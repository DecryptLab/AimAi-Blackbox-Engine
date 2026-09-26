.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetContentProvider;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetContentProvider"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getContentProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private getAuthIndex()I
    .registers 1

    .line 202
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isQ()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private getUserIndex()I
    .registers 1

    .line 210
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetContentProvider;->getAuthIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetContentProvider;->getAuthIndex()I

    move-result v0

    .line 124
    aget-object v1, p3, v0

    .line 127
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_120

    .line 128
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->isProxy(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 129
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 132
    :cond_18
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isQ()Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    .line 133
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v3

    .line 136
    :cond_25
    invoke-static {}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getAccessProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 137
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 140
    :cond_34
    invoke-static {v2}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isExternalAuthProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 141
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 142
    invoke-static {p0, v2}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->update(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 146
    :cond_42
    const-string v3, "settings"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_118

    const-string v3, "media"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_118

    const-string v3, "telephony"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto/16 :goto_118

    .line 151
    :cond_5c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hook getContentProvider: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManagerStub"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v3

    const/16 v5, 0x80

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_82

    return-object v3

    .line 170
    :cond_82
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hook app: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPid()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_d4

    .line 173
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v1

    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->initProcess(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v1

    .line 174
    iget v4, v1, Ltop/niunaijun/blackbox/entity/AppConfig;->bpid:I

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPid()I

    move-result v5

    if-eq v4, v5, :cond_bc

    .line 175
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object v4

    goto :goto_bd

    :cond_bc
    move-object v4, v3

    .line 177
    :goto_bd
    iget v1, v1, Ltop/niunaijun/blackbox/entity/AppConfig;->bpid:I

    invoke-static {v1}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyAuthorities(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 178
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetContentProvider;->getUserIndex()I

    move-result p0

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p0

    goto :goto_d5

    :cond_d4
    move-object v4, v3

    :goto_d5
    if-nez v4, :cond_d8

    return-object v3

    .line 183
    :cond_d8
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 184
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/Reflector;->with(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object p1

    const-string p2, "info"

    .line 185
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/utils/Reflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object p1

    .line 186
    invoke-virtual {p1, v2}, Ltop/niunaijun/blackbox/utils/Reflector;->set(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;

    .line 187
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/Reflector;->with(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object p1

    const-string p2, "provider"

    .line 188
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/utils/Reflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object p1

    new-instance p2, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;

    invoke-direct {p2}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;-><init>()V

    .line 190
    invoke-static {}, Lblack/android/content/BRContentProviderNative;->get()Lblack/android/content/ContentProviderNativeStatic;

    move-result-object p3

    invoke-interface {p3, v4}, Lblack/android/content/ContentProviderNativeStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p3

    .line 191
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v2

    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result v1

    .line 189
    invoke-virtual {p2, p3, v0, v1}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;I)Landroid/os/IInterface;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/utils/Reflector;->set(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;

    return-object p0

    .line 147
    :cond_118
    :goto_118
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 148
    invoke-static {p0, v2}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->update(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 197
    :cond_120
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.GetCurrentUserId (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$GetCurrentUserId)
