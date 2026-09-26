.class public Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IAppWidgetManagerProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "appwidget"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 29
    invoke-static {}, Lblack/com/android/internal/appwidget/BRIAppWidgetServiceStub;->get()Lblack/com/android/internal/appwidget/IAppWidgetServiceStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "appwidget"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/com/android/internal/appwidget/IAppWidgetServiceStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 34
    const-string p1, "appwidget"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceAllAppPkg([Ljava/lang/Object;)V

    .line 45
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 7

    .line 50
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 51
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x0

    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 51
    new-array v4, v1, [I

    const-string v5, "startListening"

    invoke-direct {v0, v5, v4}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 52
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "stopListening"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 53
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "allocateAppWidgetId"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 54
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "deleteAppWidgetId"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 55
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "deleteHost"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 56
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "deleteAllHosts"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 57
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "getAppWidgetViews"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 58
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "getAppWidgetIdsForHost"

    invoke-direct {v0, v4, v5}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 59
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "createAppWidgetConfigIntentSender"

    invoke-direct {v0, v4, v5}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 60
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "updateAppWidgetIds"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 61
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "updateAppWidgetOptions"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 62
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "getAppWidgetOptions"

    invoke-direct {v0, v4, v5}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 63
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "partiallyUpdateAppWidgetIds"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 64
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "updateAppWidgetProvider"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 65
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "notifyAppWidgetViewDataChanged"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 66
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "getInstalledProvidersForProfile"

    invoke-direct {v0, v4, v5}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 67
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "getAppWidgetInfo"

    invoke-direct {v0, v4, v5}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 68
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "hasBindAppWidgetPermission"

    invoke-direct {v0, v4, v2}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 69
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "setBindAppWidgetPermission"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 70
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "bindAppWidgetId"

    invoke-direct {v0, v4, v2}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 71
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "bindRemoteViewsService"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 72
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v4, "unbindRemoteViewsService"

    invoke-direct {v0, v4, v3}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 73
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v3, "getAppWidgetIds"

    new-array v1, v1, [I

    invoke-direct {v0, v3, v1}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 74
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v1, "isBoundWidgetPackage"

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IAppWidgetManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    return-void
.end method
