.class public Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;
.super Ljava/lang/Object;
.source "AppLifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static EMPTY:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;->EMPTY:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V
    .registers 5

    return-void
.end method

.method public beforeApplicationOnCreate(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V
    .registers 5

    return-void
.end method

.method public beforeCreateApplication(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V
    .registers 5

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

###### Class top.niunaijun.blackbox.app.configuration.AppLifecycleCallback.AnonymousClass1 (top.niunaijun.blackbox.app.configuration.AppLifecycleCallback$1)
