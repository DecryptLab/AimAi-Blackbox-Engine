.class public Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAuthToken;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getAuthToken"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getAuthToken"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 242
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 246
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

    .line 249
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 p1, 0x4

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    .line 250
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 p1, 0x5

    aget-object p1, p3, p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    .line 246
    invoke-virtual/range {v0 .. v6}, Ltop/niunaijun/blackbox/fake/frameworks/BAccountManager;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 252
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IAccountManagerProxy.getAuthTokenLabel (top.niunaijun.blackbox.fake.service.IAccountManagerProxy$getAuthTokenLabel)
