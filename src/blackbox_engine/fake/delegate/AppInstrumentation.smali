.class public final Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;
.super Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;
.source "AppInstrumentation.java"

# interfaces
.implements Ltop/niunaijun/blackbox/fake/hook/IInjectHook;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "AppInstrumentation"

.field private static sAppInstrumentation:Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;-><init>()V

    return-void
.end method

.method private checkActivity(Landroid/app/Activity;)V
    .registers 5

    .line 104
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callActivityOnCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->checkHCallback()V

    .line 106
    invoke-static {}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->get()Ltop/niunaijun/blackbox/fake/hook/HookManager;

    move-result-object p0

    const-class v0, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V

    .line 107
    invoke-static {p1}, Lblack/android/app/BRActivity;->get(Ljava/lang/Object;)Lblack/android/app/ActivityContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityContext;->mActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 108
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 109
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/compat/ActivityCompat;->fix(Landroid/app/Activity;)V

    .line 110
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_44

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 113
    :cond_44
    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/compat/ActivityManagerCompat;->setActivityOrientation(Landroid/app/Activity;I)V

    return-void
.end method

.method private checkHCallback()V
    .registers 2

    .line 100
    invoke-static {}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->get()Ltop/niunaijun/blackbox/fake/hook/HookManager;

    move-result-object p0

    const-class v0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V

    return-void
.end method

.method private checkInstrumentation(Landroid/app/Instrumentation;)Z
    .registers 10

    .line 71
    instance-of p0, p1, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    return v0

    .line 74
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 75
    const-class v1, Landroid/app/Instrumentation;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    return v2

    .line 80
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 81
    array-length v3, v1

    move v4, v2

    :goto_1a
    if-ge v4, v3, :cond_3a

    aget-object v5, v1, v4

    .line 82
    const-class v6, Landroid/app/Instrumentation;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 83
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    :try_start_2d
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 86
    instance-of v5, v5, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_36

    if-eqz v5, :cond_37

    return v0

    :catch_36
    return v2

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 94
    :cond_3a
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 95
    const-class v1, Landroid/app/Instrumentation;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v2
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;
    .registers 2

    .line 34
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->sAppInstrumentation:Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    if-nez v0, :cond_17

    .line 35
    const-class v0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    monitor-enter v0

    .line 36
    :try_start_7
    sget-object v1, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->sAppInstrumentation:Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    if-nez v1, :cond_12

    .line 37
    new-instance v1, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;-><init>()V

    sput-object v1, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->sAppInstrumentation:Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    .line 39
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 41
    :cond_17
    :goto_17
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->sAppInstrumentation:Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    return-object v0
.end method

.method private getCurrInstrumentation()Landroid/app/Instrumentation;
    .registers 1

    .line 61
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityThreadContext;->mInstrumentation()Landroid/app/Instrumentation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 131
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->checkActivity(Landroid/app/Activity;)V

    .line 132
    invoke-super {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 133
    invoke-static {p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->install(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4

    .line 124
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->checkActivity(Landroid/app/Activity;)V

    .line 125
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 126
    invoke-static {p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->install(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 2

    .line 150
    invoke-static {p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->deactivate(Landroid/app/Activity;)V

    .line 151
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->callActivityOnDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .registers 2

    .line 144
    invoke-static {p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->deactivate(Landroid/app/Activity;)V

    .line 145
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->callActivityOnPause(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 2

    .line 138
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->callActivityOnResume(Landroid/app/Activity;)V

    .line 139
    invoke-static {p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->install(Landroid/app/Activity;)V

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .registers 2

    .line 156
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->checkHCallback()V

    .line 157
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->callApplicationOnCreate(Landroid/app/Application;)V

    return-void
.end method

.method public injectHook()V
    .registers 3

    .line 50
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->getCurrInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    .line 51
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->checkInstrumentation(Landroid/app/Instrumentation;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1a

    .line 53
    :cond_d
    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->mBaseInstrumentation:Landroid/app/Instrumentation;

    .line 54
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lblack/android/app/ActivityThreadContext;->_set_mInstrumentation(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public isBadEnv()Z
    .registers 2

    .line 67
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->getCurrInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->checkInstrumentation(Landroid/app/Instrumentation;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 162
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 164
    :catch_5
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->mBaseInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 118
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 119
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method
