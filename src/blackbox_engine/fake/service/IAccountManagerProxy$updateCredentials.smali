.class public Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$updateCredentials;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "updateCredentials"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "updateCredentials"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 287
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 291
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BAccountManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BAccountManager;

    move-result-object v0

    const/4 p0, 0x0

    aget-object p1, p3, p0

    move-object v1, p1

    check-cast v1, Landroid/accounts/IAccountManagerResponse;

    const/4 p1, 0x1

    aget-object p1, p3, p1

    move-object v2, p1

    check-cast v2, Landroid/accounts/Account;

    const/4 p1, 0x2

    aget-object p1, p3, p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const/4 p1, 0x3

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    .line 294
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 p1, 0x4

    aget-object p1, p3, p1

    move-object v5, p1

    check-cast v5, Landroid/os/Bundle;

    .line 291
    invoke-virtual/range {v0 .. v5}, Ltop/niunaijun/blackbox/fake/frameworks/BAccountManager;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 296
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
