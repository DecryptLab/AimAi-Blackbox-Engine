.class public Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;
.super Ljava/lang/Object;
.source "HCallbackProxy.java"

# interfaces
.implements Ltop/niunaijun/blackbox/fake/hook/IInjectHook;
.implements Landroid/os/Handler$Callback;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "HCallbackStub"


# instance fields
.field private final mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOtherCallback:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private checkActivityClient()V
    .registers 2

    .line 232
    :try_start_0
    invoke-static {}, Lblack/android/app/BRActivityClient;->get()Lblack/android/app/ActivityClientStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityClientStatic;->getActivityClientController()Ljava/lang/Object;

    move-result-object p0

    .line 233
    instance-of v0, p0, Ljava/lang/reflect/Proxy;

    if-nez v0, :cond_33

    .line 234
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 235
    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->onlyProxy(Z)V

    .line 236
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->injectHook()V

    .line 237
    invoke-static {}, Lblack/android/app/BRActivityClient;->get()Lblack/android/app/ActivityClientStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityClientStatic;->getInstance()Ljava/lang/Object;

    move-result-object p0

    .line 238
    invoke-static {p0}, Lblack/android/app/BRActivityClient;->get(Ljava/lang/Object;)Lblack/android/app/ActivityClientContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityClientContext;->INTERFACE_SINGLETON()Ljava/lang/Object;

    move-result-object p0

    .line 239
    invoke-static {p0}, Lblack/android/app/BRActivityClientActivityClientControllerSingleton;->get(Ljava/lang/Object;)Lblack/android/app/ActivityClientActivityClientControllerSingletonContext;

    move-result-object p0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/app/ActivityClientActivityClientControllerSingletonContext;->_set_mKnownInstance(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    :cond_33
    return-void

    :catchall_34
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private getH()Landroid/os/Handler;
    .registers 1

    .line 57
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityThreadContext;->mH()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private getHCallback()Landroid/os/Handler$Callback;
    .registers 1

    .line 53
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Lblack/android/os/BRHandler;->get(Ljava/lang/Object;)Lblack/android/os/HandlerContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/os/HandlerContext;->mCallback()Landroid/os/Handler$Callback;

    move-result-object p0

    return-object p0
.end method

.method private getLaunchActivityItem(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 110
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isVanillaIceCream()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 111
    invoke-static {p1}, Lblack/android/app/servertransaction/BRClientTransaction;->get(Ljava/lang/Object;)Lblack/android/app/servertransaction/ClientTransactionContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/servertransaction/ClientTransactionContext;->getTransactionItems()Ljava/util/List;

    move-result-object p0

    goto :goto_17

    .line 112
    :cond_f
    invoke-static {p1}, Lblack/android/app/servertransaction/BRClientTransaction;->get(Ljava/lang/Object;)Lblack/android/app/servertransaction/ClientTransactionContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/servertransaction/ClientTransactionContext;->mActivityCallbacks()Ljava/util/List;

    move-result-object p0

    :goto_17
    const/4 p1, 0x0

    if-nez p0, :cond_1b

    return-object p1

    .line 117
    :cond_1b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 118
    invoke-static {}, Lblack/android/app/servertransaction/BRLaunchActivityItem;->getRealClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return-object v0

    :cond_40
    return-object p1
.end method

.method private handleCreateService(Ljava/lang/Object;)Z
    .registers 6

    .line 213
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_64

    .line 214
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    .line 217
    invoke-static {p1}, Lblack/android/app/BRActivityThreadCreateServiceData;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadCreateServiceDataContext;

    move-result-object v1

    invoke-interface {v1}, Lblack/android/app/ActivityThreadCreateServiceDataContext;->info()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 218
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPid()I

    move-result v3

    invoke-static {v3}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyService(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 219
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPid()I

    move-result v3

    invoke-static {v3}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyJobService(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleCreateService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "HCallbackStub"

    invoke-static {v2, p1}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 222
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->startService(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    const/4 p0, 0x1

    return p0

    :cond_64
    return v0
.end method

.method private handleLaunchActivity(Ljava/lang/Object;)Z
    .registers 10

    .line 127
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 129
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getLaunchActivityItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p1

    :goto_c
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 139
    :cond_10
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 140
    invoke-static {v0}, Lblack/android/app/servertransaction/BRLaunchActivityItem;->get(Ljava/lang/Object;)Lblack/android/app/servertransaction/LaunchActivityItemContext;

    move-result-object v2

    invoke-interface {v2}, Lblack/android/app/servertransaction/LaunchActivityItemContext;->mIntent()Landroid/content/Intent;

    move-result-object v2

    .line 141
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isVanillaIceCream()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 142
    invoke-static {v0}, Lblack/android/app/servertransaction/BRLaunchActivityItem;->get(Ljava/lang/Object;)Lblack/android/app/servertransaction/LaunchActivityItemContext;

    move-result-object p1

    invoke-interface {p1}, Lblack/android/app/servertransaction/LaunchActivityItemContext;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_42

    .line 143
    :cond_2d
    invoke-static {p1}, Lblack/android/app/servertransaction/BRClientTransaction;->get(Ljava/lang/Object;)Lblack/android/app/servertransaction/ClientTransactionContext;

    move-result-object p1

    invoke-interface {p1}, Lblack/android/app/servertransaction/ClientTransactionContext;->mActivityToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_42

    .line 145
    :cond_36
    invoke-static {v0}, Lblack/android/app/BRActivityThreadActivityClientRecord;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadActivityClientRecordContext;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Lblack/android/app/ActivityThreadActivityClientRecordContext;->intent()Landroid/content/Intent;

    move-result-object v2

    .line 147
    invoke-interface {p1}, Lblack/android/app/ActivityThreadActivityClientRecordContext;->token()Landroid/os/IBinder;

    move-result-object p1

    :goto_42
    if-nez v2, :cond_45

    return v1

    .line 153
    :cond_45
    invoke-static {v2}, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;

    move-result-object v3

    .line 154
    iget-object v4, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_135

    .line 156
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_9d

    .line 157
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p1

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget v7, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mUserId:I

    invoke-virtual {p1, v1, v5, v7}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->restartProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p1

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v5, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mUserId:I

    invoke-virtual {p1, v1, v5}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 161
    iget-object p0, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    iget v3, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mUserId:I

    invoke-static {v2, p1, p0, v1, v3}, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)V

    .line 162
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result p0

    if-eqz p0, :cond_92

    .line 163
    invoke-static {v0}, Lblack/android/app/servertransaction/BRLaunchActivityItem;->get(Ljava/lang/Object;)Lblack/android/app/servertransaction/LaunchActivityItemContext;

    move-result-object p0

    .line 164
    invoke-interface {p0, v2}, Lblack/android/app/servertransaction/LaunchActivityItemContext;->_set_mIntent(Ljava/lang/Object;)V

    .line 165
    invoke-interface {p0, v4}, Lblack/android/app/servertransaction/LaunchActivityItemContext;->_set_mInfo(Ljava/lang/Object;)V

    goto :goto_9c

    .line 167
    :cond_92
    invoke-static {v0}, Lblack/android/app/BRActivityThreadActivityClientRecord;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadActivityClientRecordContext;

    move-result-object p0

    .line 168
    invoke-interface {p0, v2}, Lblack/android/app/ActivityThreadActivityClientRecordContext;->_set_intent(Ljava/lang/Object;)V

    .line 169
    invoke-interface {p0, v4}, Lblack/android/app/ActivityThreadActivityClientRecordContext;->_set_activityInfo(Ljava/lang/Object;)V

    :goto_9c
    return v6

    .line 174
    :cond_9d
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Ltop/niunaijun/blackbox/app/BActivityThread;->isInit()Z

    move-result v2

    if-nez v2, :cond_b3

    .line 175
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object p0

    iget-object p1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ltop/niunaijun/blackbox/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 180
    :cond_b3
    invoke-static {}, Lblack/android/app/BRActivityManagerNative;->get()Lblack/android/app/ActivityManagerNativeStatic;

    move-result-object v2

    invoke-interface {v2}, Lblack/android/app/ActivityManagerNativeStatic;->getDefault()Landroid/os/IInterface;

    move-result-object v2

    invoke-static {v2}, Lblack/android/app/BRIActivityManager;->get(Ljava/lang/Object;)Lblack/android/app/IActivityManagerContext;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lblack/android/app/IActivityManagerContext;->getTaskForActivity(Landroid/os/IBinder;Z)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 181
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v5

    iget-object v6, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    invoke-virtual {v5, v2, p1, v6}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V

    .line 183
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isTiramisu()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 184
    invoke-static {v0}, Lblack/android/app/servertransaction/BRLaunchActivityItem;->get(Ljava/lang/Object;)Lblack/android/app/servertransaction/LaunchActivityItemContext;

    move-result-object p1

    .line 185
    iget-object v0, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-interface {p1, v0}, Lblack/android/app/servertransaction/LaunchActivityItemContext;->_set_mIntent(Ljava/lang/Object;)V

    .line 186
    invoke-interface {p1, v4}, Lblack/android/app/servertransaction/LaunchActivityItemContext;->_set_mInfo(Ljava/lang/Object;)V

    .line 187
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->checkActivityClient()V

    goto :goto_135

    .line 188
    :cond_e6
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isS()Z

    move-result v2

    if-eqz v2, :cond_116

    .line 189
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lblack/android/app/ActivityThreadContext;->getLaunchingActivity(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_fb

    return v1

    .line 193
    :cond_fb
    invoke-static {p1}, Lblack/android/app/BRActivityThreadActivityClientRecord;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadActivityClientRecordContext;

    move-result-object p1

    .line 194
    iget-object v0, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-interface {p1, v0}, Lblack/android/app/ActivityThreadActivityClientRecordContext;->_set_intent(Ljava/lang/Object;)V

    .line 195
    invoke-interface {p1, v4}, Lblack/android/app/ActivityThreadActivityClientRecordContext;->_set_activityInfo(Ljava/lang/Object;)V

    .line 196
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/app/BActivityThread;->getPackageInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lblack/android/app/ActivityThreadActivityClientRecordContext;->_set_packageInfo(Ljava/lang/Object;)V

    .line 198
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->checkActivityClient()V

    goto :goto_135

    .line 199
    :cond_116
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result p0

    if-eqz p0, :cond_129

    .line 200
    invoke-static {v0}, Lblack/android/app/servertransaction/BRLaunchActivityItem;->get(Ljava/lang/Object;)Lblack/android/app/servertransaction/LaunchActivityItemContext;

    move-result-object p0

    .line 201
    iget-object p1, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-interface {p0, p1}, Lblack/android/app/servertransaction/LaunchActivityItemContext;->_set_mIntent(Ljava/lang/Object;)V

    .line 202
    invoke-interface {p0, v4}, Lblack/android/app/servertransaction/LaunchActivityItemContext;->_set_mInfo(Ljava/lang/Object;)V

    goto :goto_135

    .line 204
    :cond_129
    invoke-static {v0}, Lblack/android/app/BRActivityThreadActivityClientRecord;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadActivityClientRecordContext;

    move-result-object p0

    .line 205
    iget-object p1, v3, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-interface {p0, p1}, Lblack/android/app/ActivityThreadActivityClientRecordContext;->_set_intent(Ljava/lang/Object;)V

    .line 206
    invoke-interface {p0, v4}, Lblack/android/app/ActivityThreadActivityClientRecordContext;->_set_activityInfo(Ljava/lang/Object;)V

    :cond_135
    :goto_135
    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 78
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_8f

    .line 80
    :try_start_a
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lblack/android/app/BRActivityThreadH;->get()Lblack/android/app/ActivityThreadHStatic;

    move-result-object v3

    invoke-interface {v3}, Lblack/android/app/ActivityThreadHStatic;->EXECUTE_TRANSACTION()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_5d

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->handleLaunchActivity(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 83
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_88

    .line 103
    :goto_33
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    .line 88
    :cond_39
    :try_start_39
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lblack/android/app/BRActivityThreadH;->get()Lblack/android/app/ActivityThreadHStatic;

    move-result-object v3

    invoke-interface {v3}, Lblack/android/app/ActivityThreadHStatic;->LAUNCH_ACTIVITY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_5d

    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->handleLaunchActivity(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 90
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_33

    .line 95
    :cond_5d
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lblack/android/app/BRActivityThreadH;->get()Lblack/android/app/ActivityThreadHStatic;

    move-result-object v1

    invoke-interface {v1}, Lblack/android/app/ActivityThreadHStatic;->CREATE_SERVICE()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_79

    .line 96
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->handleCreateService(Ljava/lang/Object;)Z

    move-result p1
    :try_end_73
    .catchall {:try_start_39 .. :try_end_73} :catchall_88

    .line 103
    :goto_73
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return p1

    .line 98
    :cond_79
    :try_start_79
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mOtherCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_82

    .line 99
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_88

    goto :goto_73

    .line 103
    :cond_82
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    :catchall_88
    move-exception p1

    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    throw p1

    :cond_8f
    return v2
.end method

.method public injectHook()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getHCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mOtherCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_23

    if-eq v0, p0, :cond_20

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_20
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mOtherCallback:Landroid/os/Handler$Callback;

    .line 67
    :cond_23
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lblack/android/os/BRHandler;->get(Ljava/lang/Object;)Lblack/android/os/HandlerContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lblack/android/os/HandlerContext;->_set_mCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    .line 72
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getHCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
