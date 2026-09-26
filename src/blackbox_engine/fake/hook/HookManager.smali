.class public Ltop/niunaijun/blackbox/fake/hook/HookManager;
.super Ljava/lang/Object;
.source "HookManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HookManager"

.field private static final sHookManager:Ltop/niunaijun/blackbox/fake/hook/HookManager;


# instance fields
.field private final mInjectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ltop/niunaijun/blackbox/fake/hook/IInjectHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ltop/niunaijun/blackbox/fake/hook/HookManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->sHookManager:Ltop/niunaijun/blackbox/fake/hook/HookManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->mInjectors:Ljava/util/Map;

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/hook/HookManager;
    .registers 1

    .line 71
    sget-object v0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->sHookManager:Ltop/niunaijun/blackbox/fake/hook/HookManager;

    return-object v0
.end method


# virtual methods
.method addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V
    .registers 3

    .line 155
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->mInjectors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkAll()V
    .registers 4

    .line 146
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->mInjectors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;

    if-eqz v0, :cond_a

    .line 147
    invoke-interface {v0}, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;->isBadEnv()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkEnv: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is bad env"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HookManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-interface {v0}, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;->injectHook()V

    goto :goto_a

    :cond_44
    return-void
.end method

.method public checkEnv(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 138
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->mInjectors:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;

    if-eqz p0, :cond_31

    .line 139
    invoke-interface {p0}, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;->isBadEnv()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkEnv: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is bad env"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HookManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-interface {p0}, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;->injectHook()V

    :cond_31
    return-void
.end method

.method public init()V
    .registers 3

    .line 75
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isBlackProcess()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 76
    :cond_14
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IDisplayManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IDisplayManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 77
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 78
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 79
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 80
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 81
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/ISubProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/ISubProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 82
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 83
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 84
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/INotificationManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 85
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 86
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 87
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/context/ContentServiceStub;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/context/ContentServiceStub;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 88
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IWindowManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IWindowManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 89
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 90
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/context/RestrictionsManagerStub;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/context/RestrictionsManagerStub;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 91
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IMediaSessionManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IMediaSessionManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 92
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/ILocationManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/ILocationManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 93
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IStorageManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IStorageManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 94
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/ILauncherAppsProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/ILauncherAppsProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 95
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 96
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IAccessibilityManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IAccessibilityManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 97
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/ITelephonyRegistryProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/ITelephonyRegistryProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 98
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IDevicePolicyManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IDevicePolicyManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 99
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 100
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IConnectivityManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IConnectivityManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 101
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IPhoneSubInfoProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IPhoneSubInfoProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 102
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IMediaRouterServiceProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IMediaRouterServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 103
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IPowerManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IPowerManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 104
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IVibratorServiceProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IVibratorServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 105
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IPersistentDataBlockServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 106
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->get()Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 107
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IWifiManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IWifiManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 108
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isS()Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 109
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 110
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IVpnManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IVpnManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 112
    :cond_12a
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isR()Z

    move-result v0

    if-eqz v0, :cond_138

    .line 113
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IPermissionManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 115
    :cond_138
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isQ()Z

    move-result v0

    if-eqz v0, :cond_146

    .line 116
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IActivityTaskManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IActivityTaskManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 118
    :cond_146
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_164

    .line 119
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IAutofillManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IAutofillManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 120
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IDeviceIdentifiersPolicyProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IDeviceIdentifiersPolicyProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 121
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IStorageStatsManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IStorageStatsManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 123
    :cond_164
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_172

    .line 124
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IShortcutManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 126
    :cond_172
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isN()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 127
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/INetworkManagementServiceProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/INetworkManagementServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 129
    :cond_180
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 130
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IFingerprintManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IFingerprintManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 131
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IGraphicsStatsProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IGraphicsStatsProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 134
    :cond_196
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->injectAll()V

    return-void
.end method

.method injectAll()V
    .registers 6

    .line 159
    const-string v0, "HookManager"

    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->mInjectors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;

    .line 161
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hook: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {v1}, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;->injectHook()V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_31} :catch_34
    .catch Ljava/lang/LinkageError; {:try_start_18 .. :try_end_31} :catch_32

    goto :goto_c

    :catch_32
    move-exception v2

    goto :goto_35

    :catch_34
    move-exception v2

    .line 164
    :goto_35
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to install hook: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_48
    return-void
.end method
