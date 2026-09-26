.class public final Ltop/niunaijun/blackbox/proxy/FacebookRedirectActivity;
.super Landroid/app/Activity;
.source "FacebookRedirectActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private route(Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_2b

    .line 20
    const-string v0, "android.intent.action.VIEW"

    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "android.intent.category.BROWSABLE"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2b

    .line 25
    :cond_17
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 26
    new-instance v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->routeToVirtual(Landroid/net/Uri;)Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    move-result-object p0

    sget-object v1, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->UNKNOWN:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    if-ne p0, v1, :cond_2b

    .line 29
    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;->routeToPhysical(Landroid/net/Uri;)V

    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    :try_start_3
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectActivity;->route(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 15
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectActivity;->finish()V

    return-void

    :catchall_e
    move-exception p1

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectActivity;->finish()V

    .line 16
    throw p1
.end method
